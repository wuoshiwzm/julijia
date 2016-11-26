<?php
// use app\controllers\user\user\LeonEvent;

class UserController extends CommonController{




  public function __construct()
	{
		parent::__construct();
	}

  //check if loged in, then Redirect to specific page
  function index(){
    // dd(Session::get('cart'));
    return $this->view('user.welc');
  }

  //test only
  function guest(){

    return $this->view('user.cart.index');
    // Auth::logout();
  }


  function register(){
    $this->view('user.register');
    // return $this->view('user.register');
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
    return $this->view('user.login');
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
    if(!User::getAddrFromUser($userId)->first()){
      $province =  '未填写';
      $city = '无城市信息';
      $district ='无无地区信息';

      $group = (User::getGroup(Auth::user()->group_id)->first())? User::getGroup(Auth::user()->group_id)->first()->name: '无分组Group信息';
      return $this->view('user.info',compact('userAddr','province','city','district','group'));
    }
    $userAddr = User::getAddrFromUser($userId)->first();
    $province = (User::getProv($userAddr->province)->first())?User::getProv($userAddr->province)->first()->province : '未省份信息';
    $city = (User::getCity($userAddr->city)->first())?User::getCity($userAddr->city)->first()->city : '无城市信息';
    $district = (User::getDist($userAddr->district)->first())?User::getDist($userAddr->district)->first()->area : '无地区信息';

    $group = (User::getGroup(Auth::user()->group_id)->first())? User::getGroup(Auth::user()->group_id)->first()->name: '无分组Group信息';
    // dd($group);
    return $this->view('user.info',compact('userAddr','province','city','district','group'));
  }

  function infoEdit(){

    //infos maybe empty: $userAddr $province $city $address
    $userId = Auth::user()->id;
    $userAddr = User::getAddrFromUser($userId)->first();
    $group = (User::getGroup(Auth::user()->group_id)->first())? User::getGroup(Auth::user()->group_id)->first()->name: '无分组Group信息';
    // dd($userId);
    //address
    if(!$userAddr){

      return $this->view('user.info_edit',compact('group'));
    }
    $province = (User::getProv($userAddr->province)->first())?User::getProv($userAddr->province)->first()->province : '';
    $city = (User::getCity($userAddr->city)->first())?User::getCity($userAddr->city)->first()->city : '';
    $district = (User::getDist($userAddr->district)->first())?User::getDist($userAddr->district)->first()->area : '';

    return $this->view('user.info_edit',compact('userAddr','group','province','city','district'));
  }

  function infoUpdate(){
    dd(Input::all());
  }


}