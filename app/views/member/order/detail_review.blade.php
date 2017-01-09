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
            <h2>我的订单&nbsp;&nbsp;-&nbsp;&nbsp;<font>评价订单</font></h2>
        </div>
        <!--订单切换-->


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
                                        <img src="{{ getImgSize( 'goods', $orderItem->product_id, $orderItem->product->small_image ) }}"
                                             class="goods-thumb" width="60" height="60"></a></dt>
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
                        <td><font>{{$data->order->order_sn}}</font></td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">运费</td>
                        <td>¥{{$data->order->shipping_amount}}</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">总优惠</td>
                        <td>¥{{$data->order->total_amount - $data->order->pay_amount}}</td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">总计</td>
                        <td><span>{{$data->order->pay_amount}}</span></td>
                    </tr>

                    <tr>
                        <td class="order_tab_td">成交时间</td>
                        <td>{{$data->order->created_at}}</td>
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

                                    <div class="layui-form-item">
                                        <label class="layui-form-label"><span class="red">*</span>打 分</label>
                                        <div class="layui-input-block box_163css">
                                            <ul class="star_ul fl">
                                                <li><a class="one-star" title="很差" star=1 href="#"></a></li>
                                                <li><a class="two-star" title="差" star=2 href="#"></a></li>
                                                <li><a class="three-star" title="还行" star=3 href="#"></a></li>
                                                <li><a class="four-star" title="好" star=4 href="#"></a></li>
                                                <li><a class="five-star" title="很好" star=5 href="#"></a></li>
                                            </ul>
                                            <span class="s_result fl" style="color: rgb(51, 51, 51);"
                                                  name="test">请打分</span>
                                            <input type="hidden"  name="leavel" class="star_result"
                                                   datatype="*" errormsg="请选择等级" tipsrmsg="请输入评价">
                                            <label class="Validform_checktip"></label>
                                        </div>
                                    </div>

                                    <div class="layui-form-item">
                                        <label class="layui-form-label"><span class="red">*</span>评价说明</label>
                                        <div class="layui-input-block">
                                            <textarea name="content" class="layui-textarea w80b f_left"
                                                      placeholder="填写评价说明" autocomplete="off"
                                                      datatype="*" errormsg="评价内容不能为空" tipsrmsg="请输入评价"
                                            >{{$data->content}}</textarea>
                                            <label class="Validform_checktip"></label>
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
            $('.star_ul a').click(function () {
                $(this).addClass('activeactive-star');
                $('.s_result').css('color', '#c00').html($(this).attr('title'))
                $('.star_result').val($(this).attr('star'))
            });

//            $('.star_ul a').hover(function () {
//                $(this).addClass('active-star');
//                $('.s_result').css('color', '#c00').html($(this).attr('title'))
//            }, function () {
//                $(this).removeClass('active-star');
//                $('.s_result').css('color', '#333').html('请打分')
//            });

        })
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".spinner").hide();
        });//页面加载特效
    </script>




@stop