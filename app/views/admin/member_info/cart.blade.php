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
                <h3>购物车</h3>
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
                    <th class="w250" style="cursor: pointer;">商品编号</th>
                    <th class="w250" style="cursor: pointer;">商品名称</th>
                    <th class="w150" style="cursor: pointer;">SKU</th>
                    <th class="w150" style="cursor: pointer;">数量</th>
                    <th class="w150" style="cursor: pointer;">价格</th>
                    <th class="w150" style="cursor: pointer;">合计</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @foreach($data as $goods)
                    <tr>
                        <td>
                            {{$goods->product_id}}
                        </td>
                        <td>
                            {{$goods->product_name}}
                        </td>
                        <td>
                            {{$goods->product_sku}}
                        </td>
                        <td>
                            {{$goods->num}}
                        </td>
                        <td>
                            {{$goods->price}}
                        </td>
                        <td>
                            {{$goods->row_total}}
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
