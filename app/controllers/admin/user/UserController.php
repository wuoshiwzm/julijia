<?php
// use app\controllers\admin\user\LeonEvent;

class UserController extends CommonController{




  public function __construct()
	{
		parent::__construct();
	}

  //check if loged in, then Redirect to specific page
  function index(){
    // dd(Session::get('cart'));
    return $this->view('admin.user.welc');
  }

  //test only
  function guest(){

    return $this->view('admin.cart.index');
    // Auth::logout();
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
      return Redirect::back()->with('msg',$err)->withInput();
    }
  }



  function login(){
    return $this->view('admin.user.login');
  }

  function loginVerify(){
    // dd(Input::all());

    if (Auth::attempt(array('name'=>Input::get('name'), 'password'=>Input::get('password')))){
      // die("ok");
    // dd(Session::all());
    // Auth::logout();
    $user = User::getUser(Input::get('name'));

    $user->update(array('last_time' => date('Y-m-d h:m:s')));
    return Redirect::to('user/welc');
    }
    return Redirect::back()->with('msg','failed to login')->withInput();
    // $input = Input::except('_token');
    //
    // if($id = User::checkUser(Input::except('_token'))){
    //   Session::push('userid', $id);
    //   return Redirect::to('user/info');
    // }
    //   return Redirect::back()->with('msg','failed to login')->withInput();
  }

  function quit(){
    Auth::logout();
  }

  function info(){
    $userId = Auth::user()->id;
    $userAddr = User::getAddrFromUser($userId)->first();

    $province = (User::getProv($userAddr->province)->first())?User::getProv($userAddr->province)->first()->province : '未填写';
    $city = (User::getCity($userAddr->city)->first())?User::getCity($userAddr->city)->first()->city : '无城市信息';
    $district = (User::getDist($userAddr->district)->first())?User::getDist($userAddr->district)->first()->area : '无无地区信息';

    $group = (User::getGroup(Auth::user()->group_id)->first())? User::getGroup(Auth::user()->group_id)->first()->name: '无分组信息';
    // dd($group);
    return $this->view('admin.user.info',compact('userAddr','province','city','district','group'));
  }



}
