<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class Source_User_UserInfo extends \Eloquent
{
    protected $table = 'userinfo';

    protected $primaryKey = 'id';
    // use SoftDeletingTrait;
    // protected $dates = ['deleted_at'];
    public $timestamps = true;
    protected $guarded = ['id'];

    /**
     * @return mixed
     */
    public function group()
    {
        return $this->belongsTo('Source_User_UserInfoGroup','group_id');
    }

    /**
     * @return mixed
     * 返回用户对应的购物车
     */
    public function cart()
    {
        return $this->hasOne('Source_Cart_CartInfo', 'user_id');
    }

    /**
     *返回用户对应的收藏
     */
    public function collect()
    {
        return $this->hasMany('Source_User_UserInfoCollect', 'user_id');
    }

    /**
     * @return mixed
     * 用户地址
     */
    public function address(){
        return $this->hasMany('Source_User_UserInfoAdd','user_id');
    }


    /**
     * @return mixed
     */
    public function comment(){
        return $this->hasMany('Source_User_UserInfoComment','user_id');
    }

    /**
     * @return mixed
     * 访问记录
     */
    public function visitor()
    {
        return $this->hasMany('Source_System_Log_VisitorsLog','user_id');
    }


    /**
     * @return mixed
     * 消息通知
     */
    public function userlog()
    {
        return $this->hasMany('Source_User_UserInfoLog','user_id');
    }


    /**
     * @return mixed
     */
    public function feedback()
    {
        return $this->hasMany('Source_Feedback_FeedbackInfo','user_id');
    }

    /**
     *
     */
    public function refund()
    {
        return $this->hasMany('Source_Order_OrderBack','user_id');
    }

    public function order(){
        return $this->hasMany('Source_Order_OrderInfo','user_id');
    }
}
