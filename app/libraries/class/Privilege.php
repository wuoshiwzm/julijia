<?php

/**
 * Author:Tonychang
 * Date: 2017-01-02
 * Time: 10:37
 * DES:权限处理类
 */
class Privilege
{

    /**
     * 获取用户组拥有的动作
     * @param $group_id
     * @return array
     */
    public static  function getPrivilege($group_id)
    {
        
        $model = Source_suite_Privilege::leftJoin('navigation',"group_priv.navigation_id","=","navigation.navigation_id");
        $privileges = $model->where("group_priv.group_id",$group_id)
            ->get();
        $user_privilege = array();
        if (! empty($privileges)){
            foreach($privileges as $privilege) {
                if (! empty($privilege->link) ) {
                    //获取权限连接
                    $user_privilege[] = strtolower($privilege->link);
                }
            }
        }
        return $user_privilege;
    }

    /**
     * 获取用户组拥有菜单
     * @param $group_id
     * @return array
     */
    public static  function getMenuByGroupId($group_id)
    {
        $model = Source_suite_Privilege::leftJoin('navigation',"group_priv.navigation_id","=","navigation.navigation_id");
        $menus = $model->where("group_priv.group_id",$group_id)
            ->where("navigation.is_show",1)
            ->get();
        if (! empty($menus)){
            foreach($menus as $menu) {
                switch (strlen($menu->hid)) {
                    case 6: $nav_top[] = $menu; break;
                    case 11: $nav_two[] = $menu; break;
                    case 16: $nav_three[] = $menu; break;
                }
            }
        }
        $navigations['nav_top'] = $nav_top;
        $navigations['nav_two'] = $nav_two;
        $navigations['nav_three'] = $nav_three;
        return $navigations;
    }

    /**
     * 获取所有的菜单
     */
    public  static function getALLMenu()
    {
        $menus = Source_Navigation_Naviagtion::where("is_show",1)
            ->orderBy("hid","ASC")
            ->orderBy("sort","ASC")
            ->get();

        $nav_top = $nav_two = $nav_three = array();
        if (! empty($menus)){
            foreach($menus as $menu) {
                switch (strlen($menu->hid)) {
                    case 6: $nav_top[] = $menu; break;
                    case 11: $nav_two[] = $menu; break;
                    case 16: $nav_three[] = $menu; break;
                }
            }
        }

        $navigations['nav_top'] = $nav_top;
        $navigations['nav_two'] = $nav_two;
        $navigations['nav_three'] = $nav_three;
        return $navigations;
    }

    /**
     * 鉴权
     */
    public static function authentication()
    {
        /*从缓存中获取权限并鉴权*/
        $admin_user = Session::get("admin_user");
        //如果为超级用户
        if ( $admin_user->account== "admin"){
            return true;
        }
        $user_id  = $admin_user->user_id;
        $key = "privileges_".$user_id;
        $privileges = unserialize(MyRedis::get($key));
        //获取当前操作url
        $url = RouteAdvance::getCurrentRouteStaticPrefix();
        if (! empty($privileges)) {
            $flag = 0;
            foreach($privileges as $privilege) {
                if (strpos($privilege,$url) !== false) {
                    $flag = 1;
                    break;
                }
            }
            if ($flag == 0) {
                return false;
            }else {
                return true;
            }
        }else {
            return false;
        }

    }

}