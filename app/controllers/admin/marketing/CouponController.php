<?php

/**
 * Class CouponController
 * 优惠券控制器
 */
class CouponController extends CommonController
{

    public function __construct()
    {
        parent::__construct();
    }


    /**
     *  产品分类列表
     */
    public function  index()
    {
        $sql = Source_Salerule_FavoutableRule::where('conditions_type',2)->orderBy('id','desc');
        $name = trim(Input::get('name'));
        if( $name )
        {
            $sql->where('name','like','%'.$name.'%');
        }
        $from_date = trim(Input::get('from_date'));
        if( $from_date )
        {
            $sql->where('from_date','<=',$from_date);
        }
        $to_date = trim(Input::get('to_date'));
        if( $to_date )
        {
            $sql->where('to_date','>=',$to_date);
        }
        $status = trim(Input::get('status'));
        if( $status == '1' )
        {
            $sql->where('status', 1 );

        }
        if( $status == '0' )
        {
            $sql->where('status', 0);
        }
        $setPage = Input::get('setpage')?Input::get('setpage'):self::$adminPage;
        $data = $sql->paginate($setPage);
        $set['name'] = $name;
        $set['from_date'] = $from_date;
        $set['to_date'] = $to_date;
        $set['status'] = $status;
        $set['setpage'] = $setPage;
        $this->view('admin.marketing.coupons.index',compact('data','set'));
    }


    /**
     * @return mixed
     * 添加页面
     */
    public function create()
    {
        $this->view('admin.marketing.coupons.create');
    }

    /**
     * @param
     * 添加
     */
    public function store()
    {
        $Input = trimValue( Input::all() );
        $validator = Marketing::validatorCoupon( $Input );
        if( $validator === true )
        {
            $res = Marketing::addCoupon( $Input );
            if ( $res )
            {
                //添加成功
                return Redirect::to('/admin/marketing/coupon')->with('msg','添加成功');

            }else
            {
                //添加失败
                return Redirect::back()->with('msg','添加失败');
            }

        }else
        {
            return Redirect::back()->withErrors($validator);
        }
    }


    /**
     *  @param $id
     *  @return mixed
     *  修改页面
     */
    public function edit( $id )
    {
        $id = decode( trim($id) );
        $data = Source_Salerule_FavoutableRule::findOrFail( $id );
        $this->view('admin.marketing.coupons.edit',compact('data'));
    }


    /**
     * @param
     * @param $id
     * 修改数据
     */
    public function update( $id )
    {
        $Input = trimValue( Input::all() );
        $id = decode( trim($id) );
        $validator = Marketing::validatorCoupon( $Input );
        if( $validator === true )
        {
            $res = Marketing::editCoupon( $Input,$id );
            if ( $res )
            {
                //添加成功
                return Redirect::to('/admin/marketing/coupon')->with('msg','修改成功');

            }else
            {
                //添加失败
                return Redirect::back()->with('msg','添加失败');
            }

        }else
        {
            return Redirect::back()->withErrors($validator);
        }
    }


    /**
     * @param $id
     * @return string
     * 删除
     */
    public function destroy( $id )
    {
        $id = decode( trim($id) );
        $res = Source_Salerule_FavoutableRule::find( $id );
        if( $res )
        {
            $Count = Source_Order_OrtderFavoutable::where('pmt_id',$res->id)->count();
            if( $Count )
            {
                $obj = new stdClass();
                $obj->ststus = 1;
                $obj->msg = '优惠规则已经使用不可删除';
                return json_encode($obj);

            }else
            {
                if( $res->delete() )
                {
                    $obj = new stdClass();
                    $obj->ststus = 0;
                    $obj->msg = '删除成功';
                    return json_encode($obj);

                }else
                {
                    $obj = new stdClass();
                    $obj->ststus = 1;
                    $obj->msg = '删除失败';
                    return json_encode($obj);
                }
            }

        }else
        {
            $obj = new stdClass();
            $obj->ststus = 1;
            $obj->msg = '未查询到';
            return json_encode($obj);
        }
    }


    /**
     * 类型切换
     * @param $type
     * @return mixed
     */
    public function show( $type )
    {
        switch ( $type )
        {
            case "subtotal":
                return View::make('admin.marketing.coupons.condition.subtotal');
                break;
            case "number":
                return View::make('admin.marketing.coupons.condition.number');
                break;
            case "weight":
                return View::make('admin.marketing.coupons.condition.weight');
                break;
            case "payment":
                return View::make('admin.marketing.coupons.condition.payment');
                break;
            case "goods":
                return View::make('admin.marketing.coupons.condition.goods');
                break;
            case "classification":
                return View::make('admin.marketing.coupons.condition.classification');
                break;
            case "goodslist":
                $id = Input::get('id');
                $data = Source_Product_ProductFlat::where('category_id',$id)->paginate(2);
                return View::make('admin.marketing.coupons.condition.goodslist',compact('data'));
                break;
        }
    }

}