<?php
/**
 * Created by Tonychang
 * User: Administrator
 * Date: 2016/10/8
 * Time: 16:53
 */
class Order  {

    public static $adminPage = 10;
    /**
     * 获取未付款、待发货、已发货、成功订单个数
     */
    public static function getOrdersNumber()
    {
        $noPay = 0;$waiting = 0;$has_gone = 0; $success = 0;$all_order = 0;
        $orders = DB::table("order_info")->get();
        if (! empty($orders)) {
            /*遍历订单数*/
            foreach ($orders as $order) {
                $all_order++;
                if ($order->status == 1) {
                    $noPay++;
                }else if ($order->status == 4) {
                    $waiting++;
                }else if($order->status == 5){
                    $has_gone++;
                }else if ($order->status == 7) {
                    $success++;
                }
            }
        }
        //返回订单
        return array(
            'all_order' => $all_order,
            'no_pay' => $noPay,
            'waiting' => $waiting,
            'has_gone' => $has_gone,
            'success'  => $success
        );
    }

    /**
     * 根据不同订单状态获取订单
     * @param int $status 订单状态
     * @param int $setPage 分页数
     * @param array $column 返回字段
     * @param boolean $with 是否预加载商品
     * @return  object collection 结果集对象
     */
    public static function getOrderByStatus($status = 0,$setPage = 0,$column = array() , $with = true)
    {
        if (empty($column)) {
            $column = array(
                "order_info.id","order_info.form","order_info.total_amount","order_info.cost_freight",
                "order_info.status","order_info.order_sn","order_info.created_at","userinfo.real_name"
            );
        }
        /*查询*/
        $model = Source_Order_OrderInfo::leftjoin('userinfo','order_info.user_id','=','userinfo.id');
        if ( $status != 0 && is_int($status))
            $model->where("order_info.status",'=',$status);

        if (! empty($column) && is_array($column))
            $model->select($column);

        if (is_bool($with) && $with)
            $model->with("item");

        if ($setPage == 0 || ! is_int($setPage))
            $setPage = self::$adminPage;

        return $model->paginate($setPage);
    }


}