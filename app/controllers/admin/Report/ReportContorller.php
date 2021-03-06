<?php

/**
 * Author:dingefng0509@vip.qq.com
 * Date: 2016-11-06
 * Time: 21:24
 * DES:查询统计控制器
 */
class  ReportController extends CommonController
{
    /**
     *  订单查询统计
     */
    public function getOrder()
    {
        $setPage = Input::get('setpage')?Input::get('setpage'):self::$adminPage;
        $data =  Input::get();
        $sql =   $this->GetOrderCollection($data);
        $list  =$sql->paginate($setPage);
        $count  =$sql->count();
        $set['setpage'] = $setPage;
        $set['beg_time'] = isset($data['beg_time'])?$data['beg_time']:'';
        $set['end_time'] = isset($data['end_time'])?$data['end_time']:'';
        $set['order_sn'] = isset($data['order_sn'])?$data['order_sn']:'';
        $set['status'] = isset($data['status'])?$data['status']:'';
        $this->view("admin.report.order",compact('list','set','count'));
    }


    /**
     *
     *  导出订单查询结果
     */
    public function getExportorder()
    {
        $input =   Input::get();
        $title = "居利家商城订单导出";

        $sql =  $this->GetOrderCollection($input);
        $data= $sql->get();
        if( isset( $data ) && count( $data ) > 0)
        {
            $arrHeader[] = date( 'ymdHis', $_SERVER[ 'REQUEST_TIME' ] );
            $arrHeader[] = date( 'Y/m/d H:i' , $_SERVER[ 'REQUEST_TIME' ] );
            $arrHeader[] = 'Content-type:application/vnd.ms-excel;charset=gb2312';
            $arrHeader[] = 'wangdingfeng@sxdaxin.com';
            $arrHeader[] = '陕西大信网络科技有限公司';
            $i = 0;
            foreach( $data as $row )
            {
                $grabList[$i][] = $row->order_sn;
                $grabList[$i][] = $row->source ==1?'PC':'WAP';
                $grabList[$i][] = $row->belongsToUser->name;
                $grabList[$i][] = $row->ship_phone;
                $grabList[$i][] = $row->payment==1?"支付宝":"微信支付";
                $grabList[$i][] = $row->itemnum;
                $grabList[$i][] = $row->cost_item;
                $grabList[$i][] = $row->cost_freight;
                $grabList[$i][] = $row->pay_amount;
                $grabList[$i][] = TimeTools::getYMd($row->created_at);
                $i++;
            }
            $columns =array('订单编号','订单来源','客户名称','客户电话','支付方式','购买数量','商品价格','优惠金额','支付金额','下单时间');
            Excel::create('居利家订单导出'.date('Ymd',time()), function($excel) use( $arrHeader, $grabList,$title,$columns ) {
                $excel->setTitle($title);
                $excel->setCreator('居利家')
                    ->setCompany('陕西大信网络科技有限公司');
                $excel->sheet($title, function($sheet) use( $arrHeader, $grabList,$columns )  {
                    $sheet->row(1, $columns);
                    $sheet->row(1, function($row){
                        $row->setFontWeight();
                    });
                    // 新增行
                    $sheet->rows( $grabList );
                });
            })->export('xls');
        }
    }

    /**
     *  客户列表查询统计
     */
    public function getCustomer()
    {
        $setPage = Input::get('setpage')?Input::get('setpage'):self::$adminPage;
        $input =   Input::get();
        $sql =  $this->GetCustomerCollection($input);
        $list=  $sql->paginate($setPage);
        $count=  $sql->count();
        //处理分页参数
        $set['setpage'] = $setPage;
        $set['beg_time'] = isset($input['beg_time'])?$input['beg_time']:'';
        $set['end_time'] = isset($input['end_time'])?$input['end_time']:'';
        $set['name'] = isset($input['name'])?$input['name']:'';
        $this->view("admin.report.customer",compact('list','set','count'));
    }


