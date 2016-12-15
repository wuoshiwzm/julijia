<?php

/**
 * Author:Tonychang
 * Date: 2016-11-06
 * Time: 15:47
 * DES:
 */
class Source_Order_OrderItem extends \Eloquent
{
    protected $primaryKey = 'id';
    protected $table = 'order_item';
    public $timestamps = true;
    protected $guarded = ['id'];

    public function belongsToUser()
    {
        return $this->belongsTo("Source_User_UserInfo", 'user_id');
    }

    public function item()
    {
        return $this->hasMany('Source_Salerule_FavoutableRule', 'rule_id');
    }

    public function feedback()
    {
        return $this->hasMany('Source_Feedback_FeedbackInfo', 'item_id');

    }

    public function review()
    {
        return $this->hasMany('Source_Order_OrderReview', 'item_id');
    }

    public function refund()
    {
        return $this->hasMany('Source_Order_OrderBack', 'order_item_id');
    }


}