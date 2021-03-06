<?php

/**
 * Author:Tonychang
 * Date: 2016-11-06
 * Time: 15:47
 * DES:
 */
use Illuminate\Database\Eloquent\SoftDeletingTrait;
class Source_Order_OrderInfo extends  \Eloquent
{
    use SoftDeletingTrait;
    protected $primaryKey = 'id';
    protected $table='order_info';
    protected $dates = ['deleted_at'];
    public $timestamps = true;
    protected $guarded = ['id'];

    //关联到用户模型
    public function belongsToUser()
    {
        return $this->belongsTo("Source_User_UserInfo",'user_id');
    }
    //关联到订单item
    public function item()
    {
        return $this->hasMany('Source_Order_OrderItem', 'order_id');
    }

    //关联到评价表
    public function review()
    {
        return $this->hasMany('Source_Order_OrderReview', 'order_id');
    }

    //关联到支付表
    public function pay()
    {
        return $this->hasOne("Source_Order_OrderPayment","order_id","id");
    }

    //关联到投诉表
    public function feedback()
    {
        return $this->hasMany('Source_Feedback_FeedbackInfo', 'order_id');
    }
  //关联到退款退货表
    public function refund()
    {
        return $this->hasMany('Source_Order_OrderBack', 'order_id');
    }
    //关联到营销表
    public function  favoutable()
    {
        return $this->hasMany('Source_Order_OrtderFavoutable', 'order_id');
    }
}