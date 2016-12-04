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


        return $this->view('member.order.all', compact('orders', 'data', 'set'));
    }


    /**
     * 等待付款
     */
    function toPay()
    {

        //session 获取用户id
        if (!isset(Session::get('member')->id))
            return $this->view(member . login);

        $user_id = Session::get('member')->id;
        //pay_status 支付状态 1未付款 2 付款中  3 已付款

        //获取订单
        $orders = User::getOrdersByUser($user_id)->where('pay_status', 1)->get();

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


        return $this->view('member.order.to_pay', compact('orders', 'data', 'set'));
    }

    /**
     * 等待发货
     */
    function toShip()
    {

        //session 获取用户id
        if (!isset(Session::get('member')->id))
            return $this->view(member . login);

        $user_id = Session::get('member')->id;

        //获取订单
        $orders = User::getOrdersByUser($user_id)->where('pay_status', 3)->get();

        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {
            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->get();
            if (!$items) {
                $order->show = 0;
                continue;
            }
            $order->items = $items;
            foreach ($items as $it) {
                if ($it->shipping_status == 1) {
                    $order->show = 1;
                }
            }
        }

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = User::getOrdersByUser($user_id)->paginate($setPage);


        return $this->view('member.order.to_ship', compact('orders', 'data', 'set'));
    }

    /**
     * 等待收货
     */
    function toReceive()
    {
        //session 获取用户id
        if (!isset(Session::get('member')->id))
            return $this->view(member . login);

        $user_id = Session::get('member')->id;

        //获取订单
        $orders = User::getOrdersByUser($user_id)->where('pay_status', 3)->get();


        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {
            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->get();
            if (!$items) {
                $order->show = 0;
                continue;
            }
            $order->items = $items;

            foreach ($items as $it) {
                if ($it->shipping_status == 2) {
                    $order->show = 1;
                }
            }


        }

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = User::getOrdersByUser($user_id)->paginate($setPage);


        return $this->view('member.order.to_receive', compact('orders', 'data', 'set'));
    }

    /**
     * 等待评价
     */
    function toComment()
    {
        //session 获取用户id
        if (!isset(Session::get('member')->id))
            return $this->view(member . login);

        $user_id = Session::get('member')->id;

        //获取订单
        $orders = User::getOrdersByUser($user_id)->where('pay_status', 3)->get();

        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {

            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->get();
            if (!$items) {
                $order->show = 0;
                continue;
            }
            $order->items = $items;
            foreach ($items as $it) {
                if ($it->shipping_status == 3) {
                    $order->show = 1;
                }
            }
        }


        //订单内无商品对应此页,则不显示该订单内容


        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = User::getOrdersByUser($user_id)->paginate($setPage);


        return $this->view('member.order.to_comment', compact('orders', 'data', 'set'));
    }


}