<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/10/8
 * Time: 16:53
 */
class Cart
{

    //先判断有没有购物车，如果没有新建一个
    static function checkCart()
    {
        $user_id = Session::get('member')->id;

        dd(Source_Cart_CartInfo::where('user_id',$user_id)->count());

        /**
         * id
        quote_sn
        user_id
        user_group
        username
        shop_id
        source
        status
        itemnum
        itemweight
        checkout_method
        grand_total
        discount
        remote_ip

         */
    }

    /**
     * @param $product_id 商品ID
     * @param null $guige 商品规格信息 数组形式
     *
     * 添加物品到购物车
     */
    static function addItem($product_id, $quantity, $guige = null)
    {
        //获得商品属性
        $productInfo = Product::getProductById($product_id);
        //得到quote_id
        $shop_id = $productInfo->shop;
        $quoteId = self::getQuoteId($product_id, $shop_id, $guige);
        //判断是否已经有同类商品
        //没有同样商品 - 生成新商品条目
        if (!self::checkQuoteId($quoteId)) {
            self::addRow($product_id, $quantity, $guige = null, $quoteId);

        } else {
            //有同样商品 - 更新商品数量
            self::addQty($quoteId,$quantity);

        }




        dd($productInfo);


    }

    /**
     * @param $productid 商品ID
     */
    static function removeItem($productid,$shop_id,$guige)
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
     * @param $quantity
     * 更新商品数量 用于更新 不增或减
     */
    static function updateQty($quoteId,$quantity)
    {
        //
    }


    /**
     * @param $productid
     * @param $quantity
     * 增加商品数量 用于增减商品数量 不能小于0
     */
    static function addQty($quoteId,$quantity)
    {
        //
    }


    /**
     * @param $product_id 商品id
     * @param $quantity 商品数量
     * @param null $guige 商品规格数组
     * @param null $quoteId 要增加的行对应的quote_id
     * 目前购物车没有要添加的商品， 新增一行
     */
    private static function addRow($product_id, $quantity, $guige = null, $quoteId)
    {

        /**
         * id
        quote_id
        product_id
        categry_id
        product_name
        product_status
        shop_id
        sku
        price
        weight
        num
        guige
        free_shipping
        row_total
        row_wegith

         */
        //获得商品属性
        $productInfo = Product::getProductById($product_id);
//        $info = $productInfo->


        //$guige json拼接
        if (!$guige) {
            $guigeJson = json_encode($guige);
        }
    }


    /**
     * @param $quoteId 要删除的行对应的quote_id
     * 目前购物车没有要添加的商品， 新增一行
     */
    static function remove( $quoteId)
    {

    }


    /**
     * @param $product_id
     * @param $shop_id
     * @param $guige
     * 生成QuoteId 同一个商品id 同一个shop_id 同一个规格 被当作一种商品， 添加同一种商品时只更新数量
     */
    private static function getQuoteId($product_id, $shop_id, $guige)
    {
        $guige = serialize($guige);
        $quoteId = encode($product_id . $shop_id . $guige);
        return $quoteId;
    }

    /**
     * @param $quoteId 商品编码列
     * 当前是否购物车有该种商品  quote_id
     * 返回true表示有该产品，返加false表示没有该产品
     */
    private static function checkQuoteId($quote_id)
    {
        $res = Source_Cart_CartItem::where('quote_id', $quote_id)->count();
        return $res ? true : false;
    }


}
