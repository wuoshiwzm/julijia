<?php

class Source_User_UserInfo extends \Eloquent{
  protected $table = 'userinfo';

  protected $primaryKey = 'id';
  // use SoftDeletingTrait;
  // protected $dates = ['deleted_at'];
  public $timestamps = true;
  protected $guarded = ['id'];
}
