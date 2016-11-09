<?php

class ProductController extends CommonController
{

	public function __construct()
	{
		parent::__construct();
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$sql = Source_Product_ProductFlat::orderBy('id','desc');
		$status = trim(Input::get('status'));
		if( $status )
		{
			$sql->where('status', $status );
		}
		$sku = trim(Input::get('sku'));
		if( $sku )
		{
			$sql->where('sku', $sku );
		}
		$category_id = trim(Input::get('category_id'));
		if( $category_id )
		{
			$sql->where('category_id', $category_id );
		}
		$setPage = Input::get('setpage')?Input::get('setpage'):self::$adminPage;
		$data = $sql->paginate($setPage);
		$set['status'] = $status;
		$set['sku'] = $sku;
		$set['category_id'] = $category_id;
		$set['setpage'] = $setPage;
		$category = ProductCategory::getTree( Source_Product_ProductCategory::get(), 0 );
		$this->view('admin.product.index',compact('data','set','category'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$abs =  Source_Eav_AttrbuteSet::get();
		$category = Source_Product_ProductCategory::where('parent_id',0)->get();
		$this->view('admin.product.create',compact('abs','category'));
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 *
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


	/**
	 * @param $pid
	 * @return mixed
	 * 查询分类
	 */
	public function getCategory( $pid )
	{
		return Source_Product_ProductCategory::where('parent_id',$pid)->get()->toJson();
	}

	/**
	 * 添加产品
	 */
	public function add()
	{
		$methodType = Request::method();
		//编辑页面
		if( $methodType == 'GET' )
		{
			return Redirect::to('admin/product/goods/create');
		}
		$setID = decode( trim(Input::get('setid')) );
		$categoryName = trim(Input::get('categoryName'));
		$categoryID = trim(Input::get('categoryID'));
		//供应商
		$supplier = Source_User_SupplierInfo::get();
		//线下门店
		$shop = Source_User_ShopInfo::get();
		$data = Source_Product_ProductEav::where('attbute_set_id',$setID)->with('productEavToEav')->get();
		$this->view('admin.product.add',compact('data','categoryName','categoryID','supplier','shop'));
	}

}
