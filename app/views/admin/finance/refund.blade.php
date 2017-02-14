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
        <div class="search-term m-b-10"><form action="{{url('/admin/frefund/index')}}" method="get">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>订单编号：</span>
                        </label>

                        <div class="form-control-wrap">
                            <input id="searchmodel-keyword" class="form-control"
                               value="{{Input::get("order_sn")}}"   name="order_sn" placeholder="订单编号" type="text">
                        </div>

                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>退款单号：</span>
                        </label>
                        <div class="form-control-wrap">
                            <input id="searchmodel-keyword" value="{{Input::get("back_sn")}}" class="form-control"
                                   name="back_sn" placeholder="退款单号" type="text">
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
                <li id="order_all" class="tabs-t current">
                    <a href="{{url("/admin/frefund/index")}}">退款（{{$refund_info['refund']}}）</a>
                </li>

                <li id="order_unpayed" class="tabs-t">
                    <a href="{{url("/admin/frefund/back")}}">退货退款（{{$refund_info['back']}}）</a>
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
                        <th class="w100 active" style="cursor:pointer;">买家</th>
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
                                <img src="{{ getImgSize( 'goods', $row->item->product_id, isset($row->item->product->small_image)?$row->item->product->small_image:'' )}}" class="goods-thumb" width="50">
                            </div>
                            <div class="ng-binding refund-message ">
                                <div class="name">
                                    <a href="javascript:void(0)" target="_blank" data-toggle="tooltip" data-placement="auto bottom" title="" class="c-blue" data-original-title="测试退款">
                                        {{ isset($row->item->product_name)?$row->item->product_name:''}}
                                    </a>
                                </div>
                                <div class="order-num">订单编号:{{$row->order_sn}}</div>
                                <div class="refund-num">退款编号：{{$row->back_sn}}</div>
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
                            @if($row->status == 1)
                                <font class="c-999">买家申请，等待平台审核</font>
                            @elseif ($row->status == 2)
                                <font class="c-999">平台已审核</font>
                            @elseif ($row->status == 6)
                                <font class="c-999">平台已审核，平台已经退款</font>
                            @endif
                        </td>
                        <td class="handle">
                            <a href="{{url("/admin/frefund/detail?".http_build_query(['refund_id'=>encode($row->id)]))}}">退款详情</a>&nbsp;&nbsp;
                            {{--平台审核通过;财务才能确认退款--}}
                            @if($row->status == 2)
                                <a href="javascript:void(0);" class="t_ok" onclick="tuikuan('{{encode($row->id)}}')" data-refund={{$row->id}}  >确认退款</a>
                            @endif
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
    <script type="text/javascript" src="{{url('js/admin/finance/refund.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/common.js')}}"></script>
    <script>
        function  tuikuan(id) {
            layer.open({
                content: '您确认已经退款了吗？',
                btn: ['确认', '取消'],
                shadeClose: false,
                yes: function(){
                    $.post('/admin/frefund/confirm',{refund_id:id},function (msg) {
                        msg=eval("("+msg+")") ;
                        if(msg['status']){
                            location.reload();
                        }
                    })
                }, no: function(){
                    layer.close();
                }
            });
        }
    </script>
@stop