<?php

/**
 * Created by PhpStorm.
 * User: wuosh
 * Date: 2016/12/7
 * Time: 21:36
 */
class Group
{
    /**
     * @return mixed
     * 获取所有等级信息
     */
    static function getGroup()
    {
        return Source_User_UserInfoGroup::orderBy('beg_ponits', 'asc');
    }

    /**
     * @param $data
     * @return bool
     * 验证新添加等级信息是否OK
     */
    static function validatorGroup($data)
    {
        $rules = [];
        $message = [];
        $validator = Validator::make($data, $rules, $message);
        if ($validator->passes()) {
            return true;

        } else {
            return $validator;
        }
    }

    /**
     * @param $data
     * 添加等级信息
     */
    static function addGroup($data)
    {
        $res = Source_User_UserInfoGroup::create($data);
        return $res;

    }

    /**
     * @param $groupId
     * @return mixed
     * 获取对应id的分组信息
     */
    static function getGroupById($groupId)
    {
        return Source_User_UserInfoGroup::find($groupId);
    }

    /**
     * @param $groupId
     * @param $data
     * 更新对应id的分组信息
     */
    static function updateById($groupId, $data)
    {
        $group = Source_User_UserInfoGroup::find($groupId);
        $group->name = $data['name'];
        $group->beg_ponits = $data['beg_ponits'];
        $group->end_ponits = $data['end_ponits'];
        $res = $group->save();
        return $res;

    }

    static function deleteById($groupId){
        $group = Source_User_UserInfoGroup::find($groupId);
        $res = $group->delete();
        return $res;

    }
}
