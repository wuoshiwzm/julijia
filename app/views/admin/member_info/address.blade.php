@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title item-title02">
                <div class="subject">
                    <h3>
                        <span class="action">会员 - 详情</span>
                    </h3>
                    @include('admin.member_info.view.tab')
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
                @if($data->count())
                    @foreach($data as $addr)
                        <tr>
                            <td>
                                @if($addr->status == 1)
                                    <font style="color:#06C">默认地址</font>
                                    @else
                                    <font style="color:#06C">非默认地址</font>
                                @endif
                            </td>
                            <td>
                                {{$addr->name}}
                            </td>
                            <td>
                                {{$addr->phone}}
                            </td>
                            <td>
                                {{$addr->address}}
                            </td>
                            <td>{{$addr->tel}}</td>
                            <td>
                                {{$addr->zipcode}}
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td>
                             无地址信息...
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td> </td>
                        <td>

                        </td>
                    </tr>

                @endif


                </tbody>

            </table>


                @include('admin.public.page',array('data'=>$data,'set'=>$set))



        </div>

    </div>


@stop
