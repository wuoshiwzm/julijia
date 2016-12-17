<?php

// use app\controllers\user\user\LeonEvent;

class OrderMemberController extends CommonController
{

    private $user_id;
    private $orders;
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


    function __construct()
    {
        if (!Session::has('member')) {
            return Redirect::to('member/login');
        }
        $userInfo = Session::get('member');
        $this->user_id = $userInfo->id;
        $this->orders = Source_Order_OrderInfo::where('user_id', $this->user_id);

        //计数信息
        $numOrders = 0;
        $numToPay = 0;
        $numToShip = 0;
        $numToReceive = 0;
        $numToReview = 0;


        foreach ($this->orders->get() as $order) {

            $numOrders++;


            if ($order->pay_status == 1) {
                $numToPay++;
            } elseif ($order->pay_status == 3) {
                //待发货计数
                foreach ($order->item as $item) {
                    if ($item->shipping_status == 1 ) {
                        $numToShip++;
                        break;
                    }
                }

                //待收货计数
                foreach ($order->item as $item) {
                    if ($item->shipping_status == 2) {
                        $numToReceive++;
                        break;
                    }
                }

                //待评价计数
                foreach ($order->item as $item) {
                    if ($item->shipping_status == 3 && $item->review->count()) {
                        $numToReview++;
                        break;
                    }
                }
            }


        }


        View::share('numOrders', $numOrders);
        View::share('numToPay', $numToPay);
        View::share('numToShip', $numToShip);
        View::share('numToReceive', $numToReceive);
        View::share('numToReview', $numToReview);

    }


    /**
     * 欢迎页 -- 全部订单信息
     */
    function index()
    {


        //获取订单下的商品并插入订单表 $orders
        foreach ($this->orders->get() as $order) {
            $orders = $this->orders->get();
        }

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = $this->orders->paginate($setPage);


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

        $this->user_id = Session::get('member')->id;
        //pay_status 支付状态 1未付款 2 付款中  3 已付款

        //获取订单
        $orders = User::getOrdersByUser($this->user_id)->where('pay_status', 1)->get();

        //获取订单下的商品并插入订单表 $orders
        foreach ($orders as $order) {

            //如果该订单没有付款 则显示
            $order->show = 1;

            $items = $order->item;
            if (!$items) {
                $order->items = '';
            }
            $order->items = $items;


        }

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = User::getOrdersByUser($this->user_id)->paginate($setPage);


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

        $this->user_id = Session::get('member')->id;

        //获取订单
        $orders = User::getOrdersByUser($this->user_id)->where('pay_status', 3)->get();

        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {
            //如果该订单下无任何商品满足要求，则不显示该订单信息
            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->where('shipping_status', 1)->get();
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
        $data = User::getOrdersByUser($this->user_id)->paginate($setPage);


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

        $this->user_id = Session::get('member')->id;

        //获取订单
        $orders = User::getOrdersByUser($this->user_id)->where('pay_status', 3)->get();


        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {
            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->where('shipping_status', '2')->get();
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
        $data = User::getOrdersByUser($this->user_id)->paginate($setPage);


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

        $this->user_id = Session::get('member')->id;

        //获取订单
        $orders = Source_Order_OrderInfo::where('user_id', $this->user_id)->where('pay_status', 3)->get();

        //获取订单下的商品并插入订单表 $orders

        foreach ($orders as $order) {

            $order->show = 0;
            $items = Order::getItemByOrder($order->id)->where('shipping_status', 3)->get();
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
        $data = User::getOrdersByUser($this->user_id)->paginate($setPage);

        return $this->view('member.order.to_comment', compact('orders', 'data', 'set'));
    }


}
