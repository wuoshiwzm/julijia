<?php

/**
 * 操作产品控制器
 * Class GoodsController
 */
class GoodsController extends \BaseController
{

    protected static $user;
    public function __construct()
    {
        $ajax = Request::ajax();
        $user = Session::get('member');
        if( $ajax )
        {
            if( $user == false )
            {
                die('no');
            }
        }else
        {
            if( $user == false )
            {
                header( "Location:/member/login");
                die();
            }
        }
        self::$user = $user;
        parent::__construct();
    }

    /**
     * 收藏
     */
    public function keep()
    {
        $ajax = Request::ajax();
        if( $ajax )
        {
            //判断token
            $data = Input::get('data');
            $token = Session::token();
            if( $token != $data['token'] )
            {
                return 'fail';
            }
            $res = KeepAndOrderAndCart::keep( $data, self::$user );
            return $res?'success':'fail';
        }
        return 'fail';
    }


    /**
     * @return mixed
     * 加入购物车
     */
    public function shoppingCart()
    {
        //判断token
        $data = Input::all();
        $token = Session::token();
        if( $token != $data['_token'] )
        {
            return Redirect::back();
        }
        //查询写入购物车

        $res = KeepAndOrderAndCart::cart( $data, self::$user);
        if( $res )
        {
            return Redirect::to('/member/cart');
        }else
        {
            return Redirect::back();
        }
        
    }


    /**
     * @return mixed
     * 立即购买中转
     */
    public function purchase()
    {
        //判断token
        $id = Input::get('product_id');
        $token = Session::token();
        if( $token != Input::get('_token') )
        {
            return Redirect::back();
        }
        //确认订单
        return Redirect::to('/order/confirm_order.html?order='.encode( decode($id) ));
    }


    /**
     * 确认下订单
     */
    public function confirmOrder()
    {
        //产品id按照英文的逗号隔开
        $id = decode( trim(Input::get('order')) );
        $pid = explode( ",", $id );

        $uid = self::$user->id;
        $address = Source_User_UserInfoAdd::where('user_id',$uid)->get();
        $this->view('frontend.order.confirmorder',compact('address'));

    }


    public function orderSave()
    {
        dd( Input::all() );
    }
}