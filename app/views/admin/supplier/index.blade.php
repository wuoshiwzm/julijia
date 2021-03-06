@section('title','入驻列表')
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">供应商 - 入驻列表</span>
                </h3>
            </div>
        </div>
    </div>
    <!--搜索-->
    <div class="search-term m-b-10">
        <form  action="{{Request::url()}}" method="get">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>名称：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input type="text" id="searchmodel-keyword" class="form-control" name="name" value="{{$set['name']}}" placeholder="输入名称">
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>联系人：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input type="text" id="searchmodel-keyword" class="form-control" name="username" value="{{$set['username']}}" placeholder="输入联系人">
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>联系电话：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input type="text" id="searchmodel-keyword" class="form-control" name="phone" value="{{$set['phone']}}" placeholder="输入联系电话">
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <input type="button" id="btn_search" value="查询" class="btn btn-primary m-r-5" onclick="searchCheck( this )">
                <input type="button" id="btn_search" value="新增供应商" class="btn btn-primary m-r-5" onclick="location='{{url('admin/user/supplier/create')}}'">
            </div>
        </form>
    </div>
    <div class="common-title">
        <div class="ftitle">
            <h3>供应商列表</h3>
            <h5>(&nbsp;共<span data-total-record="true">{{$user->getTotal()}}</span>条记录&nbsp;)</h5>
        </div>
        <div class="operate">
            <a class="reload" href="javascript:location.reload();" title="刷新数据"><i class="iconfont">&#xe6fb;</i></a>
        </div>
    </div>
    <!--列表-->
    <div class="table-responsive">
        <table id="table_list" class="table table-hover">
            <thead>
            <tr>
                <th class="w50">编号</th>
                <th class="w200 active">名称</th>
                <th class="w80">公司类型</th>
                <th class="w80">联系人</th>
                <th class="w50">联系电话</th>
                <th class="w100">所在城市</th>
                <th class="w200">详细地址</th>
                <th class="handle w150">操作</th>
            </tr>
            </thead>
            <tbody>
            <!--以下为循环内容-->
            @foreach( $user as $row )
            <tr>
                <td>{{$row->id}}</td>
                <td>{{$row->name}}</td>
                <td>
                 <?php
                    switch ( $row->type )
                    {
                        case "0":
                            echo "有限公司";
                            break;
                        case "1":
                            echo "集团公司";
                            break;
                        case "2":
                            echo "股份公司";
                            break;
                        case "3":
                            echo "个人";
                            break;
                    }
                 ?>
                </td>
                <td>{{$row->lianxiren}}</td>
                <td>{{$row->phone}}</td>
                <td>{{$row->city}}</td>
                <td>{{$row->address}}</td>
                <td class="handle">
                    @if( $row->status == 1 || $row->status == 0 )
                        <a href="{{url('admin/user/supplier/'.encode($row->id).'/edit')}}">审核</a>&nbsp;&nbsp;
                    @elseif( $row->status == 2 )
                        <a href="javascript:;">审核通过</a>&nbsp;&nbsp;
                    @else
                        <a href="{{url('admin/user/supplier/'.encode($row->id).'/edit')}}">审核未通过</a>&nbsp;&nbsp;
                    @endif
                    <a href="javascript:;" class="dele_d" onclick="delSupplier({{"'".encode($row->id)."'"}})" >删除</a>
                </td>
            </tr>
            @endforeach
            <!-- 没有数据显示 -->
            @include('admin.public.null',array('data'=>$user,'cols'=>8))
            </tbody>
        </table>
        <!-- 分页 -->
        @include('admin.public.page',array('data'=>$user,'set'=>$set))
    </div>
</div>
<input type="hidden" id="msg" value="{{Session::get('msg')}}">
{{ Form::token() }}
@stop
@section('footer_js')
    <script type="text/javascript" src="/js/admin/supplier.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop