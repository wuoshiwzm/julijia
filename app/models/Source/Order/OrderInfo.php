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

}