<?php

/**
 *  首页控制器
 */
class HomeController extends \BaseController
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     *  首页
     */
    public function GetIndex()
    {
        //banner广告
        $banner = Home::getIndexBanner( 'banner', self::$cache, self::$time );
        //限时抢购
        $flashSale = Home::getFlashSale();
        //推荐
        $recommend = Home::getRecommendGoods( self::$cache );
        //层集数据
        $floor = Home::getFloorGoods( self::$cache );
        return $this->view('frontend.index.index',compact( 'banner','flashSale','recommend','floor' ));
    }


    /**
     * 判断是列表页还是详情页
     */
    public function ListOrDetails( $name  )
    {
        $name = trim( $name );
        if( is_numeric( $name ) )
        {
            //详情
            return $this->GetDetails( $name );

        }else
        {
            //列表
            return $this->GetList( $name );
        }

    }

    /**
     * @param $name
     * 列表页
     */
    public function GetList( $name )
    {
        //cache::tags('goods','category','screen')->flush();
        //分类信息
        $categoryInfo = Home::getCategoryNameByID( $name, self::$cache );
        //分类信息id
        $categoryId = $categoryInfo['id'];
        //分类信息名称
        $categoryName = $categoryInfo['name'];
        //分类信息等级
        $categoryLeavel = $categoryInfo['leavel'];
        //检索品牌
        $brand = Home::getScreenBrand( self::$cache, $categoryId );
        //检索列表
        if( $categoryLeavel == 3 )
        {
            $screen = Home::getScreenList( self::$cache, $categoryId );
        }else
        {
            $screen = false;
        }
        //获取参数
        $parameter = Request::getQueryString();
        $selected = Home::getSelected( $parameter, self::$cache );
        //列表数据
        $data = Home::getGoodsList( self::$cache, $categoryId, $parameter );
        return $this->view('frontend.list.index',compact( 'data','categoryName','brand','name','categoryLeavel','screen','selected' ));
    }

    /**
     * @param $id
     * 详情页
     */
    public function GetDetails( $id )
    {
        //dd( encode(1481076673,1481021427,1481012598,1481076673,1481076673,1481021427,1481012598) );
        //cache::tags('goods','comment','attrbute')->flush();
        //分页类型和数据
        $type = Input::get('type');
        if( $type )
        {
            //提供评论查询
            $id = decode( $id );
            $data = Home::getGoodsComment( self::$cache, $id, $type );
            return View::make('frontend.details.commentlist',array('commentData'=>$data,'page'=>$data->getTotal()));

        }else
        {
            //详细信息
            $goods = Home::getGoodsDetails( self::$cache, $id );
            $data = $goods['data'];
            //可配置信息
            $attribute = $goods['attribute'];
            //图片信息
            $carousel = Home::getGoodsImg( self::$cache, $id );
            //配置信息
            $configInfo = Home::getGoodsConfigInfo( self::$cache, $id, $data );
            //评论数据
            //全部评论
            $comment['all'] = Home::getGoodsComment( self::$cache, $id, 1 );
            //好评
            $comment['good'] = Home::getGoodsComment( self::$cache, $id, 2 );
            //中评
            $comment['in'] = Home::getGoodsComment( self::$cache, $id, 3 );
            //差评
            $comment['difference'] = Home::getGoodsComment( self::$cache, $id, 4 );
            return $this->view('frontend.details.index',compact( 'data','carousel','configInfo','attribute','comment'));
        }

    }

    public function  register()
    {
        return $this->view('member.register');
    }

}