<?php

class AddressMemberController extends CommonController {

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
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
        $addrInfo = User::getAllAddrByUser($this->user_id)
            ->leftjoin('province','userinfo_address.province','=','province.id')
            ->leftjoin('city','userinfo_address.city','=','city.id')
            ->leftjoin('area','userinfo_address.district','=','area.id')
            ->select('province.province as province_name','city.city as city_name','area.area as area_name','userinfo_address.*')
            ->get();

		return $this->view('member.config_address',compact('addrInfo'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{

	    dd(Input::all());
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{


        $addrEdit = Address::getAddress($id);

        $addrInfo = User::getAllAddrByUser($this->user_id)
            ->leftjoin('province','userinfo_address.province','=','province.id')
            ->leftjoin('city','userinfo_address.city','=','city.id')
            ->leftjoin('area','userinfo_address.district','=','area.id')
            ->select('province.province as province_name','city.city as city_name','area.area as area_name','userinfo_address.*')
            ->get();


        return $this->view('member.config_address_edit',compact('addrInfo','addrEdit'));




	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
        $input = trimValue( Input::except('_token','_method','quiz1','quiz2','quiz3'));
        $validator = Address::validatorAddress( $input );
        if( $validator === true )
        {

            $res = Address::update($id,$input);

            if ( $res )
            {
                //修改成功
                return Redirect::to('member/config/address')->with('msg','修改成功');

            }else
            {
                //修改失败
                return Redirect::back()->with('msg','修改失败');
            }

        }else
        {
            return Redirect::back()->withErrors($validator);
        }
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
