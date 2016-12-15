<?php

/**
 * Author:Tonychang
 * Date: 2016-11-06
 * Time: 15:47
 * DES:
 */

class Source_Order_OrderInfo extends  \Eloquent
{
    protected $primaryKey = 'id';
    protected $table='order_info';
    protected $dates = ['deleted_at'];
    public $timestamps = true;
    protected $guarded = ['id'];

    public function belongsToUser()
    {
        return $this->belongsTo("Source_User_UserInfo",'user_id');
    }
    
    public function item()
    {
        return $this->hasMany('Source_Order_OrderItem', 'order_id');
    }

    public function review()
    {
        return $this->hasMany('Source_Order_OrderReview', 'order_id');
    }

    public function pay()
    {
        return $this->hasOne("Source_Order_OrderPayment","order_id","id");
    }

    public function feedback()
    {
        return $this->hasMany('Source_Feedback_FeedbackInfo', 'order_id');
    }

    public function refund()
    {
        return $this->hasMany('Source_Order_OrderBack', 'order_id');
    }
}