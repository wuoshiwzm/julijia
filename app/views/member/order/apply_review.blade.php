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
            <h2>我的订单&nbsp;&nbsp;-&nbsp;&nbsp;<font>退款退货</font></h2>
        </div>
        <!--订单切换-->
        <div class="table_div">
            <div class="order-step">
                <!--完成步骤为dl添加current样式，完成操作内容后会显示完成时间-->
                <dl class="current">
                    <dt>买家 申请退款</dt>
                    <dd class="bg"><font>1</font></dd>
                    <dd class="bg02"></dd>
                    <dd class="bg01"></dd>

                </dl>
                <dl class="">
                    <dt>商家 处理退款申请</dt>
                    <dd class="bg"><font>2</font></dd>
                    <dd class="bg02"></dd>
                    <dd class="bg01"></dd>
                </dl>
                <dl class="">
                    <dt>退款完成</dt>
                    <dd class="bg"><font>3</font></dd>
                    <dd class="bg02"></dd>
                    <dd class="bg01"></dd>
                </dl>

            </div>

        </div>

        <div class="table_div">
            <div class="order-pic">
                <table cellpadding="0" cellspacing="0" class="order_tab">
                    <tbody>
                    <tr>
                        <th colspan="2">
                            <stong>订单信息</stong>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <dl>
                                <dt><a href="##" target="_blank">
                                        <img src="../images/04.jpg" class="goods-thumb" width="60" height="60"></a></dt>
                                <dd><a href="##" target="_blank">
                                        {{$orderItem->product_name}}</a></dd>
                            </dl>
                        </td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">单价{{$orderItem->price}}元</td>
                        <td>{{$orderItem->price}}元 X{{$orderItem->num}}(数量)</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">小计</td>
                        <td>{{$orderItem->row_total}}元</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">物流</td>
                        <td><font>{{$orderItem->shipping_id}}</font></td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">订单编号</td>
                        <td><font>{{$orderInfo->order_sn}}</font></td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">运费</td>
                        <td>¥{{$orderInfo->shipping_amount}}</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">总优惠</td>
                        <td>¥{{$orderInfo->total_amount - $orderInfo->pay_amount}}</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">总计</td>
                        <td><span>{{$orderInfo->pay_amount}}</span></td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">成交时间</td>
                        <td>{{$orderInfo->created_at}}</td>
                    </tr>

                    </tbody>
                </table>

            </div>

            <div class="order-an02">
                <div class="layui-tab">
                    <ul class="layui-tab-title">
                        <li class="layui-this">评价</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="admin_form">
                                <form class="layui-form m-form" action="{{url('member/review/create_review')}}"
                                      method="post">
                                    <input type="hidden" name="orderId" value="{{$orderInfo->id}}">
                                    <input type="hidden" name="itemId" value="{{$orderItem->id}}">

                                    {{Form::token()}}
                                    <div class="layui-form-item">
                                        <label class="layui-form-label"><span class="red">*</span>打 分</label>
                                        <div class="layui-input-block box_163css">
                                            <ul class="star_ul fl">
                                                <li><a class="one-star" title="很差" href="#"></a></li>
                                                <li><a class="two-star" title="差" href="#"></a></li>
                                                <li><a class="three-star" title="还行" href="#"></a></li>
                                                <li><a class="four-star" title="好" href="#"></a></li>
                                                <li><a class="five-star" title="很好" href="#"></a></li>
                                            </ul>
                                            <span class="s_result fl" style="color: rgb(51, 51, 51);">请打分</span>
                                        </div>
                                    </div>

                                    <div class="layui-form-item">
                                        <label class="layui-form-label"><span class="red">*</span>评价说明</label>
                                        <div class="layui-input-block">
                                            <textarea name="content" class="layui-textarea w80b f_left"
                                                      placeholder="填写评价说明" autocomplete="off"
                                                      ignore="ignore"></textarea>
                                        </div>
                                    </div>

                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button class="layui-btn">提交评价</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


        </div>
    </div>


@stop
@section('js')

    <script>
        layui.use('element', function () {
            var element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

        });

        $(function () {
            $('.star_ul a').hover(function () {
                $(this).addClass('active-star');
                $('.s_result').css('color', '#c00').html($(this).attr('title'))
            }, function () {
                $(this).removeClass('active-star');
                $('.s_result').css('color', '#333').html('请打分')
            });

        })
    </script>




@stop