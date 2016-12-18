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
     *
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


}
