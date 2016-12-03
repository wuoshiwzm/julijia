<?php

// use app\controllers\user\user\LeonEvent;

class OrderMemberController extends CommonController
{

    protected $layout = 'layouts.member.index';


    protected function setupLayout()
    {
        if (!is_null($this->layout)) {
            $this->layout = View::make($this->layout);
        }
    }

    public function view($path, $data = [])
    {
        $this->layout->content = View::make($path, $data);
    }


    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 欢迎页 -- 全部订单信息
     */
    function index()
    {

        //session 获取用户id
        if (!isset(Session::get('member')->id))
            return $this->view(member . login);
        $user_id = Session::get('member')->id;


        //获取订单
        $orders = User::getOrdersByUser($user_id)->get();

        //获取订单下的商品并插入订单表 $orders
        foreach ($orders as $order) {
            $items = Order::getItemByOrder($order->id)->get();
            if (!$items) {
                $order->items = '';
            }
            $order->items = $items;

        }

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = User::getOrdersByUser($user_id)->paginate($setPage);


        return $this->view('member.order.order_all', compact('orders', 'data', 'set'));
    }


    /**
     * 等待付款
     */
    function 购物车()
    {
        return $this->view('member.order.to_pay');
    }

    /**
     * 等待付款
     */
    function toPay()
    {
        return $this->view('member.order.to_pay');
    }

    /**
     * 等待发货
     */
    function toShip()
    {
        return $this->view('member.order.to_pay');
    }

    /**
     * 等待收货
     */
    function toReceive()
    {
        return $this->view('member.order.to_pay');
    }

    /**
     * 等待评价
     */
    function toComment()
    {
        return $this->view('member.order.to_pay');
    }


}
