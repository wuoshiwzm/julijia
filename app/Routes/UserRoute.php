<?php
$router->get('test/demo',function(){
	return '呵呵';
});

//新闻分类
Route::resource('/newscate','NewsCateController');

//新闻文章
Route::resource('/newsart','NewsArticleController');