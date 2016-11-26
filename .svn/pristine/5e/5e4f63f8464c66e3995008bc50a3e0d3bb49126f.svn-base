<?php




//用户中心欢迎页
$router->get('/welc','UserController@index');

//用户中心用户信息
// $router->get('/info','UserController@info');

//用户中心 收货地址
$router->resource('/pkadd','PkaddController');

//用户中心 购物车
$router->resource('/cart','CartController');

//用户中心 收藏
$router->resource('/collect','CltController');

//用户页
$router->get('','UserController@index');

//用户登录
Route::get('/login','UserController@login');

//用户注册
Route::get('/register','UserController@register');

//用户
Route::any('/store','UserController@store');

//用户登录验证
Route::any('/loginVerify','UserController@loginVerify');

//用户信息
Route::resource('/info','UserController@info');