    /**
     *  客户查询结果导出
     */
    public function getExportcustomer()
    {
        $input =   Input::get();
        $title = "居利家商城客户导出";
        
        $sql =  $this->GetCustomerCollection($input);
        $data= $sql->get();
        if( isset( $data ) && count( $data ) > 0)
        {
            $arrHeader[] = date( 'ymdHis', $_SERVER[ 'REQUEST_TIME' ] );
            $arrHeader[] = date( 'Y/m/d H:i' , $_SERVER[ 'REQUEST_TIME' ] );
            $arrHeader[] = 'Content-type:application/vnd.ms-excel;charset=gb2312';
            $arrHeader[] = 'wangdingfeng@sxdaxin.com';
            $arrHeader[] = '陕西大信网络科技有限公司';
            $i = 0;
            foreach( $data as $row )
            {
                $grabList[$i][] = $row->id;
                $grabList[$i][] = $row->name;
                $grabList[$i][] = $row->real_name;
                if($row->sex =='1'){
                    $grabList[$i][] = '男';
                }else{
                    $grabList[$i][] = '女';
                }
                $grabList[$i][] = $row->alias;
                $grabList[$i][] = isset($row->group->name)?$row->group->name:'未知';
                $grabList[$i][] = $row->email;
                $grabList[$i][] = $row->office_phone;
                $grabList[$i][] = $row->mobile_phone;
                $grabList[$i][] = $row->home_phone;
                if(!empty($row->qq)&&!empty($row->wechat)){
                    $grabList[$i][] ='QQ:'.$row->qq.' wechat:'. $row->wechat;
                }
                elseif(!empty($row->qq)){
                    $grabList[$i][] ='QQ:'.$row->qq;
                }
                elseif(!empty($row->wechat)){
                    $grabList[$i][] ='wechat:'.$row->wechat;
                }else{
                    $grabList[$i][]='';
                }
                $i++;
            }
            $columns =array('客户编号','账户名称','真实姓名','性别','昵称','用户群组','邮箱地址','办公室电话','移动电话','固定电话','微信/QQ');
            Excel::create('居利家订单导出'.date('Ymd',time()), function($excel) use( $arrHeader, $grabList,$title,$columns ) {
                $excel->setTitle($title);
                $excel->setCreator('居利家')
                    ->setCompany('陕西大信网络科技有限公司');
                $excel->sheet($title, function($sheet) use( $arrHeader, $grabList,$columns )  {
                    $sheet->row(1, $columns);
                    $sheet->row(1, function($row){
                        $row->setFontWeight();
                    });
                    // 新增行
                    $sheet->rows( $grabList );
                });

            })->export('xls');
        }
    }

    /**
     * @param $fiter
     * @return mixed
     *  添加查询条件过滤
     */
    private  function  GetCustomerCollection($fiter)
    {
        $sql  =   Source_User_UserInfo::orderBy('created_at','desc');
        if(!empty($fiter['beg_time'] )&& !empty($fiter['end_time'] )){
            $sql->where('created_at' ,'>' ,$fiter['beg_time'])->where('created_at' ,'<' ,$fiter['end_time']) ;
        }
        if( isset($fiter['status'])&& !empty($fiter['status'])){
            $sql->where('status',$fiter['status']);
        }
        if( isset($fiter['name'])&& !empty($fiter['name'])){
            $sql->whereRaw('real_name like "%'. $fiter['name'].'%"');
        }
        return  $sql ;
    }


    /**
     * @param $fiter
     * @return mixed
     *  添加查询条件过滤
     */
    private  function  GetOrderCollection($fiter)
    {
        $sql  =   Source_Order_OrderInfo::orderBy('created_at','desc');
        if(!empty($fiter['beg_time'] )&& !empty($fiter['end_time'] )){
            $sql->where('created_at' ,'>' ,$fiter['beg_time'])->where('created_at' ,'<' ,$fiter['end_time']) ;
        }
        if( isset($fiter['status'])&& !empty($fiter['status'])){
            $sql->where('status',$fiter['status']);
        }
        if( isset($fiter['order_sn'])&& !empty($fiter['order_sn'])){
            $sql->whereRaw('order_sn like "%'. $fiter['order_sn'].'%"');
        }
        return  $sql ;
    }



    
}