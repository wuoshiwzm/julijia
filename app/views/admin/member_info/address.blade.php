@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title item-title02">
                <div class="subject">
                    <h3>
                        <span class="action">会员 - 详情</span>
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
                        <li><a class="current" href="{{url('admin/member/address/'.$user_id)}}">
                                <span>收货地址</span>
                            </a>
                        </li>
                        <li><a href="{{url('admin/member/orders/'.$user_id)}}">
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
                <h3>收货地址列表</h3>

                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{$data->count()}}</span>
                    条记录&nbsp;)
                </h5>

            </div>
            <div class="operate">
                <a class="reload" href="javascript:reload();" data-toggle="tooltip" data-placement="auto bottom"
                   title="" data-original-title="刷新数据">
                    <i class="iconfont">&#xe6fb;</i>
                </a>
            </div>
        </div>

        <div class="table-responsive">
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w150" style="cursor: pointer;">地址状态</th>
                    <th class="w150" style="cursor: pointer;">收货人</th>
                    <th class="w250" style="cursor: pointer;">手机</th>
                    <th class="w250" style="cursor: pointer;">详细地址</th>
                    <th class="w150" style="cursor: pointer;">固定电话</th>
                    <th class="w150" style="cursor: pointer;">邮政编码</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @if($data)
                    @foreach($data as $addr)
                        <tr>
                            <td>
                                @if($addr->status == 1)
                                    <font style="color:#06C">默认地址</font>
                                @endif
                            </td>
                            <td>
                                {{$user->name}}
                            </td>
                            <td>
                                {{$addr->phone}}
                            </td>
                            <td>
                                {{$addr->address}}
                            </td>
                            <td>{{$addr->tel}}</td>
                            <td>
                                {{$addr->zip_code}}
                            </td>
                        </tr>
                    @endforeach
                @else
                    <h1>您目前没有录入任何地址</h1>
                @endif


                </tbody>

            </table>

            <div class="pull-right page-box">
                @include('admin.public.page',array('data'=>$data,'set'=>$set))
            </div>


        </div>

    </div>


@stop