<?php

/**
 * Author:Tonychang
 * Date: 2016-12-11
 * Time: 12:06
 * DES:
 */
class Source_Order_OrderAction extends \Eloquent
{
    protected $primaryKey = 'id';
    protected $table='order_action';
    protected $dates = ['deleted_at'];
    protected $guarded = ['id'];

}