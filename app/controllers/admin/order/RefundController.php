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
        $order_sn = trim(Input::get("order_sn"));
        //退款单号
        $back_sn = trim(Input::get("back_sn"));
        //原因
        $reason_type = (int)Input::get("reason_type");
        //商品状态
        $status = (int)Input::get("status");
        //分页
        $setPage = (int)Input::get("setpage",self::$adminPage);
        $data = OrderBack::getRefund($type,$order_sn,$back_sn,$reason_type,$status,$setPage);
        //退款单信息
        $refund_info =  OrderBack::getRefundNumber();
        //退款原因
        $refund_reason = OrderBack::getReason($type);
        $set["order_sn"] = $order_sn;
        $set["status"] = $status;
        $set['setpage'] = $setPage;
        $set["back_sn"] = $back_sn;
        $this->view("admin.order.refund",compact("set","data","refund_info","refund_reason"));
    }

    /**
     * 退款退货
     */
    public function getBack()
    {
        $type = 2;
        //订单编号
        $order_sn = trim(Input::get("order_sn"));
        //退款单号
        $back_sn = trim(Input::get("back_sn"));
        //原因
        $reason_type = (int)Input::get("reason_type");
        //商品状态
        $status = (int)Input::get("status");

        //分页
        $setPage = (int)Input::get("setpage",self::$adminPage);
        $data = OrderBack::getRefund($type,$order_sn,$back_sn,$reason_type,$status,$setPage);
        //退款单信息
        $refund_info =  OrderBack::getRefundNumber();
        //退款原因分类
        $refund_reason = OrderBack::getReason($type);
        $set["order_sn"] = $order_sn;
        $set["status"] = $status;
        $set['setpage'] = $setPage;
        $set["back_sn"] = $back_sn;

        $this->view("admin.order.back",compact("set","data","refund_info","refund_reason"));
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