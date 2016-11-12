<?php

class CartController extends CommonController {





	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{

		// echo "cartcontroller - cart";
		Cart::add('293ad', 'Product 1', 1, 9.99, array('size' => 'large'));
		$cart = Cart::getContent();
		$this->view('admin.cart.index',compact('cart'));
		$this->view('admin.cart.index',compact('cart'));
		// Auth::logout();
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{


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
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
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
	public function destroy($id)
	{
		//
	}


}
