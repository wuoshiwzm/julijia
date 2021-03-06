<?php

/**
 * Class CacheController
 * 系统配置管理
 */
class SystemController extends CommonController
{

    public function __construct()
    {
        parent::__construct();
    }


    /**
     *   系统配置页面
     */
    public function  getConfig()
    {
        $this->view('admin.system.config');
    }

    /**
     *  保存数据
     */
    public function  postCofnig(){

           $data  = Input::except('type');;
           if( isset($data))
           {
               $model   =  new  System();
               $res = $model->SaveConfig($data);
           }
        if($res)
        {
            //清理缓存
            Event::fire('admin.operational.data',array(7));
            if(Input::get('type')=='tongxin'){
                return Redirect::to('/admin/system/tongxinconfig')->with('msg', '编辑成功');
            }
            return Redirect::to('/admin/system/config')->with('msg', '编辑成功');
        }else{
            return Redirect::to('/admin/system/config')->with('msg', '编辑失败');
        }
    }


    public function getTongxinconfig(){

        $this->view('admin.system.tongxunonfig');
    }

}


?>