<?php
Route::group(array('domain' => 'shop.com'), function() {



    //后台


    //get location info
    Route::any('getProvince','LocationController@getProvince');
    Route::any('getCity','LocationController@getCity');
    Route::any('getArea','LocationController@getArea');

    //user info
    Route::group(array('before' => 'auth','prefix' => 'user'), function()
    {
      Route::get('/guest', 'UserController@guest');

      //welcome page
      Route::get('/welc','UserController@index');
      //user info page
      Route::get('/info','UserController@info');
      Route::get('/info/edit','UserController@infoEdit');
      Route::post('/info/update','UserController@infoUpdate');


      //picking address page
      Route::resource('/pkadd','PkaddController');

      //cart page
      // there will be a rowid for each row in cart, and it will pass to you
      Route::any('/cart','CartController@index');


      Route::post('/cart/addItem','CartController@addItem');

      
      Route::post('/cart/updateItem/','CartController@addItem');
      Route::any('/cart/deleteItem/{rowid}','CartController@deleteItem');


      //collection page
      Route::resource('/collect','CltController');

    });


    Route::get('login','UserController@login');
    Route::get('user/register','UserController@register');
    Route::any('user/store','UserController@store');
    Route::any('user/loginVerify','UserController@loginVerify');


    Route::group(array('prefix' => 'admin'),function(){
        Route::get('/index','IndexController@index');
        //缓存管理
        Route::resource('/cache','CacheController');
        //供应商管理
        //供应商管理
        Route::resource('/user/supplier','SupplierController');

        //news category
        Route::resource('/newscate','NewsCateController');
        Route::post('/newscate/add','NewsCateController@add');

        //news article
        Route::resource('/newsart','NewsArticleController');


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
        //产品分类管理
        Route::resource('/product/category','CategoryController');
        //品牌管理
        Route::resource('/product/brand','ProductBrandController');
        //添加产品
        Route::resource('/product/goods','ProductController');
        Route::post('/product/goods/add','ProductController@add');
        //检索产品分类二级菜单
        Route::get('/product/getcategory/{pid}','ProductController@getCategory')->where( 'pid', '[0-9]+' );
        //门店管理
        Route::resource('/user/shop','ShopController');

        /**
         * 后台公共方法
         */
        //获取城市
        Route::get('/getcity/{parentID}','PublicController@getCity')->where( 'parentID', '[0-9]+' );
        //查看数据唯一性
        Route::post('/getonlyinfo','PublicController@getInfo');
        //修改排序
        Route::post('/editsort','PublicController@editSort');


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
    });

});