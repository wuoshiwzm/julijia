<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2017/1/6
 * Time: 12:05
 */?>
<tr class="order-item">
    <td class="item">
        <div class="pic-info">
            <a href="{{url($item->product_id.'.html')}}"    class="goods-thumb" title="{{$item->product_name}}" target="_blank">
                @if(isset($item->product->entity_id))
                  <img src="{{ getImgSize( 'goods', $item->product->entity_id, $item->product->small_image ) }}">
                @endif
            </a>
        </div>
        <div class="txt-info">
            <div class="desc span02">
                <a href="{{url($item->product_id.'.html')}}" class="goods-name" target="_blank" title="{{$item->product_name}}">{{$item->product_name}}</a>
            </div>
        </div>
    </td>
    <!--单价-->
    <td class="price">
        <div class="price m-b-3">￥{{$item->price}}</div>
    </td>
    <!--数量-->
    <td class="num">{{$item->num}}</td>
    <!--买家信息-->
    <td class="trouble">
        <font class="nickname">{{isset($order->belongsToUser->name)?$order->belongsToUser->name:''}}</font>
    </td>

    <!--下线门店-->
    <td class="contact contact01" sumrows="1" rowspan="1">
        {{isset($item->Supplier->supplier_name)?$goods_item->Supplier->supplier_name:''}}
    </td>
    <!--运输状态-->
    <td class="trade-status" sumrows="1" rowspan="1">
        @if($item->shipping_status ==1 && $item->refund->count())
            <a href="/admin/refund/index">已退款</a><br>
        @endif
        @if($item->shipping_status ==3 && $item->refund->count())
             <a href="/admin/refund/index">已退货</a><br>
        @endif
        @if($item->shipping_status ==1 )
            未发货
        @elseif($item->shipping_status ==2 )
            运输中  <br>
            <a href="{{url("/admin/order/ems?".http_build_query(["l_id" =>$item->shipping_id,'item_id'=>$item->id]))}}". class="yundan"><font>运单</font>{{$item->shipping_id}}</a>
            <br>
        @elseif($item->shipping_status ==3 )
            已收货
        @endif
    </td>
    @if($key == 0)
            <!--优惠金额-->
    <td class="order-price" sumrows="1" rowspan="{{$order->item()->count()}}">
        {{$order->cost_freight}}元
    </td>
    @endif

    @if($key == 0)
            <!--实收金额-->
    <td class="remark remark02" sumrows="1" rowspan="{{$order->item()->count()}}">
        {{$order->total_amount - $order->cost_freight}}元
        <br>
        <font>(含运费￥{{$order->shipping_amount}})</font>
    </td>
    @endif

    @if($key == 0)
            <!--操作-->
    <td class="handle" sumrows="1"  rowspan="{{$order->item()->count()}}" >
        <div class="ng-binding">
        <span class="text-c">
            <a href="{{url("/admin/order/detail?".http_build_query(['order_id'=>$order->id]))}}">订单详情</a>
            @if($order->pay_status ==3&&$order->status==4 && $item->refund->count()==0 )
                <a href="{{url("/admin/order/deliver?".http_build_query(['order_id'=>$order->id]))}}">发货</a>
            @endif
        </span>
        </div>
    </td>
            <!-- 共用end -->
    @endif
</tr>
