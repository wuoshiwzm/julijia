<?php

class Source_Cart_CartItem extends \Eloquent
{
    protected $table = 'quote_item';
    protected $primaryKey = 'id';
    public $timestamps = true;
    protected $guarded = ['id'];
}
