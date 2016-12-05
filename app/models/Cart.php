<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/10/8
 * Time: 16:53
 */
class Cart
{


    /**
     * @param $productid 商品ID
     * 添加物品到购物车
     */
    static function addItemById($productid, $guige)
    {

        //$guige json拼接
    }

    /**
     * @param $productid 购物车商品ID
     */
    static function removeItemById($productid)
    {
        //
    }

    /**
     * @param array $productids 数组形式传商品ID
     * 确认折扣信息
     */
    static function chkDiscount(array $productids)
    {
        //
    }

    /**
     * @param $productid
     * 更新商品数量
     */
    static function updateQty($productid)
    {
        //
    }


}
