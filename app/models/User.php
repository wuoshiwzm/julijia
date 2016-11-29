<?php

/**
 *  Class User
 *  用户业务模型
 */
class User
{

    /**
     * @param $username
     * @param $password
     * 用户登录
     */
    static function login($username,$password){
        $password = encode($password);
        $user = Source_User_UserInfo::where('name',$username)->first();
        if($user){
            if($password == $user->password){
                return true;
            }
            return false;
        }
        return false;

    }

    /**
     * @param $id
     * 返回当前登录的用户信息
     */
    static function userinfo($id){

    }

    static function validatorUser($data){
        $rules =  [
            'name'=>'required|regex:/\w/|unique:user_info,name',
            'password'=>'required|min:6|same:repassword',
            'repassword'=>'required|min:6',
            'email'=>'required|email',
            'office_phone'=>'min:7|max:20',
            'mobile_phone'=>'min:7|max:20',
            'home_phone'=>'min:|max:20',
            'sex'=>'required',
            'qq'=>'min:4|max:13',
            'wechat'=>'regex:/\w/',
        ];
        $message = [

        ];
        $validator = Validator::make( $data, $rules, $message );
        if( $validator->passes() )
        {
          return true;

        }else
        {
          return $validator->messages();
        }
    }


    //check if the name is occupied
    static function checkName($name){
      $res = Source_User_UserInfo::where('name',$name)->count();
      return $res? true:false;
    }

    /**
     * @param $email
     * @return bool
     * check if the email is occupied
     */
    static function checkEmail($email){
      $res = Source_User_UserInfo::where('email',$email)->get()->toArray();
      return $res? true:false;
    }


    /**
     * @param $arr
     * @return bool
     * check if the tel is filled at least one
     */
    static function checkTel($arr){
      $res='';
      foreach($arr as $k){
        $res.=$k;
      }
      return $res?true:false;

    }

    //add user to database
    static function addUser($data){

        $info['name'] = $data['name'];
        $info['password'] = encode($data['password']);
        $info['email'] = $data['email'];

        $info['office_phone'] = $data['office_phone'];
        $info['mobile_phone'] = $data['mobile_phone'];
        $info['home_phone'] = $data['home_phone'];
        $info['sex'] = $data['sex'];
        $info['qq'] = $data['qq'];
        $info['wechat'] = $data['wechat'];


        return Source_User_UserInfo::create( $info );
    }

    static function checkUser($data){
        $name = $data['name'];
        $password= encode($data['password']);
        return  Source_User_UserInfo::where('name',$name)->where('password',$password)->first()? true : false;

    }

    static function getUserByName($username){
      return Source_User_UserInfo::where('name',$username);
    }

    /**
     * @param $data
     * @return mixed
     * 服务商用户验证
     */
    static function validatorSupplier( $data )
    {
        $rules =  [];
        $message = [];
        $validator = Validator::make( $data, $rules, $message );
        if( $validator->passes() )
        {
            return true;

        }else
        {
            return $validator;
        }
    }

    /**
     * @param $data
     * @return bool
     * 验证门店信息
     */
    static function validatorShop( $data )
    {
        $rules =  [];
        $message = [];
        $validator = Validator::make( $data, $rules, $message );
        if( $validator->passes() )
        {
            return true;

        }else
        {
            return $validator;
        }
    }

    /**
     * @param $data
     * 添加服务商用户
     */
    static function addSupplier( $data )
    {
        return Source_User_SupplierInfo::create( $data );
    }

    /**
     * @param $data
     * @param $id
     * 修改数据
     */
    static  function editSupplier( $data, $id )
    {
        $res = Source_User_SupplierInfo::find( $id );
        if( $res )
        {
            $res->status = $data;
            if( $res->save() )
            {
                return true;
            }else
            {
                return false;
            }

        }else
        {
            return false;
        }
    }

    /**
     * @param $id 用户id
     * @return mixed
     * 返回用户地址
     */
    static function getAddrFromUser($id){
      return Source_User_UserInfoAdd::where('user_id',$id);
    }

    /**
     * @param $provId
     * @return mixed
     * 返回省份
     */
    static function getProv($provId){
      return Source_Area_Province::where('id',$provId);
    }

    /**
     * @param $cityId
     * @return mixed
     * 返回城市
     */
    static function getCity($cityId){
      return Source_Area_City::where('id',$cityId);
    }

    /**
     * @param $distId
     * @return mixed
     * 返回地区
     */
    static function getDist($distId){
      return Source_Area_Area::where('id',$distId);
    }

    /**
     * @param $groupId
     * @return mixed
     * 返回用户组
     */
    static function getGroup($groupId){
      return Source_User_UserInfoGroup::where('id',$groupId);
    }


    static function calcPoint($userId){

    }
}
