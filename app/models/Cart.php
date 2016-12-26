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
     * @param $entityId 商品ID
     * @param null $guige 商品规格信息 数组形式
     *
     * 添加物品到购物车
     */
    static function addItem($userId,$entityId, $quantity, $guige = null)
    {


        //获得商品属性
        $productInfo = Source_Product_ProductFlat::where('entity_id', $entityId)->first();
        if (!$productInfo) {
            App::abort(500, '没有此商品信息！');
            return flase;
        }

        //得到rowId
        $shop_id = $productInfo->shop;
        $rowId = self::getRowId($userId,$entityId, $shop_id, $guige);



        //判断是否已经有同类商品
        //没有同样商品 - 生成新商品条目
        if (!self::checkRowId($rowId)) {

            $res = self::addRow($userId,$entityId, $quantity, $guige, $rowId);
            return $res;
        } else {
            //有同样商品 - 更新商品数量
            $res = self::addQty($rowId, $quantity);
            return $res;
        }
    }




    /**
     * @param $entityId
     * @param $quantity
     * 更新商品数量 用于更新 不增或减
     */
    static function updateQty($rowId, $quantity)
    {

        $res = DB::transaction(function () use ($rowId, $quantity) {
            //更新商品信息
            $item = Source_Cart_CartItem::where('row_id', $rowId)->first();

            $item->num = $quantity;
//            $item->row_total = $item->price * $quantity;
//            $item->row_weight = $item->weight * $quantity;
            $item->save();

            //更新总购物车信息

        });


        //更新总信息
        return $res ? false : true;
    }


    /**
     * @param $entityId
     * @param $quantity
     * 增加商品数量 用于增减商品数量 不能小于0
     */
    static function addQty($rowId, $quantity)
    {

        $item = Source_Cart_CartItem::where('row_id', $rowId)->first();
        $totalQuantity = $item->num + $quantity;

        //如果商品数量小于 1 则删除该行商品
        if ($totalQuantity < 1) {
            $res = self::remove($rowId);
            return $res;
        }
        $res = self::updateQty($rowId, $totalQuantity);
        return $res;
    }


    /**
     * @param $entityId 商品id
     * @param $quantity 商品数量
     * @param null $guigeArr 商品规格数组
     * @param null $rowId 要增加的行对应的rowId
     * 目前购物车没有要添加的商品， 新增一行
     */
    private static function addRow($userId, $entityId, $quantity, $guige = null, $rowId)
    {
        //获得商品属性
        $productInfo = Product::getProductById($entityId);
        //获取订单Id

        $addInfo['user_id'] = $userId;
        $addInfo['row_id'] = $rowId;
        $addInfo['product_id'] = $productInfo['entity_id'];
        $addInfo['category_id'] = $productInfo['category_id'];
        $addInfo['product_name'] = $productInfo['name'];
        $addInfo['product_status'] = $productInfo['visibility'];
        $addInfo['shop_id'] = $productInfo['shop'];
        $addInfo['sku'] = $productInfo['sku'];
        $addInfo['price'] = $productInfo['price'];
        $addInfo['weight'] = $productInfo['weight'];
        $addInfo['num'] = $quantity;

        if (is_array($guige)) {
            $addInfo['guige'] = json_encode($guige);
        }
        if (is_string($guige)) {
            $addInfo['guige'] = $guige;
        }
        if(!is_array($guige) && !is_string($guige)){
            App::abort(500, '规格需要是json字符串或数组！');
        }

//        $productInfo['cost_price'] == 0 ? $addInfo['free_shipping'] = 1 : $addInfo['free_shipping'] = 0;
//        $addInfo['row_total'] = $productInfo['price'] * $quantity;
//        $addInfo['row_weight'] = $productInfo['weight'] * $quantity;

        $res = Source_Cart_CartItem::create($addInfo);

        return $res;
    }


    /**
     * @param $rowId 要删除的行对应的rowId
     */
    static function remove($rowId)
    {
        $res = DB::transaction(function () use ($rowId) {
            Source_Cart_CartItem::where('row_id', $rowId)->delete();
        });
        return $res ? false : true;
    }

    /**
     * @return bool
     * 或取当前的购物车
     */
    static function getContent()
    {
        $res = Source_Cart_CartItem::where('user_id', Session::get('member')->id);
        return $res ? $res : false;
    }

    /**
     * @param $entityId
     * @param $shopId
     * @param $guige
     * 生成RowId 同一个商品id 同一个shop_id 同一个规格 被当作一种商品， 添加同一种商品时只更新数量
     */
    private static function getRowId($userId, $entityId, $shopId, $guige)
    {
        if (is_array($guige)) {
            $guige = serialize($guige);
        }

        if (!is_string($guige)) {
            App::abort(500, '规格需要是json字符串或数组！');
        }
        $rowId = sha1($userId . $entityId . $shopId . $guige);
        return $rowId;
    }

    /**
     * @param $rowId 商品编码列
     * 当前是否购物车有该种商品
     * 返回true表示有该产品，返加false表示没有该产品
     */
    private static function checkRowId($rowId)
    {

        $res = Source_Cart_CartItem::where('row_id', $rowId)->count();

        return $res ? true : false;
    }


}
