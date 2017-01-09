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

    /**
     * @return mixed
     */
    public function belongsToUser()
    {
        return $this->belongsTo("Source_User_UserInfo", 'user_id');
    }

    /**
     * @return mixed
     */
    public function item()
    {
        return $this->hasMany('Source_Salerule_FavoutableRule', 'rule_id');
    }


    /**
     * @return mixed
     * 对应的订单表
     */
    public function order()
    {
        return $this->belongsTo('Source_Order_OrderInfo', 'order_id');
    }

    /**
     * @return mixed
     */
    public function feedback()
    {
        return $this->hasMany('Source_Feedback_FeedbackInfo', 'item_id');

    }

    /**
     * @return mixed
     */
    public function review()
    {
        return $this->hasMany('Source_Order_OrderReview', 'item_id');
    }

    /**
     * @return mixed
     */
    public function refund()
    {
        return $this->hasMany('Source_Order_OrderBack', 'order_item_id');
    }

    /**
     * @return mixed
     */
    public function favoutable()
    {
        return $this->belongsTo('Source_Order_OrderFavoutable', 'id','item_id');
    }

    /**
     * @return mixed
     */
    public function product()
    {
        return $this->belongsTo("Source_Product_ProductFlat","product_id","entity_id");
    }

    public function Supplier()
    {
        return $this->belongsTo("Source_Product_ProductEntitySupplier","product_id","entity_id");
    }

    public function shipper()
    {
        return $this->belongsTo('Source_Shipping_Code','shipping_m_code','code');
    }

}