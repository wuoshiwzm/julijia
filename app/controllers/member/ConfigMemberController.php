<?php
//用户积分管理
class ConfigMemberController extends CommonController
{
    private $user_id;
    protected $layout = 'layouts.member.config';


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

    function __construct()
    {
        if (!Session::has('member')) {
            return Redirect::to('member/login');
        }
        $userInfo = Session::get('member');
        $this->user_id = $userInfo->id;
    }

    /**
     * 个人设置
     *
     * @return Response
     */
    public function index()
    {
        //获取当前用户信息
        $userInfo = User::getUserinfoById($this->user_id);
        return $this->view('member.config',compact('userInfo'));

    }

    /**
     * 更改密码
     */
    public function changePass()
    {
        // 提交数据
        if(Input::all()){

            $passOld = encode(Input::get('pass_origin'));//输入的原始密码
            $passNew = encode(Input::get('pass_new'));//新密码
            $passConfirm = encode(Input::get('pass_double'));//确认密码

            $passNow = Session::get('member')->password;//当前的密码



            //原始密码输入正常
            if($passOld != $passNow)
                return Redirect::back()->with('msg','原始密码错误');

            //新密码格式正确
            if($passNew != $passConfirm)
                return Redirect::back()->with('msg','密码输入错误');

            //更新密码
            $res = User::changePass($this->user_id,$passNew);
            if(!$res)
                return Redirect::back()->with('msg','更新失败');

            return Redirect::to('member/config/index');

        }
        return $this->view('member.config_pass');
    }

    /**
     * 网站提醒
     */
    public function notice()
    {
        return $this->view('member.config_notice');
    }



}
