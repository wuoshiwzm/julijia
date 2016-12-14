@section('title')
    全部订单
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
            @include('layouts.member.order_nav')

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
                @if($orders)
                    @foreach($orders as $order)
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

                            @foreach($order->items as $item)
                                <tr>
                                    <td>
                                        <dl>
                                            <dt><a href="##" target="_blank">
                                                    <img src="../images/04.jpg" class="goods-thumb" width="60"
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
                                                echo '未发货';
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
                                            <a href="ge_admin_view_shipping.html" class="wl">查看物流</a>
                                        @endif
                                    </td>


                                    <td width="16%" class="operation">

                                            @if($item->isRefund == 1)
                                                <a href="{{url('member/refund')}}">点击查看退款/退货详情</a>
                                            @elseif(!$item->isRefund)
                                            <a href="{{url('member/refund/apply_refund/'.encode($order->id).'/'.encode($item->id))}}">
                                                退货退款 </a>
                                            @endif

                                        <a href="##" class="margin_top">确认收货</a>
                                    </td>

                                    <td width="16%"><font class="price_y">91.00</font>{{$item->row_total}}</td>
                                    <td width="14%" class="operation"><a href="##">详情</a></td>
                                </tr>

                            @endforeach
                        </table>
                    @endforeach
                @endif

                <div id="paging">

                    @include('admin.public.page',array('data'=>$data,'set'=>$set))

                </div>


            </div>
        </div>
    </div>
@stop
@section('js')
    <script type="text/javascript" src="{{asset('js/member/layui.js')}}"></script>
    <script>
        layui.use('element', function () {
            var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块

        });

        //删除//
        $('.dele_d').click(function () {
            //询问框
            layer.confirm('确定要删除？', {
                title: ['删除', 'font-size:16px;'],
                btn: ['确定', '取消'] //按钮
            }, function () {
                layer.msg('已经删除', {icon: 1});
            }, function () {
                layer.msg('取消删除', {
                    icon: 2

                });
            });
        });
        //

        //删除订单//
        $('.dele_dd').click(function () {
            //询问框
            layer.confirm('确定要删除订单？', {
                title: ['删除订单', 'font-size:16px;'],
                btn: ['确定', '取消'] //按钮
            }, function () {
                layer.msg('已经删除', {icon: 1});
            }, function () {
                layer.msg('取消删除', {
                    icon: 2

                });
            });
        });
        //
    </script>
@stop