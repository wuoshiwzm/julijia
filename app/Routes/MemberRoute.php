<?php
//商城会员模块用户中心

Route::any('/test', 'CartController@index');

//用户中心欢迎页
$router->get('', 'MemberController@index');


//用户订单
$router->get('/order', 'OrderMemberController@index');

//用户订单 等待付款
$router->get('/order/topay', 'OrderMemberController@toPay');

//用户订单 等待发货
$router->get('/order/toship', 'OrderMemberController@toShip');

//用户订单 等待收货
$router->get('/order/toreceive', 'OrderMemberController@toReceive');

//用户订单 等待评论
$router->get('/order/tocomment', 'OrderMemberController@toComment');




//用户中心用户信息
$router->get('/info', 'UserController@info');

//用户中心 收货地址
$router->resource('/pkadd', 'PkaddController');

//用户中心 购物车
//$router->resource('/cart', 'CartController');

//用户中心 收藏
$router->resource('/collect', 'CltController');


//用户注册
Route::get('/register', 'UserController@register');

//用户
Route::any('/store', 'UserController@store');


//用户信息
Route::resource('/info', 'UserController@info');

//购物车
//Route::get('test', 'CartController@index');
