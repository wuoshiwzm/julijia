<?php

// use app\controllers\user\user\LeonEvent;

class MemberController extends CommonController
{

    protected $layout = 'layouts.member.index';


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

    /**
     * 欢迎页
     */
    function index()
    {
        return $this->view('member.cart.index');
    }

     /**
     * 注册
     */
    function register()
    {
        $this->view('member.register');
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

        if (isset(Session::get('member')->id)) {
            return Redirect::to('member');
        }
        return $this->view('member.login');
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
            Session::put('member', $user);
//            dd(Session::get('member')->id);
            return Redirect::to('member');
        }
        return Redirect::back()->with('msg', 'failed to login')->withInput();

    }

    function quit()
    {
        User::logout();
    }


}
