<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/30 0030
 * Time: 17:05
 */
class AuctionBuy
{


    /**
     * -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     *
     *
     *    立即购买
     *
     *  -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     */

    /**
     * @param $data
     * @return string
     * 立即购买post转换get规格转换
     */
    static function purchase( $data )
    {
        $arr = array();
        if( isset($data['guige']) )
        {
            foreach ( $data['guige'] as $row )
            {
                if( $row )
                {
                    $str = explode('|',$row);
                    $arr[$str[0]] = isset($str[1]) ? $str[1] : '';
                }
            }
        }
        $guige = count($arr)?json_encode( $arr ):'';
        return $guige ? encode($guige) :'';
    }
    /**
     * @param $data
     * @return array
     * 生成立即购买数据
     */
    static function buyNow( $data )
    {

        $arr = array();
        //产品数据
        $pid = decode( $data['pid'] );
        $g = $data['g'] ? decode( $data['g'] ) : '';
        $res = Source_Product_ProductFlat::where(['entity_id'=>$pid,'status'=>1])->first();
        $obj = new stdClass();
        $obj->product_id = $res->entity_id;
        $obj->product_name = $res->name;
        $obj->guige = $g;
        $obj->num = decode( $data['num'] );
        $obj->price = decode( $data['j'] );
        //暂未确定的优惠信息
        $obj->discount = '';
        $obj->small_image = $res->small_image;
        $obj->shop_id = $res->shop;
        $obj->weight = $res->weight;
        $obj->sku = $res->sku;
        $result = $obj;

        //合计数据
        $sum = new stdClass();
        $sum->cost_item = $obj->price*$obj->num;
        $sum->itemnum = $obj->num;
        //暂未确定的优惠信息
        $sum->cost_freight = 0;
        //暂未确定的运费
        $sum->shipping_amount = 0;
        $sum->total_amount = $sum->cost_item + $sum->shipping_amount;
        $sum->pay_amount = $sum->cost_item + $sum->shipping_amount - $sum->cost_freight;
        $sum->subject = $res->name;
        $totaled = $sum;
        $arr['goods'] = $result;
        $arr['totaled '] = $totaled;
        return $arr;
    }


    /**
     * @param $data
     * @return bool
     * 提交下单购买
     */
    static function orderSave( $goodsData,$data, $order_sn  )
    {
        $result = DB::transaction(function() use ( $goodsData, $data, $order_sn ) {

            $goods = $goodsData['goods'];
            //合计信息
            $totaled = $goodsData['totaled '];
            $address =  $data['address'];
            //地址
            $adr = Source_User_UserInfoAdd::where('id',$address)->first();
            //订单主表
            $orderInfo = new Source_Order_OrderInfo();
            $orderInfo->order_sn = $order_sn;
            $orderInfo->user_id = $adr->user_id;
            $orderInfo->source = 1;
            $orderInfo->status = 1;
            $orderInfo->pay_status = 1;
            $orderInfo->payment = $data['payment'];
            $orderInfo->itemnum = $totaled->itemnum;
            $orderInfo->ship_name = $adr->name;
            $orderInfo->ship_addr = $adr->province.$adr->city.$adr->district.$adr->address;
            $orderInfo->ship_post = $adr->zipcode;
            $orderInfo->ship_phone = $adr->phone;
            $orderInfo->cost_item = $totaled->cost_item;
            $orderInfo->cost_freight = $totaled->cost_freight;
            $orderInfo->shipping_amount = $totaled->shipping_amount;
            $orderInfo->total_amount = $totaled->total_amount;
            $orderInfo->pay_amount = $totaled->pay_amount;
            $orderInfo->save();
            //订单附表
            $orderItem = new Source_Order_OrderItem();
            $orderItem->order_id = $orderInfo->id;
            $orderItem->shop_id = $goods->shop_id;
            $orderItem->product_id = $goods->product_id;
            $orderItem->product_name = $goods->product_name;
            $orderItem->product_status = 1;
            $orderItem->sku = $goods->sku;
            $orderItem->price = $goods->price;
            $orderItem->weight = $goods->weight;
            $orderItem->row_total = $goods->num*$goods->price;
            $orderItem->row_weigth = $goods->num*$goods->weight;
            $orderItem->num = $goods->num;
            $orderItem->guige = $goods->guige;
            $orderItem->shipping_status = 1;
            $orderItem->save();
            //订单动作表
            $orderAction = new Source_Order_OrderAction();
            $orderAction->order_id = $orderInfo->id;
            $orderAction->order_status = 1;
            $orderAction->shipping_status = 0;
            $orderAction->pay_status = 0;
            $orderAction->option_id = Session::get('member')->id;
            $orderAction->option_name = Session::get('member')->name;
            $orderAction->remark = '立即购买提交订单'.$order_sn;
            $orderAction->save();
        });
        if ( is_null($result) )
        {
            return true;
        }else
        {
            return false;
        }
    }


