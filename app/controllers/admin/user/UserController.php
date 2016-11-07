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
    // die("atest");
    return Redirect::back()->with('message','$errors');
    $input = Input::all();
    return Redirect::back()->with('msg','添加失败');

    // return back()->with('msg','该用户名已被占用！');
    $err=[];
    $res = User::checkName($input['name']);
    if(!$res){
      $err[]='该用户名已被占用！';
      // $err[] = ;
      // return Redirect::to('user/register')->with('msg','该用户名已被占用！');
    }

    $res = User::checkEmail($input['email']);
    if(!$res){
      $err[]='该email已被占用！';
    }

    $res = User::checkTel([$input['office_phone'],$input['mobile_phone'],$input['home_phone']]);
    if(!$res){
          $err[]='请至少填写一个电话！';
    }

    // dd($err);

    //check if the $input data is legal
    $res = User::validatorUser($input);
    // dd($err);
    // dd($res);
    // dd($res->toArray());
    $errors = array_merge($res->toArray(),$err);
    // dd(array_merge($res->toArray(),$err));
    if($res===true)
    {
      User::addUser($input);
    }
    else{
      return Redirect::back()->with('errors',$errors);
    }
  }



  function login(){
    return $this->view('admin.user.login');
  }

  function loginVerify(){
    $input = Input::except('_token');
    // dd(encode($input['password']));

    if(User::checkUser(Input::except('_token'))){
      // Session::set('user', 'test');
      return Redirect::to('user/info')->with('user','test');
      // Session::set('user')=$input['name'];
    }
      // return Redirect::back()->with('message','failed to login');
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
