<?php

// use app\controllers\user\user\LeonEvent;

class CartMemberController extends CommonController
{

    private $carts;

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

    /**
     * CartMemberController constructor.
     */
    function __construct()
    {

        $this->carts = Source_Cart_CartInfo::orderBy('created_at');
    }

    /**
     *购物车首页
     */
    function index()
    {

        //分页
        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $set['setpage'] = $setPage;
        $data = $this->carts->paginate($setPage);
        $carts = $this->carts->get();

        return $this->view('member.cart.index', compact('carts', 'data', 'set'));
    }


    function checkDiscount()
    {

        //获取对应 quoteSn数组
        $quoteSnArr = Input::get('quoteSns');

        //对应总的重量
        $weight = 0;
        //对应总的价格
        $money = 0;
        //对应对应总的折扣价格  减少的价格
        $discount = 0;


    }


    /**
     * @param $weight
     * 重量满减确认
     */
    private function weightCheckDiscount($weight)
    {
        $allrule = Source_Salerule_FavoutableRule::all();
    }

    /**
     * @param $money
     * 总价满价确认
     */
    private function priceCheckDiscount($money){

    }

    /**
     * @param $couponCode 折扣郑号码
     * 折扣卷的确认
     */
    public function couponCheck($couponCode){

    }


}