    /**
     * @param $data
     * @return bool
     * 验证订单数据
     */
    static function validatorOrder( $data )
    {
        $rules =  [];
        $message = [];
        $validator = Validator::make( $data, $rules, $message );
        if( $validator->passes() )
        {
            return true;

        }else
        {
            return $validator;
        }
    }



    /**
     * -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     *
     *   订单客户数据
     *
     * -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     */
    /**
     * @param $data
     * @param $user
     * @return bool
     * 添加地址
     */
    static  function  addAddress( $data, $user )
    {
        $data['user_id'] = $user->id;
        $data['tel'] = is_array($data['tel'])? implode( '-', $data['tel'] ) : $data['tel'] ;
        $data['district'] = isset($data['area'])?$data['area']:'';
        $data = array_except($data, ['_token','area']);
        $status = isset($data['status'])? true: false;
        if ( $status )
        {
            Source_User_UserInfoAdd::where('user_id',$user->id)->update(['status'=>0]);
        }else
        {
            $addCount = Source_User_UserInfoAdd::where('user_id',$user->id)->count();
            if( $addCount == false )
            {
                $data['status'] = 1;
            }
        }
        $res = Source_User_UserInfoAdd::firstOrCreate( $data );
        return $res? true : false;
    }


    /**
     * @param $data
     * @param $user
     * @return bool
     * 修改地址
     */
    static function editAddress( $data, $user )
    {
        $data['tel'] = is_array($data['tel'])? implode( '-', $data['tel'] ) : $data['tel'] ;
        $data['district'] = isset($data['area'])?$data['area']:'';
        $id = decode($data['aid']);
        $data = array_except($data, ['_token','area','aid']);
        $status = isset($data['status'])? true: false;
        if ( $status ){ Source_User_UserInfoAdd::where('user_id',$user->id)->update(['status'=>0]); }
        $res = Source_User_UserInfoAdd::where('id',$id)->update( $data );
        return $res? true : false;
    }


    /**
     * -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     *
     *   购物车购买
     *
     * -++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     */

    /**
     * 产生购物车确认的数据
     */

