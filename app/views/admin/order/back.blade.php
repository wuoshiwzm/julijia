@section("title")
    退款单管理
@stop
@section("admincss")
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
@stop

@section("content")
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">退款管理</span>
                    </h3>
                </div>
            </div>
        </div>

        <!--搜索-->
        <div class="search-term m-b-10"><form action="{{url("/admin/refund/back")}}" method="get">
                {{--<input name="_csrf" value="##" type="hidden">--}}

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>订单编号：</span>
                        </label>

                        <div class="form-control-wrap">
                            <input id="searchmodel-keyword" class="form-control" name="order_sn" placeholder="订单编号" type="text">
                        </div>

                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>退款单号：</span>
                        </label>

                        <div class="form-control-wrap">
                            <input id="searchmodel-keyword" class="form-control" name="refund_sn" placeholder="退款单号" type="text">
                        </div>

                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>退款原因：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select id="##" class="form-control">
                                <option value="">全部</option>
                                <option value="1">承诺的没有做到</option>
                                <option value="0">未按照约定时间发货</option>
                                <option value="1">未按成交价格交易</option>
                                <option value="1">恶意骚扰</option>
                                <option value="1">拒绝提供售后服务</option>
                                <option value="1">其他</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>商品状态：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select  name="status" class="form-control">
                                <option value="0">全部</option>
                                <option value="1">买家申请退款，等待平台确认</option>
                                <option value="2">平台确认，等待买家发货</option>
                                <option value="4">买家已退货，等待平台确认收货</option>
                                <option value="5">平台确认收货，等待平台退款</option>
                                <option value="6">退款成功</option>
                                {{--<option value="">退款关闭</option>--}}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <input id="btn_search" value="查询" class="btn btn-primary m-r-5" type="submit">
                </div>
            </form>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3>退款列表</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{$refund_info['total']}}</span>
                    条记录&nbsp;)
                </h5>
            </div>
            <div class="operate">
                <a class="reload" href="" data-toggle="tooltip" data-placement="auto bottom" title="" data-original-title="刷新数据">
                    <i class="iconfont"></i>
                </a>

            </div>
        </div>
        <div class="item-list-hd">
            <ul class="item-list-tabs">
                <li id="order_all" class="tabs-t ">
                    <a href="{{url("/admin/refund/index")}}">退款（{{$refund_info['refund']}}）</a>
                </li>

                <li id="order_unpayed" class="tabs-t current">
                    <a href="{{url("/admin/refund/back")}}">退货退款（{{$refund_info['back']}}）</a>
                </li>
            </ul>
        </div>
        <!--列表内容-->
        <div class="table-responsive">
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w260" style="cursor: pointer;">商品信息</th>
                    <th class="w100 active" style="cursor: pointer;">买家</th>
                    <th class="w100" style="cursor: pointer;">交易金额</th>
                    <th class="w100" style="cursor: pointer;">退款金额</th>
                    <th class="w100" style="cursor: pointer;">申请时间<span class="sort desc"></span></th>
                    <th class="w100" style="cursor: pointer;">超时时间<span class="sort desc"></span></th>
                    <th class="w100" style="cursor: pointer;">退款状态</th>
                    <th class="handle w180">操作</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @foreach($data as $row)
                    <tr>
                        <td>
                            <div class="goodsPicBox pull-left m-r-10">
                                <img src="../images/pic01.png" class="goods-thumb" width="50">
                            </div>
                            <div class="ng-binding refund-message ">
                                <div class="name">
                                    <a href="##" target="_blank" data-toggle="tooltip" data-placement="auto bottom" title="" class="c-blue" data-original-title="测试退款">测试退款</a>
                                </div>
                                <div class="order-num">订单编号:{{$row->order_sn}}</div>
                                <div class="refund-num">退款编号：2016100745930</div>
                            </div>
                        </td>
                        <td>
                            <div class="ng-binding">
                                <span>{{$row->real_name}}</span>
                            </div>
                        </td>
                        <td>￥{{$row->order->total_amount}}</td>
                        <td>￥1.00</td>
                        <td>{{$row->created_at}}</td>
                        <td>2016-10-09 16:19:54</td>
                        <td>
                            <font class="c-999">买家申请，等待卖家确认</font>
                        </td>
                        <td class="handle">
                            <a href="{{url("/admin/refund/detail")}}">详情</a>&nbsp;&nbsp;<a href="javascript:reload();" class="t_ok">确认</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            @include("admin.public.page",array('data'=>$data,'set'=>$set))
        </div>
    </div>
@stop
@section("footer_js")
    <script type="text/javascript" src="{{url('js/admin/bootstrap.merge.min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/bootstrap-switch.min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/d_tan.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/common.js')}}"></script>
@stop