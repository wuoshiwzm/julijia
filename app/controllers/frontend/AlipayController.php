<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/3 0003
 * Time: 17:32
 */
class AlipayController extends \BaseController
{

    /**
     * 支付宝返回同步通知信息
     */
    public function pay_return()
    {
        $gateway = Omnipay::create('Alipay_Express');
        $gateway->setPartner(Config::get('pay.id'));
        $gateway->setKey(Config::get('pay.key'));
        $gateway->setSellerEmail(Config::get('pay.email'));
        $options['request_params'] = Input::all();
        $options['ca_cert_path'] = storage_path() . '/cert/cacert.pem';
        $options['sign_type'] = 'MD5';
        $request = $gateway->completePurchase($options)->send();
        if ( $request->isSuccessful() )
        {

            $trade_status = Input::get('trade_status');
            if ( $trade_status == 'TRADE_SUCCESS' )
            {
                return Redirect::to('brokerAccount')->with('message','充值成功');

            }else
            {

                return Redirect::to('brokerAccount')->with('message','充值失败');
            }

        }else
        {
            return Redirect::to('brokerAccount')->with('message','充值失败');
        }

    }


    /**
     * 支付宝返回异步通知信息
     */
    public function pay_notify()
    {

        $gateway = Omnipay::create('Alipay_Express');
        $gateway->setPartner(Config::get('pay.id'));
        $gateway->setKey(Config::get('pay.key'));
        $gateway->setSellerEmail(Config::get('pay.email'));
        $options['request_params'] = Input::all();
        $options['ca_cert_path'] = storage_path() . '/cert/cacert.pem';
        $options['sign_type'] = 'MD5';
        $request = $gateway->completePurchase($options)->send();
        if ( $request->isSuccessful() )
        {
            $trade_status = Input::get('trade_status');
            if (  $trade_status == 'TRADE_SUCCESS' )
            {
                //修改订单状态
                $result = DB::transaction(function()
                {
                    $data = Input::all(); //订单号
                    //订单主表
                    $orderInfo = Source_Order_OrderInfo::where('order_sn',$data['out_trade_no'])->first();
                    $orderInfo->payment_id = $data['trade_no'];
                    $orderInfo->pay_status = 3;
                    $orderInfo->status = 4;
                    $orderInfo->save();
                    //写支付宝记录
                    $orderPay = Source_Order_OrderPayment();
                    $orderPay->order_id = $orderInfo->id;
                    $orderPay->payment_account = $data['buyer_email'];
                    $orderPay->payment_method = 1;
                    $orderPay->payment_time = $data['gmt_paymen'];
                    $orderPay->cc_id = $data['buyer_id'];
                    $orderPay->cc_total_fee = $data['total_fee'];
                    $orderPay->cc_trade_no = $data['trade_no'];
                    $orderPay->cc_status = $data['trade_status'];
                    $orderPay->cc_time = $data['gmt_close'];
                    $orderPay->save();
                    //支付宝信息
                    $orderPayLog = new Source_Order_OrderPaymentLog();
                    $orderPayLog->order_id = $orderInfo->id;
                    $orderPayLog->payment_recive = json_decode($data);
                    $orderPayLog->save();

                    $user = Session::get('member');
                    //删除购物车
                    $pid = Source_Order_OrderItem::where('order_id',$orderInfo->id)->lists('product_id');
                    if( $pid )
                    {
                        Source_Cart_CartItem::where('user_id',$user->id)->whereIn('product_id',$pid)->delete();
                    }

                    //写订单操作表
                    $orderAction = new Source_Order_OrderAction();
                    $orderAction->order_id = $orderInfo->id;
                    $orderAction->order_status = 4;
                    $orderAction->shipping_status = 0;
                    $orderAction->pay_status = 2;
                    $orderAction->option_id = $user->id;
                    $orderAction->option_name = $user->name;
                    $orderAction->remark = '订单支付完成'.$data['out_trade_no'];
                    $orderAction->save();

                });
                if ( is_null($result) )
                {
                    die('success');
                }else
                {
                    die('fail');
                }

            }
        }else
        {

            die('fail');
        }
    }
}