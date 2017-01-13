@section("title")
    用户管理
@stop
@section("admincss")
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
@stop

@section("content")
<style>
    /* css 重置 */
    *{margin:0; padding:0; list-style:none; }
    .phone{ padding:20px 30px 0px 30px; font-family:"微软雅黑";}
    .phone h1{ height:40px; line-height:34px; font-size:16px; color:##24A0D6; border-bottom:1px solid #24A0D6; }
    .phone ul { padding:20px; }
    .phone ul li{ height:44px; line-height:44px; font-size:16px;}
    .phone ul li font{  float:left; display:block; width:100px; text-align:right;}
    .phone ul li .txt{ height:30px;width:188px; padding:0 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
    .phone ul li .txt2{ width:100px;}
    ul li .textarea{ height:120px;width:340px; padding:6px 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
    .phone .button{ width:158px; color:#fff; height:36px; line-height:36px; background:#24A0D6; border:0; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px;}
    .button02{ margin-left:14px; background:#aaa !important;}
    #order_status{height:30px;width:210px; padding:0 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
</style>
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">管理 - 用户管理</span>
                </h3>
            </div>
        </div>
    </div>
    <!--搜索-->
    <div class="search-term m-b-10">
        <form id="SearchModel" name="SearchModel" action="{{url("/admin/manage/index")}}" method="get">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>用户名：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input id="searchmodel-keyword" class="form-control" name="keyword" placeholder="请输入用户名/Email"
                               type="text" value="{{Input::get("keyword")}}">
                    </div>
                </div>
            </div>

            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>姓名：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input id="searchmodel-keyword" class="form-control" name="full_name" placeholder="请输入姓名"
                               type="text" value="{{Input::get("full_name")}}">
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <input id="btn_search" value="查询" class="btn btn-primary m-r-5" type="submit">
                <input id="btn_search" value="添加" class="btn btn-warning  m-r-5" onclick="location='{{url("/admin/manage/add")}}'"
                       type="button">
            </div>
        </form>
    </div>
    <!-- 工具栏（列表名称、列表显示项设置） -->

    <div class="common-title">
        <div class="ftitle">
            <h3>用户列表</h3>
            <h5>
                (&nbsp;共
                <span data-total-record="true">{{$number}}</span>
                条记录&nbsp;)
            </h5>

        </div>
        <div class="operate">

            <a class="reload" href="" data-toggle="tooltip" data-placement="auto bottom" title=""
               data-original-title="刷新数据">
                <i class="iconfont"></i>
            </a>
        </div>
    </div>
    <!--列表内容-->
    <div class="table-responsive">
        <table id="table_list" class="table table-hover">
            <thead>
            <tr>
                <th class="tcheck w60">
                    {{--<input class="table-list-checkbox-all" title="全选/全不选" type="checkbox">--}}
                </th>
                {{--<th class=" w100">排序<span class="sort"></span></th>--}}
                <th class=" w100">编号</th>
                <th class=" w150">用户名</th>
                <th class=" w150">Email</th>
                <th class=" w150">所在组</th>
                <th class=" w150">姓名</th>
                <th class=" w100">状态</th>
                <th class=" w150">创建时间</th>
                <th class=" w150">修改时间</th>
                <th class="handle w300">操作</th>
            </tr>
            </thead>
            <tbody>
            @foreach($users as $row)
                <tr>
                <td class="tcheck">
                    <input class="checkBox table-list-checkbox" value="420" type="checkbox">
                </td>
                <td>
                    {{$row->user_id}}
                </td>
                <td>
                    {{$row->account}}
                </td>
                <td>
                    {{$row->email}}
                </td>
                <td>
                     {{$row->group->group_name}}
                </td>
                <td>
                    {{$row->fullname}}
                </td>
                <td>
                    @if($row->status == 1)
                        已启动
                    @else
                        已禁用
                    @endif
                </td>
                <td>
                    {{$row->updated_at}}
                </td>
                <td>
                     {{$row->created_at}}
                </td>
                <td class="handle">
                    <a href="{{url("/admin/manage/edit?".http_build_query(['user_id' => $row->user_id]))}}">编辑</a>
                <span>|</span>
                    <a href="javascript:void(0);" class="user_mi" data-id="{{$row->user_id}}">重置密码</a>
                <span>|</span>
                    <a href="javascript:void(0);" class="offsale-goods dele_user" data-id="{{$row->user_id}}">删除</a>
                </td>
                </tr>
            @endforeach
            </tbody>
            <tfoot>
            <tr>
                <td class="text-c w10">
                    <input class="table-list-checkbox-all" title="全选/全不选" type="checkbox">
                </td>
                <td colspan="4">
                    <div class="pull-left">
                        <input class="btn btn-danger m-r-2 batch-offsale-goods dele_user" value="删除" type="button">
                    </div>
                </td>
                <td colspan="6">
                    @include("admin.public.page",array('data'=>$users,'set'=>$set))
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
<div class="phone" style="display: none">
    <h1>重置密码</h1>
    <form>
        <ul>
            <li><font>新密码：</font>
                <input name="newpassword" type="password" class="txt" id="password">
            </li>
            <li>
                <input name="confirm" type="button" value="确认"  class="button" id="confirm">
                <input name="cancel" type="button" value="取消"  class="button button02" id="cancel">
            </li>
        </ul>
    </form>
</div>
@stop
@section("footer_js")
    <script type="text/javascript" src="{{url('js/admin/jquery.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/bootstrap.merge.min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/bootstrap-switch.min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/admin/common.js')}}"></script>
    <script type="text/javascript" src="{{url('js/public/layer/layer.js')}}"></script>
    <script type="text/javascript" src="{{url("js/admin/manage/index.js")}}"></script>
@stop