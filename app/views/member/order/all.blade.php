@section('title')
    全部订单
@stop

@section('left')
    @include('member.public.left_center')
@stop

@section(('content'))
    <div class="ge_admin_nei_right">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>

        <div class="table_div_h">
            <h2>我的订单</h2>
        </div>
        <!--订单切换-->
        <div class="table_div">
            @include('member.public.order_nav')

            <div class="table_div_hd table_div_hd_table">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th>商品</th>
                        <th width="10%">单价（元）</th>
                        <th width="8%">数量</th>
                        <th width="12%">状态</th>
                        <th width="16%">商品操作</th>
                        <th width="16%">产品价格</th>
                        <th width="14%">操作</th>
                    </tr>
                </table>
                @if(isset($orders)&&count($orders)>0 )

                    @foreach($data as $order)
                        @if($order->item->count() > 0)
                            <table cellpadding="0" cellspacing="0" class="order_tab">
                                <tr>
                                    <td colspan="7" class="order_ding"><span>订单编号：
                                <a href="#">{{$order->order_sn}}</a></span>
                                        <span>下单时间：{{$order->created_at}}</span>
                                        <span>订单来源：
                                            @if($order->source == 1)
                                                PC端
                                            @elseif($order->source == 2)
                                                手机端
                                            @endif
                                </span>
                                        <span>订单金额：{{$order->total_amount}}</span>
                                        <span>优惠金额：<font>{{$order->cost_freight}}</font></span>
                                        <span>订单状态：
                                            <?php
                                            switch ($order->status) {
                                                case(1):
                                                    echo '待付款';
                                                    break;
                                                case(2):
                                                    echo '已取消';
                                                    break;
                                                case(3):
                                                    echo '无效';
                                                    break;
                                                case(4):
                                                    echo '待发货';
                                                    break;
                                                case(5):
                                                    echo '待收货';
                                                    break;
                                                case(6):
                                                    echo '部分完成';
                                                    break;
                                                case(7):
                                                    echo '完成';
                                                    break;
                                                case(8):
                                                    echo '退款退货';
                                                    break;
                                                case(9):
                                                    echo '退款完成';
                                                    break;
                                            }
                                            ?>
                                </span>
                                    </td>
                                </tr>
                                @foreach($order->item as $k=>$item)
                                    <tr>
                                        <td>
                                            <dl>
                                                <dt><a href="##" target="_blank">
                                                        <img src="{{ getImgSize( 'goods', $item->product_id, $item->product->small_image ) }}"
                                                             class="goods-thumb" width="60"
                                                             height="60"></a>
                                                </dt>
                                                <dd><a href="##" target="_blank">
                                                        {{$item->product_name}}
                                                    </a>
                                                </dd>
                                            </dl>
                                        </td>
                                        <td width="10%">{{$item->price}}</td>
                                        <td width="8%">{{$item->num}}</td>
                                        <td width="12%">
                                            {{--商品运输状态 1 未发货 2运输中 3 已收货--}}
                                            <?php
                                            switch ($item->shipping_status) {
                                                case(1):
                                                    echo '处理中';
                                                    break;
                                                case(2):
                                                    echo '运输中';
                                                    break;
                                                case(3):
                                                    echo '已收货';
                                                    break;
                                            }
                                            ?> <br>
                                            @if($item->shipping_status == 2)
                                                <a href="{{url('member/order/shipping/'.$item->id)}}"
                                                   class="wl">查看物流</a>
                                            @endif
                                        </td>


                                        <td width="16%" class="operation">


                                            {{--没有付款--}}
                                            @if($order->pay_status == 1 || $order->pay_status == 2)
                                                <a href="##" class="margin_top">付款</a>
                                            @endif

                                            {{--已经付款 已经收货--}}
                                            @if($item->shipping_status == 3 && $order->pay_status == 3 )
                                                @if($item->review->count())
                                                    <a href="{{url('member/review')}}">评价详情</a>
                                                @else
                                                    <a href="{{url('member/review/apply_review/'.encode($order->id).'/'.encode($item->id))}}"
                                                       class="margin_top">评价</a>
                                                @endif

                                                @if($item->feedback->count())
                                                    <a href="{{url('member/feedback')}}">投诉详情</a>
                                                @else
                                                    <a href="{{url('member/feedback/apply_feedback/'
                                            .encode($order->id).'/'.encode($item->id))}}"
                                                       class="margin_top">投诉</a>
                                                @endif

                                                @if($item->refund->count())
                                                    <a href="{{url('member/refund')}}">退货详情</a>
                                                @else
                                                    <a href="{{url('member/refund/'.encode($order->id).'/'.encode($item->id))}}"
                                                       class="margin_top">退货</a>
                                                @endif
                                            @endif


                                            {{--已经付款 没有收货 : 确认收货 退款--}}
                                            @if($item->shipping_status != 3 && $order->pay_status == 3 )

                                                @if($item->refund->count())
                                                    <a href="{{url('member/refund')}}">点击查看退款/退货详情</a>
                                                @else
                                                    <a href="{{url('member/refund/'.encode($order->id).'/'.encode($item->id))}}">
                                                        退款 </a>
                                                @endif
                                                <a href="##" class="margin_top"
                                                   onclick="receive({{"'".encode($item->id)."'"}})">确认收货</a>
                                            @endif
                                        </td>
                                        <td width="16%"><font class="price_y">91.00</font>{{$item->row_total}}</td>
                                        @if($k === 0)
                                            <td width="14%" class="operation" rowspan="{{$order->item->count()}}">
                                                <a href="{{url('member/order/detail/'.$order->id)}}">详情</a>
                                            {{--如果未付款 可以删除订单--}}
                                            @if($order->status == 1)
                                                <a href="#"  onclick="deleOrder({{"'".encode($order->id)."'"}})">删除订单</a>
                                            @endif
                                            </td>
                                        @endif

                                    </tr>
                                @endforeach
                            </table>
                        @endif
                    @endforeach

                @endif

                <div id="paging">
                    @include('member.public.page',array('data'=>$data,'set'=>$set))
                </div>


            </div>
        </div>
    </div>
@stop
@section('js')


@stop