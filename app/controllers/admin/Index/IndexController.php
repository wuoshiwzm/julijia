<?php

/**
 * Class ProductController
 * 后台工作台控制器
 */
class IndexController extends CommonController
{

    protected $layout = 'layouts.admin_main';

    public function __construct()
    {
        parent::__construct();
    }

    protected function setupLayout()
    {
        if ( ! is_null($this->layout))
        {
            $this->layout = View::make($this->layout);
        }
    }

    /**
     *  首页 base
     */
    public function  getIndex()
    {
        $user_admin = Session::get("admin_user");
        if(empty($user_admin)){
            return Redirect::to("admin/login");
        }
        //如果是超级管理员身份
       if($user_admin["account"] == "admin") {
            $menus = Privilege::getALLMenu();
        }else {
            $group_id = $user_admin["group_id"];
            $menus = Privilege::getMenuByGroupId($group_id);
        }
        //临时管理员权限
        return View::make('layouts.admin_index',compact("menus"));
    }

    /**
     * @return mixed
     * 右侧主页
     */
    public function getMain()
    {

        //top计数
        if(!Cache::has('admin_home')){
            $time =  TimeTools::getTime();
            $list  =   Source_Order_OrderInfo::whereRaw("date_format(created_at,'%Y-%m-%d')=?",array($time))->get();
            $i=0; $j =0;$k=0; $l=0; $p =0;$u=0;$mount=0;
            foreach ($list as $val){
                //代付款
                if($val->status ==1 ){
                    $i++;
                }
                if($val->status ==4){ //待发货
                    $mount += $val->pay_amount;
                    $j++;
                }
                if($val->status ==5 ||$val->status ==10 ){ //已发货
                    $k++;
                }
                if($val->status ==9 ){ //t退款
                    $p++;
                }
                if($val->status ==7 ){ //完成
                    $u++;
                }
                $rerieve =  $val->has('review')->count();
                if($rerieve){
                    $l++;
                }
            }
            //今日发布资讯
            $new =   Source_News_NewsArt::whereRaw("date_format(created_at,'%Y-%m-%d')=?",array($time))->count();
            $user = Source_User_UserInfo::whereRaw("date_format(created_at,'%Y-%m-%d')=?",array($time))->count();
            $log= Source_System_Log_VisitorsLog::whereRaw("date_format(created_at,'%Y-%m-%d')=?",array($time))->count();

            $index_date['daifukuan'] = $i;
            $index_date['daifahuo'] = $j;
            $index_date['fahuo'] = $k;
            $index_date['tuikuan'] = $p;
            $index_date['wancheng'] = $u;
            $index_date['pinglun'] = $l;
            $index_date['mount'] = $mount;
            $index_date['new'] = $new;
            $index_date['user'] = $user;
            $index_date['log'] = $log;

           \Cache::put('admin_home',$index_date,5 );
        }
          $res  =   \Cache::get('admin_home');
          return View::make('admin.index.index',compact('res'));
    }
}