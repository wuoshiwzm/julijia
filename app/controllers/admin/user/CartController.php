<?php

class CartController extends CommonController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{

		// show cart page
		Cart::add('293ad', 'Product 1', 1, 9.99, 'sadasd');
		Cart::add('电脑', 'Product 1', 1, 9.99, '笔记本');
		// Cart::add('电脑', 'Product 1', 1, 9.99, '台式机');
		Cart::add('电脑', 'Product 1', 1, 9.99, '台式机大优惠');
		Cart::add('电脑', 'Product 1', 1, 9.99, '台式机大优惠');
		$cart = Cart::getContent();
		$this->view('admin.cart.index',compact('cart'));
	}

	//delete the item you choose
	public function deleteItem($rowid){
		// dd($rowid);
		Cart::remove($rowid);
	}

	public function addItem($itemId,$itemName,$qantity,$price,$attr=null){
		$input = Input::all();

		Cart::add('电脑', 'Product 1', 1, 9.99, '台式机大优惠');
		var_dump($itemId);
		echo "<hr>";
		var_dump($itemName);
		echo "<hr>";
		var_dump($qantity);
		echo "<hr>";
		var_dump($price);
		echo "<hr>";
		die($attr);
		Cart::add($rowid);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		// add product to cart
		Cart::add('293ad', 'Product 1', 1, 9.99, array('size' => 'large'));
		$cart = Cart::getContent();
		$this->view('admin.cart.index',compact('cart'));
	}



	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{

		$this->view('admin.cart.index',compact('cart'));
		die('store');
	}



	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		die('destroy');
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($rowid)
	{

	}




}
