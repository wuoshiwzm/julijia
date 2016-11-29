<?php

// use app\controllers\user\user\LeonEvent;

class UserController extends CommonController
{

    protected $layout = 'layouts.member';


    protected function setupLayout()
    {
        if (!is_null($this->layout)) {
            $this->layout = View::make($this->layout);
        }
    }

    public function view($path, $data = [])
    {
        $this->layout->content = View::make($path, $data);
    }


    public function __construct()
    {
        parent::__construct();
    }

    //check if loged in, then Redirect to specific page
    function index()
    {
        // dd(Session::get('cart'));
        return $this->view('user.welc');
    }

    //test only
    function guest()
    {

        return $this->view('user.cart.index');
        // Auth::logout();
    }

    /**
     * 注册
     */
    function register()
    {
        $this->view('user.register');
    }


    /**
     * @return mixed
     * 判断注册成功 存储信息
     */
    function store()
    {
        $input = Input::all();

        $err = [];
        $res = User::checkName($input['name']);
        if (!$res) {
            $err[] = '该用户名已被占用！';
        }

        $res = User::checkEmail($input['email']);
        if (!$res) {
            $err[] = '该email已被占用！';
        }

        $res = User::checkTel([$input['office_phone'], $input['mobile_phone'], $input['home_phone']]);
        if (!$res) {
            $err[] = '请至少填写一个电话！';
        }

        //check if the $input data is legal
        $res = User::validatorUser($input);
        $err = array_merge($res->all(), $err);


        if ($res === true && $err != []) {
            User::addUser($input);
        } else {
            return Redirect::back()->with('msg', $err)->withInput();
        }
    }


    function login()
    {
        if (isset(Session::get('user')->id)) {
            return Redirect::to('user/welc');
        }
        return $this->view('user.login');
    }

    /**
     * @return mixed
     * 判断登录
     */
    function loginVerify()
    {


        $username = Input::get('name');
        $password = Input::get('password');
        $res = User::login($username, $password);

        if ($res) {

            //更新上次登录时间
            $user = User::getUserByName(Input::get('name'))->first();

            $user->update(array('last_time' => date('Y-m-d h:m:s')));


            // 存入session
            Session::put('user', $user);
            return Redirect::to('user/welc');
        }
        return Redirect::back()->with('msg', 'failed to login')->withInput();

    }

    function quit()
    {
        User::logout();
    }

    /**
     * 会员信息页
     */
    function info()
    {
        $userId = Session::get('user')->id;
        $user = Session::get('user');

        if (!User::getAddrFromUser($userId)->first()) {
            $province = '未填写';
            $city = '无城市信息';
            $district = '无无地区信息';

            //$group_id : 分组ID
            $group_id = $user->group_id;
            $group = (User::getGroup($group_id)->first()) ?
                User::getGroup($group_id)->first()->name : '无分组Group信息';
            return $this->view('user.info', compact('userAddr', 'province', 'city', 'district', 'group'));
        }

        $userAddr = User::getAddrFromUser($userId)->first();
        $province = (User::getProv($userAddr->province)->first()) ? User::getProv($userAddr->province)->first()->province : '未省份信息';
        $city = (User::getCity($userAddr->city)->first()) ? User::getCity($userAddr->city)->first()->city : '无城市信息';
        $district = (User::getDist($userAddr->district)->first()) ? User::getDist($userAddr->district)->first()->area : '无地区信息';

        $group = (User::getGroup(Auth::user()->group_id)->first()) ? User::getGroup(Auth::user()->group_id)->first()->name : '无分组Group信息';
        // dd($group);
        return $this->view('user.info', compact('userAddr', 'province', 'city', 'district', 'group'));
    }

    function infoEdit()
    {

        //infos maybe empty: $userAddr $province $city $address
        $userId = Auth::user()->id;
        $userAddr = User::getAddrFromUser($userId)->first();
        $group = (User::getGroup(Auth::user()->group_id)->first()) ? User::getGroup(Auth::user()->group_id)->first()->name : '无分组Group信息';
        // dd($userId);
        //address
        if (!$userAddr) {

            return $this->view('user.info_edit', compact('group'));
        }
        $province = (User::getProv($userAddr->province)->first()) ? User::getProv($userAddr->province)->first()->province : '';
        $city = (User::getCity($userAddr->city)->first()) ? User::getCity($userAddr->city)->first()->city : '';
        $district = (User::getDist($userAddr->district)->first()) ? User::getDist($userAddr->district)->first()->area : '';

        return $this->view('user.info_edit', compact('userAddr', 'group', 'province', 'city', 'district'));
    }

    function infoUpdate()
    {
        dd(Input::all());
    }


}
