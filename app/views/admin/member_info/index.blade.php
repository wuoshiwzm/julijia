@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">会员</span>
                    </h3>
                </div>
            </div>
        </div>
        <!--搜索-->
        <div class="search-term m-b-10">
            <form action="##" method="POST">
                <input type="hidden" name="_csrf" value="##">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>关键字查询：</span>
                        </label>

                        <div class="form-control-wrap">
                            <input type="text" id="searchmodel-keyword" class="form-control" name="keyword"
                                   placeholder="会员名称/电话/Email">
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>会员等级：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select id="##" class="form-control">
                                <option value="">全部</option>
                                <option value="1">普通会员</option>
                                <option value="0">高级会员</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <input type="button" id="btn_search" value="查询" class="btn btn-primary m-r-5">
                    <input type="button" id="btn_search" value="导出" class="btn btn-primary m-r-5">
                </div>
            </form>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3>会员列表</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">309</span>
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
        <!--列表内容-->
        <div class="table-responsive">
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w80" style="cursor: pointer;">编号</th>
                    <th class="w100" style="cursor: pointer;">会员信息</th>
                    <th class="w80" style="cursor: pointer;">会员等级</th>
                    <th class="w80" style="cursor: pointer;">交易笔数</th>
                    <th class="w100" style="cursor: pointer;">上次交易时间</th>
                    <th class="handle w100">操作</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                @foreach($data as $info )
                <tr>
                    <td>
                        {{$info->id}}
                    </td>
                    <td>
                        <div class="userPicBox pull-left m-r-10">
                            <img src="../images/pic01.png" class="user-avatar" width="44px">
                        </div>
                        <div class="ng-binding user-message w250">
							<span class="mail">
								<i class="fa fa-envelope-o"></i>{{$info->name}}</span><br>
                            <span class="tel">
								<i class="iconfont">&#xe6c7;</i>：{{$info->mobile_phone}}
							</span>
                        </div>
                    </td>
                    <td>
                        <div class="ng-binding">
                            <span>{{$info->group->name}}</span><br>
                            {{--<span>折扣:9.5折</span>--}}
                        </div>
                    </td>
                    <td>{{$info->order->count()}}笔</td>
                    <td>
                        {{$info->orderLasttime}}
                    </td>
                    <td class="handle">
                        <a href="{{url('admin/member/welc/'.$info->id)}}">详情</a>
                    </td>
                </tr>

                @endforeach
                </tbody>

            </table>

            @include('admin.public.page',array('data'=>$data,'set'=>$set))


        </div>

    </div>

@stop