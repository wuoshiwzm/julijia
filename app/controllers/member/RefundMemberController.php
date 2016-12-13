<?php

//用户积分管理
class RefundMemberController extends CommonController
{
    private $user_id;
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
    }

    /**
     * 我的退款
     *
     * @return Response
     */
    public function index()
    {
        //当前对应的用户退款信息
        $data = OrderBack::getRefundByUser($this->user_id);
        $refundInfos = OrderBack::getRefundByUser($this->user_id)->get();

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $data = $data->paginate($setPage);
        $set['setpage'] = $setPage;


        //搜索条件
        if (!empty(Input::all())) {
            die('input here');
        }


        return $this->view('member.refund', compact('refundInfos', 'data', 'set'));

    }


    public function applyChoose($orderId, $orderItemId)
    {

    }

    /**
     * @param $orderId 订单id
     * @param $orderItemId 订单商品id
     * 提交退款
     * url : '/refund/apply_refund/{order_id}/{order_item_id}'
     */
    public function applyRefund($orderId, $orderItemId)
    {


        $orderId = decode($orderId);
        $orderItemId = decode($orderItemId);

        $orderInfo = Order::getOrdersById($orderId);
        $orderItem = Order::getOrderItemsById($orderItemId);

        //退款原因
        $orderBackReasons = OrderBack::getReason();

        //提交退款
        if (!empty(Input::all())) {

            dd(Input::all());

            //退款的订单id
            $refund['order_id'] = $orderId;

            //退赛款的商品id
            $refund['order_item_id'] = $orderItemId;

            $refund['back_sn'] = getMicroTimestamp();


        }
        return $this->view('member.order.apply', compact('orderItem', 'orderInfo','orderBackReasons'));

    }


    /**
     * 存储退款信息
     */
    public function createRefund()
    {



        if (!Input::all())
            return Redirect::back();


        $orderId = Input::get('orderId');
        $orderItemId = Input::get('orderItemId');

        $orderInfo = Order::getOrdersById($orderId);
        $orderItem = Order::getOrderItemsById($orderItemId);

        $product = Product::getProductById($orderItem->product_id);

        //退款的订单id
        $refund['order_id'] = $orderId;

        //退赛款的商品id
        $refund['order_item_id'] = $orderItemId;
        $refund['back_sn'] = getMicroTimestamp();
        $refund['order_sn'] = $orderInfo->order_sn;
        $refund['order_item_id'] = $orderItem->id;
        $refund['type'] = Input::get('type');
        $refund['p_entity_id'] = $orderItem->product_id;
        $refund['p_sku'] = $orderItem->sku;
        $refund['price'] = $orderItem->price;
        $refund['p_suppliers_id'] = $product->supplier;
        $refund['p_mendian_id'] = 1;



        $refund['is_delivery'] = Input::get('is_delivery');
        $refund['content'] = Input::get('content');



        $refund['back_delivery_address'] =  Input::get('back_delivery_address');


//        $refund[''] =  ;


        $type = Input::get('type');


        if ($type == 1) {
            //只退货
        } elseif ($type == 2) {
            //退款退货
        }


    }


}
