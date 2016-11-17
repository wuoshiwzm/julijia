<?php

class ProductImgController extends CommonController
{

	public function __construct()
	{
		parent::__construct();
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create( $id )
	{
		$id = trim( $id );
		$data = Source_Product_ProductImage::where('entity_id',$id)->get()->toArray();
		$this->view('admin.product.addimg',compact('id','data'));
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 *
	 */
	public function store()
	{
		$Input = Input::all();
	    $res = Product::addImg( $Input );
		if ( $res )
		{
			//添加成功
			return Redirect::to('/admin/product/goodsimg/'.$Input['entityID'])->with('msg','添加成功');

		}else
		{
			//添加失败
			return Redirect::back()->with('msg','添加失败');
		}
	}


}