    static function cartOrderData( $itemId, $user )
    {
        $arr = explode(',',$itemId);
        $pid = array();
        foreach ( $arr as $row )
        {
            $pid[] = decode($row);
        }
        $arr = array();
        $result = array();
        $productInfo = Source_Cart_CartItem::whereIn('product_id',$pid)->where('user_id',$user->id)->get();
        $price = $num = $cost_freight = 0;
        $name = '';
        foreach ( $productInfo as $res )
        {
            $obj = new stdClass();
            $obj->product_id = $res->product_id;
            $obj->product_name = $res->product_name;
            $obj->guige = $res->guige;
            $obj->num = $res->num;
            $obj->price = $res->price;
            //暂未确定的优惠信息
            $obj->discount = $res->discount;
            $obj->small_image = $res->small_image;
            $obj->shop_id = $res->shop_id;
            $obj->weight = $res->weight;
            $obj->sku = $res->sku;
            $result[] = $obj;
            //合计价格
            $price += $obj->price*$obj->num;
            //合计数量
            $num += $obj->num;
            //合计优惠
            $cost_freight += $obj->discount;
            //商品名称
            $name .= $res->product_name.'  ';
        }

        //合计数据
        $sum = new stdClass();
        $sum->cost_item = $price;
        $sum->itemnum = $num;
        //暂未确定的优惠信息
        $sum->cost_freight = $cost_freight;
        //暂未确定的运费
        $sum->shipping_amount = 0;
        $sum->total_amount = $sum->cost_item + $sum->shipping_amount;
        $sum->pay_amount = $sum->cost_item + $sum->shipping_amount - $sum->cost_freight;
        $sum->subject = $name;
        $totaled = $sum;
        //产品数据
        $arr['goods'] = $result;
        $arr['totaled '] = $totaled;
        return $arr;
    }


    /**
     * @param $goodsData
     * @param $data
     * @param $order_sn
     * @return bool
     * 购物车下订单
     */
    static function cartOrderSave( $goodsData, $data, $order_sn )
    {
        $result = DB::transaction(function() use ( $goodsData, $data, $order_sn ) {

            $goodsArr = $goodsData['goods'];
            //合计信息
            $totaled = $goodsData['totaled '];
            $address =  $data['address'];
            //地址
            $adr = Source_User_UserInfoAdd::where('id',$address)->first();
            //订单主表
            $orderInfo = new Source_Order_OrderInfo();
            $orderInfo->order_sn = $order_sn;
            $orderInfo->user_id = $adr->user_id;
            $orderInfo->source = 1;
            $orderInfo->status = 1;
            $orderInfo->pay_status = 1;
            $orderInfo->payment = $data['payment'];
            $orderInfo->itemnum = $totaled->itemnum;
            $orderInfo->ship_name = $adr->name;
            $orderInfo->ship_addr = $adr->province.$adr->city.$adr->district.$adr->address;
            $orderInfo->ship_post = $adr->zipcode;
            $orderInfo->ship_phone = $adr->phone;
            $orderInfo->cost_item = $totaled->cost_item;
            $orderInfo->cost_freight = $totaled->cost_freight;
            $orderInfo->shipping_amount = $totaled->shipping_amount;
            $orderInfo->total_amount = $totaled->total_amount;
            $orderInfo->pay_amount = $totaled->pay_amount;
            $orderInfo->save();
            //订单附表
            foreach ( $goodsArr as $goods )
            {
                $orderItem = new Source_Order_OrderItem();
                $orderItem->order_id = $orderInfo->id;
                $orderItem->shop_id = $goods->shop_id;
                $orderItem->product_id = $goods->product_id;
                $orderItem->product_name = $goods->product_name;
                $orderItem->product_status = 1;
                $orderItem->sku = $goods->sku;
                $orderItem->price = $goods->price;
                $orderItem->weight = $goods->weight;
                $orderItem->row_total = $goods->num*$goods->price;
                $orderItem->row_weigth = $goods->num*$goods->weight;
                $orderItem->num = $goods->num;
                $orderItem->guige = $goods->guige;
                $orderItem->shipping_status = 1;
                $orderItem->save();
            }

            //订单动作表
            $orderAction = new Source_Order_OrderAction();
            $orderAction->order_id = $orderInfo->id;
            $orderAction->order_status = 1;
            $orderAction->shipping_status = 0;
            $orderAction->pay_status = 0;
            $orderAction->option_id = Session::get('member')->id;
            $orderAction->option_name = Session::get('member')->name;
            $orderAction->remark = '购物车提交订单'.$order_sn;
            $orderAction->save();
        });
        if ( is_null($result) )
        {
            return true;
        }else
        {
            return false;
        }
    }
}