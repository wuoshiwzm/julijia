@section('css')
    <link rel="stylesheet" type="text/css" href="{{asset('css/member/du.css')}}">
    {{--    <link rel="stylesheet" type="text/css" href="{{asset('css/member/css_all.css')}}">
        <link rel="stylesheet" type="text/css" href="{{asset('css/member/order.css')}}">--}}
@stop

@section('content')

    <div class="shopping">
        <div class="shopping_nei">
            <div class="shopping_nei_order">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>

                <div class="table_div_map">
                    <a href="#">我的订单</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;订单：{{$order->order_sn}}
                </div>

                <!--完成步骤-->
                <div class="table_div">
                    <div class="order_process">
                        <dl>
                            <dd>订单号：{{$order->order_sn}}</dd>
                            <dt>
                                <?php
                                switch ($order->status) {

                                    case 1:
                                        echo "等待付款中";
//                                        echo "<dd><a target='_blank' href=".url(encode('test'))." class='btn'>评价</a></dd>";
                                        break;

                                    case 2:
                                        echo "此订单已取消";
                                        break;


                                    case 3:
                                        echo "无效订单";
                                        break;


                                    case 4:
                                        echo "卖家正在准备发货";
                                        break;


                                    case 5:
                                        echo "卖家已经发货，待收货";
                                        break;


                                    case 6:
                                        echo "订单部分商品已经签收，主准备签收剩余商品";
                                        break;


                                    case 7:
                                        echo "订单完成";
                                        break;

                                }
                                ?>

                            </dt>

                        </dl>
                    </div>


                    <div class="order-step02">
                        <!--完成步骤为dl添加current样式，完成操作内容后会显示完成时间-->

                        <dl class="current">

                            <dt class="iconfont">&#xe666;</dt>
                            <dd class="bg"><font>提交订单</font></dd>
                            <dd class="bg02">2016-11-15 15:41:39</dd>
                        </dl>
                        <div class="order-step_bg order-step_bg_on">&nbsp;</div>


                        <dl
                                @if($order->pay_status ==3)
                                class="current"
                                @endif
                        >

                            <dt class="iconfont">&#xe610;</dt>
                            <dd class="bg"><font>付款成功</font></dd>
                            <dd class="bg02">2016-11-15 15:41:39</dd>
                        </dl>
                        <div class="order-step_bg order-step_bg_on">&nbsp;</div>

                        <dl
                                @if($order->status >=4)
                                class="current"
                                @endif
                        >

                            <dt class="iconfont">&#xe609;</dt>
                            <dd class="bg"><font>商品出库</font></dd>
                            <dd class="bg02">2016-11-15 15:41:39</dd>
                        </dl>
                        <div class="order-step_bg">&nbsp;</div>


                        <dl
                                @if($order->status >=5)
                                class="current"
                                @endif
                        >


                            <dt class="iconfont">&#xe650;</dt>
                            <dd class="bg"><font>等待收货</font></dd>
                            <dd class="bg02">2016-11-15 15:41:39</dd>
                        </dl>
                        <div class="order-step_bg">&nbsp;</div>

                        <dl
                                @if($order->status >=7)
                                class="current"
                                @endif
                        >


                            <dt class="iconfont">&#xe659;</dt>
                            <dd class="bg"><font>完成</font></dd>
                            <dd class="bg02">2016-11-15 15:41:39</dd>
                        </dl>
                    </div>

                </div>

                <!--配送信息-->


                @if($items)

                    @foreach($items as $item)
                        <div class="table_div table_div02">
                            <div class="order_wuliu">
                                <dl>
                                    <dt>
                                        <img src="{{ getImgSize( 'goods', $item->product->product_id, $item->product->small_image )}}">
                                    </dt>
                                    <dd><span>送货方式：</span><font>普通快递</font></dd>
                                    <dd><span>承运人：</span><font>{{$item->shipper->shipping_name}}</font></dd>
                                </dl>
                            </div>

                            @if(isset($item->shipping))
                                <div class="order-an02">
                                    <div class="content">
                                        <dl class="on">
                                            @foreach($item->shipping as $shipping)

                                                @if(is_array($shipping))
                                                    <dt>{{$shipping['AcceptTime']}}</dt>
                                                    <dd>{{$shipping['AcceptStation']}}</dd>
                                                @else
                                                    <dt>{{$shipping->AcceptTime}}</dt>
                                                    <dd>{{$shipping->AcceptStation}}</dd>
                                                @endif
                                            @endforeach
                                        </dl>
                                    </div>
                                </div>
                            @endif
                        </div>
                        @endforeach
                        @endif


                                <!--订单详情-->
                        <div class="table_div">
                            <div class="order_information">
                                <ul>
                                    <li><strong>收货人信息</strong></li>
                                    <li><span>收货人：</span><font>{{$order->ship_name}}</font></li>
                                    <li><span>地址：</span><font>{{$order->ship_addr}}</font></li>
                                    <li><span>手机号码：</span><font>{{$order->ship_phone}}</font></li>
                                </ul>
                            </div>

                            <div class="order_information">
                                <ul>
                                    <li><strong>配送信息</strong></li>
                                    <li><span>配送方式：</span><font>普通快递</font></li>
                                    <li><span>运费：</span><font>¥{{$order->shipping_amount}}</font></li>

                                </ul>
                            </div>

                            <div class="order_information">
                                <ul>
                                    <li><strong>付款信息</strong></li>
                                    <li><span>付款方式：</span><font>
                                            @if($order->payment ==1 )
                                                支付宝
                                            @elseif($order->payment ==2)
                                                微信支付
                                            @else
                                                其他
                                            @endif
                                        </font></li>
                                    <li><span>付款时间：</span><font>
                                            @if($order->pay)
                                                {{$order->pay->payment_time}}
                                            @else
                                                未知
                                            @endif
                                        </font></li>

                                    <li><span>商品总额：</span><font>¥{{$order->total_amount}}</font></li>
                                    <li><span>应支付金额：</span><font>¥{{$order->pay_amount}}</font></li>
                                    <li><span>运费金额：</span><font>¥{{$order->cost_freight}}</font></li>
                                    <li><span>优惠券：</span><font>¥0.00</font></li>
                                    <li><span>返现：</span><font>¥0.00</font></li>
                                    <li><span>礼品卡：</span><font>¥0.00</font></li>
                                    <li><span>订单优惠：</span><font>¥{{$order->total_amount - $order->pay_amount}}</font>
                                    </li>
                                </ul>
                            </div>

                            <div class="order_information">
                                <ul>
                                    <li><strong>发票信息</strong></li>
                                    <li><span>发票类型：</span><font>电子发票</font></li>
                                    <li><span>发票抬头：</span><font>个人</font></li>
                                    <li><span>发票内容：</span><font>明细</font></li>
                                </ul>
                            </div>
                        </div>

                        <!--商品信息-->
                        <div class="table_div">
                            <div class="table_div_hd table_div_hd_table">
                                <table border="0" cellpadding="0" cellspacing="0" class="order_tab">

                                    <tr>
                                        <th>商品信息</th>
                                        <th width="10%">商品编号</th>
                                        <th width="10%">价格(元)</th>
                                        <th width="8%">商品数量</th>
                                        <th width="14%">操作</th>
                                    </tr>

                                    @foreach($items as $item)
                                        <tr>
                                            <td class="padding_left">
                                                <dl>
                                                    <dt><a href="##" target="_blank">
                                                            <img src="{{ getImgSize( 'goods', $item->product->product_id, $item->product->small_image )}}">
                                                        </a></dt>
                                                    <dd><a href="##"
                                                           target="_blank">{{$item->name}}</a>
                                                    </dd>
                                                    <dd class="order_tab_color">
                                                        @if($item->guige)
                                                            @foreach (json_decode($item->guige) as $name=>$guige)
                                                                {{$name}}:{{$guige}}
                                                                <hr>
                                                            @endforeach
                                                        @endif

                                                    </dd>
                                                </dl>
                                            </td>
                                            <td>¥ {{$item->product_id}}</td>
                                            <td>
                                                <font class="price">¥ {{$item->row_total}}</font>
                                            </td>
                                            <td>{{$item->num}}</td>
                                            <td class="operation "><a href="##">申请退款退货</a></td>
                                        </tr>

                                    @endforeach


                                </table>

                                <div class="jiesuan">

                                    <div class="jiesuan_center">支付的商品<br><font>2</font>件</div>

                                    <div class="jiesuan_right">
                                        <ul>
                                            <li class="jiesuan_right_li">
                                                <span>应付总额:</span><font><i>¥&nbsp;{{$order->pay_amount}}</i></font>
                                            </li>
                                            <li><span>商品总价：</span><font>¥&nbsp;{{$order->total_amount}}</font></li>
                                            <li>
                                                <span>优&nbsp;惠&nbsp;券：</span><font>-&nbsp;¥&nbsp;{{$order->total_amount - $order->pay_amount}}</font>
                                            </li>
                                            <li>
                                                <span>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费：</span><font>¥&nbsp;{{$order->cost_freight}}</font>
                                            </li>
                                        </ul>
                                    </div>

                                </div>

                            </div>
                        </div>
            </div>
        </div>
    </div>
@stop

