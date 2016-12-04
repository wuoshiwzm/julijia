@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title item-title02">
                <div class="subject">
                    <h3>
                        <span class="action"> 会员 - 详情</span>
                    </h3>

                    <h5>
				<span class="action-span">
					<a href="vip.html" class="btn btn-warning click-loading">
						<i class="iconfont">&#xe6d4;</i>
						返回会员列表
                        </a>
				</span>
                    </h5>

                    <ul class="tab-base shop-row">
                        <li><a href="{{url('admin/member/welc/'.$user_id)}}">
                                <span>欢迎页</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/info/'.$user_id)}}">
                                <span>会员信息</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/address/'.$user_id)}}">
                                <span>收货地址</span>
                            </a>
                        </li>
                        <li><a class="current" href="{{url('admin/member/orders/'.$user_id)}}">
                                <span>订单</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/cart/'.$user_id)}}">
                                <span>购物车</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/collect/'.$user_id)}}">
                                <span>收藏</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/comment/'.$user_id)}}">
                                <span>评价</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/feedback/'.$user_id)}}">
                                <span>投诉</span>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3> 订 单 </h3>
                <h5>
                    (&nbsp;共
                    <span data - total - record="true"> {{$data->count()}}</span>
                    条记录 & nbsp;)
                </h5>

            </div>
            <div class="operate">
                <a class="reload" href="javascript:reload();" data - toggle="tooltip" data - placement="auto bottom"
                   title="" data - original - title="刷新数据">
                    <i class="iconfont">&#xe6fb;</i>
                </a>
            </div>
        </div>

        <div class="table-responsive">
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w250" style="cursor: pointer;"> 订单编号</th>
                    <th class="w250" style="cursor: pointer;"> 下单时间</th>
                    <th class="w250" style="cursor: pointer;"> 支付时间</th>
                    <th class="w150" style="cursor: pointer;"> 订单来源</th>
                    <th class="w250" style="cursor: pointer;"> 订单状态</th>
                    <th class="w150" style="cursor: pointer;"> 金 额</th>
                    <th class="w150 handle " style="cursor: pointer;"> 操 作</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @foreach($data as $orders)
                    <tr>
                        <td>
                            {{$orders->order_sn}}
                        </td>
                        <td>
                            {{$orders->created_at}}
                        </td>
                        <td>
                            {{$orders->payment_time}}
                        </td>
                        <td> PC站</td>
                        <td>
                            <?php
                            switch ($orders->status) {
                                case(1):
                                    echo '1待付款';
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


                        </td>
                        <td>
                            {{$orders->total_amount}}
                        </td>
                        <td class="handle">
                            <a href="##"> 查看详情</a>
                        </td>
                    </tr>
                @endforeach


                </tbody>

            </table>

            <div class="pull-right page-box">
                @include('admin.public.page',array('data'=>$data,'set'=>$set))
            </div>


        </div>

    </div>

@stop