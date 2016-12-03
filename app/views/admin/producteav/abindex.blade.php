@section('title','属性管理')
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">商品属性</span>
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
                        <span>属性名称：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input type="text"  class="form-control" name="name" value="{{$set['name']}}" placeholder="请输入名称">
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <input type="button" id="btn_search" value="查询" class="btn btn-primary m-r-5" onclick="searchCheck( this )">
                <input type="button" id="btn_search" value="新增" onclick="location='{{url('admin/product/attribute_create')}}'" class="btn btn-primary m-r-5 attbute_add_ji">
            </div>
        </form>
    </div>
    <div class="common-title">
        <div class="ftitle">
            <h3>属性列表</h3>
            <h5>(&nbsp;共<span data-total-record="true">{{$data->getTotal()}}</span>条记录&nbsp;)</h5>
        </div>
        <div class="operate">
            <a class="reload" href="javascript:location.reload();" title="刷新数据"><i class="iconfont">&#xe6fb;</i></a>
        </div>
    </div>
    <!--列表内容-->
    <div class="table-responsive">
        <table id="table_list" class="table table-hover">
            <thead>
            <tr>
                <th class="w80">编 号</th>
                <th class="w150">属性名称</th>
                <th class="w150">属性标签</th>
                <th class="w150">类 型</th>
                <th class="w80">是否系统</th>
                <th class="w80">是否必填</th>
                <th class="w150">后台标题</th>
                <th class="w150">验证规则</th>
                <th class="w150">创建时间</th>
                <th class="handle w150">操作</th>
            </tr>
            </thead>
            <tbody>
            <!--以下为循环内容-->
            @foreach( $data as $row )
            <tr>
                <td>{{$row->id}}</td>
                <td>{{$row->name}}</td>
                <td>{{$row->front_input}}</td>
                <td>{{$row->type}}</td>
                <td>{{$row->is_system?'是':'否'}}</td>
                <td>{{$row->is_required?'是':'否'}}</td>
                <td>{{$row->admin_label}}</td>
                <td>{{$row->valid_rule}}</td>
                <td>{{$row->created_at}}</td>
                <td class="handle">
                    @if( $row->is_system == 0 )
                    <a href="{{url('admin/product/attribute_edit?id=').encode($row->id)}}">编辑</a>&nbsp;&nbsp;
                    <a href="javascript:;" class="dele_d"  onclick="delAttribute({{"'".encode($row->id)."'"}})">删除</a>
                    @endif
                </td>
            </tr>
            @endforeach
            <!-- 没有数据显示 -->
            @include('admin.public.null',array('data'=>$data,'cols'=>10))
            </tbody>
        </table>
        <!-- 分页 -->
        @include('admin.public.page',array('data'=>$data,'set'=>$set))
    </div>
</div>
<input type="hidden" id="msg" value="{{Session::get('msg')}}">
@stop
@section('footer_js')
    <script type="text/javascript" src="/js/admin/admineav.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop