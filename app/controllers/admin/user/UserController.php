<?php


class UserController extends CommonController{


  public function __construct()
	{
		parent::__construct();
	}

  //check if loged in, then Redirect to specific page
  function index(){
    return $this->view('admin.user.register');
    // echo "controller-index()";

  }




  function register(){


    $this->view('admin.user.register');

    // return $this->view('admin.user.register');
  }


  //add userinfo to database
  function store(){
    $input = Input::all();

    $err=[];
    $res = User::checkName($input['name']);
    if(!$res){
      $err[]='该用户名已被占用！';
    }

    $res = User::checkEmail($input['email']);
    if(!$res){
      $err[]='该email已被占用！';
    }

    $res = User::checkTel([$input['office_phone'],$input['mobile_phone'],$input['home_phone']]);
    if(!$res){
          $err[]='请至少填写一个电话！';
    }

    //check if the $input data is legal
    $res = User::validatorUser($input);
    $err = array_merge($res->all(),$err);


    if($res===true && $err!=[])
    {
      User::addUser($input);
    }
    else{
      return Redirect::back()->with('msg',$err);
    }
  }



  function login(){
    return $this->view('admin.user.login');
  }

  function loginVerify(){
    $input = Input::except('_token');

    if(User::checkUser(Input::except('_token'))){
      return Redirect::to('user/info')->with('msg','loginfinished');
    }
      return Redirect::back()->with('msg','failed to login');
  }

  function info(){
    // Session::set($user[], 'asdf');
    // Session::push('user', 'test');
    // Session::push('user', 'test1');
    // dd(Session::all());
    return $this->view('admin.user.info');
    echo "usercontroller - info";
  }



}
