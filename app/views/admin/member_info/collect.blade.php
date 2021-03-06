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
                <h3>收藏</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{count($list)}}</span>
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
                    <th class="w150" style="cursor: pointer;">价格</th>
                    <th class="w150" style="cursor: pointer;">收藏时间</th>

                </tr>
                </thead>
                <tbody>
                @if(isset($list)&&count($list)>0)
                    @foreach($list as $val)
                <tr>
                    <td>
                        {{$val->entity_id}}
                    </td>
                    <td>
                        {{$val->entity_name}}
                    </td>
                    <td>
                        {{$val->sku}}
                    </td>
                    <td>
                        {{$val->price}}
                    </td>
                    <td>
                        {{$val->created_at}}
                    </td>

                </tr>
                @endforeach
                @else
                <tr>
                    <td colspan="5">
                        <p style="text-align: center"> 对不起，没有查询到数据</p>
                    </td>
                </tr>
                 @endif
                </tbody>

            </table>

            @include('admin.public.page',array('data'=>$list,'set'=>$set))


        </div>

    </div>


@stop
