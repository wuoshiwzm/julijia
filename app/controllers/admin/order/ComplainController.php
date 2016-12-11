<?php

/**
 * Author:Tonychang
 * Date: 2016-11-07
 * Time: 22:18
 * DES:投诉管理控制器
 */
class ComplainController extends  CommonController
{
    //投诉管理首页（所有投诉）
    public function  getIndex()
    {
        $status = 0;
        $order_sn = Input::get("order_sn","");
        $feedback_sn = Input::get("feedback_sn","");
        $reason_id = Input::get("reason_id",0);
        $data = Complain::getList($status,$order_sn,$feedback_sn,$reason_id,self::$adminPage);

        $set["order_sn"] = $order_sn;
        $set["feedback_sn"] = $feedback_sn;
        $set["reason_id"] = $reason_id;
        $set['setpage'] = self::$adminPage;
        $reasons = Source_Feedback_FeedbackReason::all();
        $this->view("admin.order.complain",compact("data","set","reasons"));
    }

    //投诉处理(平台方)页面
    public function getHandle()
    {
        $status = 1;
        $order_sn = Input::get("order_sn","");
        $feedback_sn = Input::get("feedback_sn","");
        $reason_id = Input::get("reason_id",0);
        $data = Complain::getList($status,$order_sn,$feedback_sn,$reason_id,self::$adminPage);

        $set["order_sn"] = $order_sn;
        $set["feedback_sn"] = $feedback_sn;
        $set["reason_id"] = $reason_id;
        $set['setpage'] = self::$adminPage;
        $reasons = Source_Feedback_FeedbackReason::all();
        $this->view("admin.order.chandle",compact("data","set","reasons"));
    }
    /**
     * 查看详情页
     */
    public function getDetail()
    {
       /* 投诉详情页面见complaints_x.html*/
    }

}