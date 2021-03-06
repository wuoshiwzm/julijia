@section("title")
    已发货
@stop

@section("admincss")
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
@stop

@section("content")
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">发货列表</span>
                    </h3>
                </div>
            </div>
        </div>

        <!--搜索-->
        <div class="search-term m-b-10">
            <form id="searchForm" method="get" action="{{url('/admin/deliver/gone')}}">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>关键字：</span>
                        </label>
                        <div class="form-control-wrap"><input id="name" class="form-control" value="<?= Input::get("keyword")?>" name="keyword" placeholder="商品名称/订单编号/买家帐号" type="text"></div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <input type="submit" class="btn btn-primary m-r-5" value="搜索">
                </div>
            </form>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3>发货列表</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{ $order_info["waiting"] + $order_info["has_gone"] }}</span>
                    条记录&nbsp;)
                </h5>
            </div>
            <div class="operate">
                <a class="reload" href="" data-toggle="tooltip" data-placement="auto bottom"
                   title="" data-original-title="刷新数据">
                    <i class="iconfont"></i>
                </a>
            </div>
        </div>
        <!--列表内容-->
        <div class="item-list-hd">
            <ul class="item-list-tabs">
                <li id="order_unshipped" class="tabs-t last">
                    <a href="{{url('/admin/deliver/index')}}">等待发货（{{$order_info["waiting"]}}）</a>
                </li>
                <li id="order_shipped" class="tabs-b current">
                    <a href="{{url('/admin/deliver/gone')}}">已发货（{{$order_info["has_gone"]}}）</a>
                </li>
            </ul>
        </div>
        <div class="table-responsive order">
            <table id="table_list" class="table">
                <thead>
                <tr>
                    <th width="26%">商品信息</th>
                    <th width="8%">单价（元）</th>
                    <th width="4%">数量</th>
                    <th width="10%">买家</th>
                    <th width="10%">线下门店</th>
                    <th width="10%">运输状态</th>
                    <th width="8%">优惠金额</th>
                    <th width="8%">实收款</th>
                    <!--操作列样式handle-->
                    <th class="handle" style="cursor: default;">操作</th>
                </tr>
                </thead>

                @foreach( $data as $row )
                    <tbody class="order ">
                    <tr class="sep-row">
                        <td colspan="9"></td>
                    </tr>
                    <!--订单编号-->
                    <tr class="order-hd">
                        <td colspan="9">
                            <div class="basic-info">
                                <span class="order-num">订单编号：{{$row->order_sn}}</span>
                                <span class="deal-time">下单时间：{{$row->created_at}}</span>
                            <span class="order-source">订单来源：
                                @if($row->form == 1)
                                    pc
                                @elseif($row->form == 2)
                                    wap
                                @endif
                                端</span>
                            <span class="order-source">订单状态：
                                @if ($row->status == 1)
                                    待付款
                                @elseif($row->status == 2)
                                    订单已取消
                                @elseif($row->status == 3)
                                    无效订单
                                @elseif($row->status == 4)
                                    等待发货
                                @elseif($row->status == 5)
                                    已发货
                                @elseif($row->status == 6)
                                    部分已完成
                                @elseif($row->status == 7)
                                    已完成
                                @elseif($row->status == 3)
                                    订单关闭
                                @elseif($row->status == 8)
                                    退款申请中
                                @elseif($row->status == 10)
                                    退款中
                                @elseif($row->status == 9)
                                    退款完成
                                @endif
                            </span>
                            </div>
                        </td>
                    </tr>

                    <!--订单商品内容-->
                    @foreach($row->item as $key => $goods_item )
                        <tr class="order-item">
                            <td class="item">
                                <div class="pic-info">
                                    <a href="##" class="goods-thumb" title="查看商品详情" target="_blank">
                                        <img src="{{url("images/02.jpg")}}" alt="查看商品详情">
                                    </a>
                                </div>
                                <div class="txt-info">
                                    <div class="desc span02">
                                        <a href="#" class="goods-name" target="_blank" title="新鲜水果柠檬">{{$goods_item->product_name}}</a>
                                    </div>
                                </div>
                            </td>
                            <!--单价-->
                            <td class="price">
                                <div class="price m-b-3">￥{{$goods_item->price}}</div>
                            </td>
                            <!--数量-->
                            <td class="num">{{$goods_item->num}}</td>
                            <!--买家信息-->
                            <td class="trouble">
                                <font class="nickname">{{$row->real_name}}</font>
                            </td>

                            <!--下线门店-->
                            <td class="contact contact01" sumrows="1" rowspan="1">
                                大明宫店
                            </td>
                            <!--运输状态-->
                            <td class="trade-status" sumrows="1" rowspan="1">
                                已收货
                            </td>

                            @if($key == 0)
                                    <!--优惠金额-->
                            <td class="order-price" sumrows="1" rowspan="{{$row->item()->count()}}">
                                {{$row->cost_freight}}元
                            </td>
                            @endif

                            @if($key == 0)
                                    <!--实收金额-->
                            <td class="remark remark02" sumrows="1" rowspan="{{$row->item()->count()}}">
                                {{$row->total_amount - $row->cost_freight}}元
                                <br>
                                <font>(含运费￥{{$row->shipping_amount}})</font>
                            </td>
                            @endif

                            @if($key == 0)
                                    <!--操作-->
                            <td class="handle" sumrows="1"  rowspan="{{$row->item()->count()}}" >
                                <div class="ng-binding">
                                        <span class="text-c">
                                            <a href="{{url("/admin/order/detail?".http_build_query(["order_id" =>$row->id]))}}">订单详情</a>
                                        </span>
                                </div>
                            </td>
                            <!-- 共用end -->
                            @endif
                        </tr>
                    @endforeach
                    </tbody>
                @endforeach
            </table>
            @include("admin.public.page",array('data'=>$data,'set'=>$set))
        </div>
    </div>
@stop