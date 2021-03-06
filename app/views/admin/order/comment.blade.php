@section("title")
    评论列表
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
                        <span class="action">评论列表</span>
                    </h3>
                </div>
            </div>
        </div>

        <!--搜索-->
        <div class="search-term m-b-10">
            <form action="{{url("/admin/comment/index")}}" method="get">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>订单编号：</span>
                        </label>
                        <div class="form-control-wrap">
                            <input id="searchmodel-keyword" class="form-control" name="order_sn" placeholder="订单编号"
                                   type="text" value="{{Input::get('order_sn')}}">
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>星级：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select name="rank" class="form-control">
                                <option value="0">全部</option>
                                <option value="1"
                                    @if(Input::get("rank") == 1)
                                        selected
                                    @endif
                                >1颗星</option>
                                <option value="2"
                                        @if(Input::get("rank") == 2)
                                        selected
                                        @endif
                                >2颗星</option>
                                <option value="3"
                                        @if(Input::get("rank") == 3)
                                            selected
                                        @endif
                                >3颗星</option>
                                <option value="4"
                                        @if(Input::get("rank") == 4)
                                            selected
                                        @endif
                                >4颗星</option>
                                <option value="5"
                                        @if(Input::get("rank") == 5)
                                            selected
                                        @endif
                                >5颗星</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>评论状态：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select name="status" class="form-control">
                                <option value="1">已回复</option>
                                <option value="0">未回复</option>
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
                <h3>商品列表</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{$data->getTotal()}}</span>
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
        <div class="item-list-hd">
            <ul class="item-list-tabs">
                <a href="{{url("/admin/comment/index")}}">
                    <li name="all" class="tabs-t current">显示的评价</li>
                </a>
                <a href="{{url("/admin/comment/checking")}}">
                    <li name="un" class="tabs-t ">待审核的评价</li>
                </a>
            </ul>
        </div>
        <!--列表内容-->
        <div class="table-responsive">

            <!---->
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <th style="cursor: pointer;">宝贝信息</th>
                    <th style="cursor: pointer; text-align:center">评价</th>
                    <th style="cursor: pointer;">评价人</th>

                    <!--操作列样式handle-->
                    <th class="handle">操作</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @foreach($data as $row)
                    <tr class="order-tr" name="1">
                        <td>
                            <div class="goodsPicBox pull-left m-r-10">
                                <img src="/images/pic01.png" class="goods-thumb">
                            </div>
                            <div class="ng-binding refund-message">
                                <div class="name">
                                    <a href="#" target="_blank" data-toggle="tooltip" data-placement="auto bottom" title=""
                                       class="c-blue" data-original-title="{{$row->item->product_name}}">{{$row->item->product_name}}</a>
                                </div>

                                <div class="time">下单时间：{{$row->order->created_at}}</div>
                                <div class="time">订单编号：{{$row->order->order_sn}}</div>
                            </div>
                        </td>
                        <!--icon-0为实星，icon-1为虚星-->
                        <td>

                            <div class="ng-binding">
                                <span class="text-c">
                                    <a class="score-icon icon-0 m-r-5"></a>
                                    好评
                                </span>
                                <span class="star-icon text-c">
                                    @for($i = 0; $i < 5; $i++)
                                        @if($i <= $row->leavel)
                                                <i class="icon-0"></i>
                                        @else
                                                <i class="icon-1"></i>
                                        @endif
                                    @endfor
                                </span>
                            </div>
                        </td>
                        <!--b_blue_5.gif为钻级用户，1为一个钻，以此类推；b_red_4.gif为红心级用户；s_cap_4.gif为冠级用户-->
                        <td>
                            <div class="ng-binding">
							<span>
								{{$row->user->real_name}}
								<font class="c-blue">普通会员</font>
							</span>
                            </div>
                        </td>
                        <td class="handle">
                            <a class="hiddens" href="{{url('/admin/comment/detail?'.http_build_query(["c_id" => $row->id]))}}">查看详情</a>&nbsp;&nbsp;
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            @include("admin.public.page",array('data'=>$data,'set'=>$set))
            <!---->
        </div>
    </div>
@stop