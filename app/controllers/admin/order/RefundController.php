<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016-10-29
 * Time: 21:28
 * @des 退款单控制器
 */
class RefundController extends CommonController
{

    /**
     * 退款单首页
     */
    public function  getIndex()
    {
        $type = 1;
        //订单编号
        $order_sn = Input::get("order_sn");
        //退款单号
        //$refund_sn = Input::get("refund_sn");
        //商品状态
        $status = (int)Input::get("status");
        //原因
        //$reason = (int)Input::get("reason");

        //分页
        $setPage = (int)Input::get("setpage",self::$adminPage);
        $data = OrderBack::getRefund($type,$order_sn,null,$status,$setPage);
        $refund_info =  OrderBack::getRefundNumber();
        $set["order_sn"] = $order_sn;
        $set["status"] = $status;
        $set['setpage'] = $setPage;
        //$set["refund_sn"] = $refund_sn
        $this->view("admin.order.refund",compact("set","data","refund_info"));
    }

    /**
     * 退款退货
     */
    public function getBack()
    {
        $type = 2;
        //订单编号
        $order_sn = Input::get("order_sn");
        //退款单号
        //$refund_sn = Input::get("refund_sn");
        //商品状态
        $status = (int)Input::get("status");
        //原因
        //$reason = (int)Input::get("reason");

        //分页
        $setPage = (int)Input::get("setpage",self::$adminPage);
        $data = OrderBack::getRefund($type,$order_sn,null,$status,$setPage);
        $refund_info =  OrderBack::getRefundNumber();
        $set["order_sn"] = $order_sn;
        $set["status"] = $status;
        $set['setpage'] = $setPage;
        //$set["refund_sn"] = $refund_sn

        $this->view("admin.order.back",compact("set","data","refund_info"));
    }

    /**
     * 退款详情页
     */
    public function getDetail()
    {
        //$refund_id = Input::get("id");
        $this->view("admin.order.refund_detail");
    }

}