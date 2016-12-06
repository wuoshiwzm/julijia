<?php

// use 	Illuminate\

class CartController extends CommonController
{

    /**
     * 显示购物车
     */
    public function index()
    {


//        return $this->view('user.cart', compact('cart'));

    }

    /**
     * @param $rowid 删除物品
     */
    public function deleteItem($rowid)
    {

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


//        if(!Input::has('id'))
//            return false;
//        $product_id = Input::get('id');
//
//        $guige = Input::has('guige')?Input::get('guige'):'';
//        $quantity = Input::has('quantity')?Input::get('quantity'):1;
//        $guige =  [
//            array('arrbute_name'=>'color','attbute_id'=>1,'attbute_title'=>'颜色','vaue'=>'red'),
//            array('arrbute_name'=>'size','attbute_id'=>2,'attbute_title'=>'大小','vaue'=>'blue'),
//        ];

        Cart::checkCart();
        die('tesst');

//        private function getQuoteId($product_id,$shop_id,$quantity,$guige)
        Cart::addItem(1,$guige);
//        Cart::getQuoteId(1,2,$guige);

    }

    /**
     * 更新购物车
     */
    public function update()
    {

    }


}
