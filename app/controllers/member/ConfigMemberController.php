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





        return $this->view('member.config');

    }



}
