<?php
Route::group(array('domain' => 'shop.com'), function() {
    //后台
    Route::get('user','UserController@index');
    Route::get('user/login','UserController@login');
    Route::get('user/register','UserController@register');
    Route::any('user/store','UserController@store');
    Route::any('user/loginVerify','UserController@loginVerify');
    Route::group(array('prefix' => 'user'),function(){
      Route::resource('/info','UserController@info');

    });




    Route::group(array('prefix' => 'admin'),function(){
        //供应商管理
        Route::resource('/user/supplier','SupplierController');
        //产品属性基
        Route::get('/product/attribute_base_index','ProductEavController@attributeBaseIndex');
        Route::get('/product/attribute_base_create','ProductEavController@attributeBaseCreate');
        Route::post('/product/attribute_base_store','ProductEavController@attributeBaseStore');
        Route::any('/product/attribute_base_edit','ProductEavController@attributeBaseEdit');
        Route::post('/product/attribute_base_del','ProductEavController@attributeBaseDel');
        //属性
        Route::get('/product/attribute_index','ProductEavController@attributeIndex');
        Route::get('/product/attribute_create','ProductEavController@attributeCreate');
        Route::post('/product/attribute_store','ProductEavController@attributeStore');
        Route::any('/product/attribute_edit','ProductEavController@attributeEdit');
        Route::get('/product/attribute_del','ProductEavController@attributeDel');
        //属性集和属性挂靠关系
        Route::any('/product/abstoab','ProductEavController@absToAb');
        //产品分类管理
        Route::resource('/product/category','CategoryController');
        //品牌管理
        Route::resource('/product/brand','ProductBrandController');
        //添加产品
        Route::resource('/product/goods','ProductController');
    });

});
