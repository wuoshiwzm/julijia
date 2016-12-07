<?php

// use 	Illuminate\

class CartController extends CommonController
{
    /**
     * CartController constructor.
     * 注册购物车
     */
    function __construct()
    {
        $res = Cart::getCart();
        if (!$res) {
            die('无法创建购物车！');
        }
    }

    /**
     * 显示购物车
     */
    public function index()
    {
        $cartContent = Cart::getContent();
//      return $this->view('member.cart', compact('cartContent'));

    }

    /**
     * @param $rowid 删除物品
     */
    public function removeItem($rowId)
    {
        Cart::remove($rowId);
    }


    /**
     * @param $product_id 商品ID
     * @param $guige 商品规格
     * @param $quantity 商品数量 不传默认是1
     *
     * 添加物品
     */

    public function addItem()
    {

        if (!Input::has('entity_id'))
            return false;
        $entity_id = Input::get('entity_id');

        $guigeArr = Input::has('guige') ? Input::get('guige') : '';
        $quantity = Input::has('quantity') ? Input::get('quantity') : 1;
        //测试商品：entity_id:1479264267 $guige
        //        $guigeArr = [
        //            array('arrbute_name' => 'color', 'attbute_id' => 1, 'attbute_title' => '颜色', 'vaue' => 'red'),
        //            array('arrbute_name' => 'size', 'attbute_id' => 2, 'attbute_title' => '大小', 'vaue' => 'blue'),
        //        ];
        $res = Cart::addItem($entity_id, $quantity, $guigeArr);
        return $res ? true : false;
    }

}
