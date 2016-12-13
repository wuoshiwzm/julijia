<?php
//用户中心欢迎页
$router->get('/', 'MemberController@index');


//我的退款
$router->get('/refund', 'RefundMemberController@index');
//提交退款
$router->get('/refund/apply_refund/{order_id}/{order_item_id}', 'RefundMemberController@applyRefund');
$router->any('/refund/create_refund', 'RefundMemberController@createRefund');







//商城会员模块个人设置

//账号设置 - 个人设置
$router->get('/config/index', 'ConfigMemberController@index');

//账号设置 - 收货地址
$router->resource('/config/address', 'AddressMemberController');
//账号设置 - 收货地址 - 默认地址
$router->get('/config/address/set_default/{id}', 'AddressMemberController@setDefault');

//账号设置 - 密码设置
$router->any('/config/pass', 'ConfigMemberController@changePass');

//账号设置 - 网站提醒
$router->get('/config/notice', 'ConfigMemberController@notice');






//商城会员模块用户中心


//我的投诉
$router->get('/feedback', 'FeedbackMemberController@index');

//我的评论
$router->get('/comment', 'CommentMemberController@index');

//我的足迹
$router->get('/history', 'HistoryMemberController@index');




//会员积分
$router->get('/rank', 'RankMemberController@index');

//我的收藏
$router->get('/collect', 'CollectMemberController@index');
$router->get('/collect/notshow', 'CollectMemberController@notShow');

//购物车
$router->any('/cart', 'CartController@index');

//用户订单
$router->get('/order/all', 'OrderMemberController@index');

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



//用户注册
Route::get('/register', 'UserController@register');

//用户
Route::any('/store', 'UserController@store');


//用户信息
Route::resource('/info', 'UserController@info');

//购物车
