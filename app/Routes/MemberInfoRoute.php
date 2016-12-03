<?php

//用户管理模块路由
//用户中心欢迎页
//$router->get('/member/welc', 'MemberInfoController@welc');

Route::group(array('prefix' => 'member'), function ($router) {


//用户管理用户列表
    $router->get('/index', 'MemberInfoController@index');

//用户中心欢迎页
    $router->get('/welc/{user_id}', 'MemberInfoController@welc');

//用户中心 会员信息
    $router->get('/info/{user_id}', 'MemberInfoController@info');

//用户中心 收货地址
    $router->get('/address/{user_id}', 'MemberInfoController@address');

//用户中心 订单
    $router->get('/orders/{user_id}', 'MemberInfoController@orders');

//用户中心 购物车
    $router->get('/cart/{user_id}', 'MemberInfoController@cart');

//用户中心 收藏
    $router->get('/collect/{user_id}', 'MemberInfoController@collect');

//用户中心 评价
    $router->get('/comment/{user_id}', 'MemberInfoController@comment');

//用户中心 投诉
    $router->get('/feedback/{user_id}', 'MemberInfoController@feedback');


});




