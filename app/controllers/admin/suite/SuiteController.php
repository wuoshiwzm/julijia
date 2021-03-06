<?php

/**
 * Author:Tonychang
 * Date: 2016-12-27
 * Time: 17:37
 * DES:用户组控制器
 */
class SuiteController extends  CommonController
{
    /**
     * 用户组首页
     */
    public function getIndex()
    {
        //每页显示个数
        $setPage = (int)Input::get("setpage",self::$adminPage);
        $keyword = trim(Input::get("keyword"));
        $set['keyword'] = $keyword;
        $set['setpage'] = $setPage;
        $groups = Suite::getSuiteByWhere($keyword,$setPage);
        $group_num = Suite::getCount();
        $this->view("admin.suite.index",compact("groups","set","group_num"));
    }

    /**
     * 添加页面
     */
    public function getAdd()
    {
        $navigations = Navigation::getNavigationAll();
        if (! empty($navigations)) {
            foreach($navigations as $navigation)
            {
                if ($navigation->parent_id == 0 ) {
                    $parent_id = "#";
                }else {
                    $parent_id = $navigation->parent_id;
                }

                $li = array(
                    "id" => $navigation->navigation_id,
                    "parent" => $parent_id,
                    "text" => $navigation->title,
                    "state" => array(
                        "opened" =>true,
                    ),
                );
                $data[] = $li;
            }
        }
        $data = json_encode($data);
        $this->view("admin.suite.add",compact('data'));
    }

    /**
     * 添加
     */
    public function postSave()
    {
        $data = Input::all();
        $res = Suite::addSuite($data);
        if($res["status"] == 1) {
            return Redirect::to('/admin/suite')->with('msg','添加成功');
        }else {
            return Redirect::back()->with('msg',$res['msg']);
        }

    }

    /**
     * 编辑保存
     */
    public function postUpdate()
    {
        $data = Input::all();
        $res = Suite::updateSuite($data);;

        if($res["status"] == 1) {
            return Redirect::to('/admin/suite')->with('msg','编辑成功');
        }else {
            return Redirect::back()->with('msg',$res['msg']);
        }

    }

    /**
     * 编辑页面
     */
    public function getEdit()
    {
        //获取所有权限
        $navigations = Navigation::getNavigationAll();
        //分配数据
        $group_id = (int)Input::get("group_id");
        //获取改组中的权限
        $group_priv = Suite::getNavigationByGroupId($group_id);
        $data = array();
        if (! empty($navigations)) {
            foreach($navigations as $navigation)
            {
                if ($navigation->parent_id == 0 ) {
                    $parent_id = "#";
                }else {
                    $parent_id = $navigation->parent_id;
                }

                $li = array(
                    "id" => $navigation->navigation_id,
                    "parent" => $parent_id,
                    "text" => $navigation->title,
                    "state" => array(
                        "opened" =>true,
                    ),
                );
                //只对第三层级菜单做选中的判断
                if (strlen($navigation->hid) == 16 && in_array($navigation->navigation_id,$group_priv)) {
                    $li["state"]["selected"] = true;
                }

                $data[] = $li;
            }
        }
        $group = Source_User_Suite::find($group_id);
        $data = json_encode($data);
        $this->view("admin.suite.edit",compact("group","data"));
    }

    /**
     * 删除用户角色
     */
    public function  postDelete(){

        $res =   Source_User_AdminUser::where('group_id',decode(Input::get('group_id')))->count();

        $result = array(
            'status' => 0, //0：有误，1：成功
        );
        if($res==0){
            $model =  Source_User_Suite::find(decode(Input::get('group_id')));
            if( $model->delete()){
               $result['status'] =1;
            }
        }else{
              $result['status'] =0;
        }
        return json_encode($result);

    }

}