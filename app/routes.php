<?php
Route::group(array('domain' => 'shop.com'), function() {


    //后台

    //用户登录
    Route::get('user/login','UserController@login');
    //用户登录验证
    Route::any('user/loginVerify','UserController@loginVerify');

    //会员后台
    Route::group(array('prefix' => 'user','before'=>'member'),function( $router ){
      //引入路由文件
      require(__DIR__ . '/Routes/MemberRoute.php');
    });






    Route::group(array('prefix' => 'admin'),function( $router ){

        //引入路由文件
        require(__DIR__ . '/Routes/UserRoute.php');


        Route::controller('index','IndexController');
        //缓存管理
        Route::resource('/cache','CacheController');
        //供应商管理
        Route::resource('/user/supplier','SupplierController');
        //产品属性基
        Route::get('/product/attribute_base_index','ProductEavController@attributeBaseIndex');
        Route::get('/product/attribute_data','ProductEavController@attributeGetData');
        Route::get('/product/attribute_customerdata','ProductEavController@attributeGetCusonterData');
        Route::get('/product/attribute_base_create','ProductEavController@attributeBaseCreate');
        Route::post('/product/attribute_base_store','ProductEavController@attributeBaseStore');
        Route::any('/product/attribute_base_edit','ProductEavController@attributeBaseEdit');
        Route::post('/product/attribute_base_del','ProductEavController@attributeBaseDel');
        //属性
        Route::get('/product/attribute_index','ProductEavController@attributeIndex');
        Route::get('/product/attribute_create','ProductEavController@attributeCreate');
        Route::post('/product/attribute_store','ProductEavController@attributeStore');
        Route::any('/product/attribute_edit','ProductEavController@attributeEdit');
        Route::post('/product/attribute_del','ProductEavController@attributeDel');
        //属性集和属性挂靠关系
        Route::any('/product/abstoab','ProductEavController@absToAb');
        Route::any('/producteav/abstoab/save','ProductEavController@absToAbSave');
        //产品分类管理
        Route::resource('/product/category','CategoryController');
        //品牌管理
        Route::resource('/product/brand','ProductBrandController');

        //添加产品
        Route::resource('/product/goods','ProductController');
        Route::post('/product/goods/add','ProductController@add');
        Route::post('/product/goods/status','ProductController@status');
        Route::post('/product/goods/statusall','ProductController@statusAll');
        //添加产品图片页面
        Route::get('/product/goodsimg/{id}','ProductImgController@create');
        Route::post('/product/goodsimg/store','ProductImgController@store');
        //检索产品分类二级菜单
        Route::get('/product/getcategory/{pid}','ProductController@getCategory')->where( 'pid', '[0-9]+' );
        //门店管理
        Route::resource('/user/shop','ShopController');
        //满减满送
        Route::resource('/marketing/fullcut','FullCutController');
        //优惠券
        Route::resource('/marketing/coupon','CouponController');
        /**
         * 后台公共方法
         */
        //获取城市
        Route::get('/getcity/{parentID}','PublicController@getCity')->where( 'parentID', '[0-9]+' );
        //查看数据唯一性
        Route::post('/getonlyinfo','PublicController@getInfo');
        //修改排序
        Route::post('/editsort','PublicController@editSort');
        //图片上传模板调用
        Route::get('/get/imgtemplet/{index}','PublicController@getImgTemplet');



        //订单模块
        Route::controller('order', 'OrderController');
        //退款控制器
        Route::controller('refund','RefundController');
        //评论控制器
        Route::controller('comment','CommentController');
        //投诉控制器
        Route::controller('complain','ComplainController');
        //发货控制器
        Route::controller('deliver','DeliverController');


        //系统管理配置器
        //Route::controller('system','SystemController');
        //优惠规则控制器
        //Route::controller('salerule','SaleruleController');
        //查询统计
        //Route::controller('report','ReportController');
    });

});
