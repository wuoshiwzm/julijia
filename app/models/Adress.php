<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/11
 * Time: 19:33
 */
class Address
{

    /**
     * @param $id
     * @return mixed
     * 通过id获取对应的地址信息
     */
    static function getAddress($id)
    {
        return Source_User_UserInfoAdd::find($id);
    }


    /**
     * @param $data
     * @return bool
     */
    static function validatorAddress($data)
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
     * @param $id 分类id
     * @param $input 更新地址信息
     */
    static function update($id, $input)
    {
        $res = Source_User_UserInfoAdd::where('id', $id)->update($input);
        return $res;
    }


}