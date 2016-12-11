<?php
//用户积分管理
class RefundMemberController extends CommonController
{
    private $user_id;
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

    function __construct()
    {
        if (!Session::has('member')) {
            return Redirect::to('member/login');
        }
        $userInfo = Session::get('member');
        $this->user_id = $userInfo->id;
    }

    /**
     * 我的退款
     *
     * @return Response
     */
    public function index()
    {
        //获取当前用户信息
        $userInfo = User::getUserinfoById($this->user_id);
        //当前对应的用户退款信息
        $memberRefundInfo = OrderBack::getRefundByUser($this->user_id);


        //获取所有会员积分信息
        $allGroup = Group::getGroup();

        //确认最接近的的一个用户等级
        //目前用户的总积分
        $userPoint = $userInfo->user_points;
        $nextGroup = $allGroup->where('beg_points','>',$userPoint)
            ->orderBy('beg_points','asc')->first();
        $nextGroupName = $nextGroup->name;
        $nextGroupGap = $nextGroup->beg_points - $userPoint;

        $allGroup = Group::getGroup()->get();

        //如果用户已经是最高等级




        return $this->view('member.refund');

    }



}
