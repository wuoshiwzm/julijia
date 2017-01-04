@section("title")
    编辑权限
@stop
@section("content")
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">权限管理 - 编辑编辑</span>
                    </h3>
                    <h5>
				<span class="action-span">
					<a href="{{url("/admin/navigation/index")}}" class="btn btn-warning click-loading">
                        <i class="iconfont"></i>
                        返回权限列表
                    </a>
				</span>
                    </h5>
                </div>
            </div>
        </div>

        <form id="SystemConfigModel" class="form-horizontal m-form" method="post" action="{{url('/admin/navigation/update')}}" novalidate="">
            <div class="table-content m-t-30">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">父级：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <select class="form-control"  name="parent_id"  >
                                    <option value="0">Root Category [ID:0]</option>
                                    @foreach($navigations as $navigation)
                                        <option
                                            @if($nav->parent_id == $navigation["navigation_id"])
                                                selected="selected"
                                            @endif
                                        value="{{$navigation["navigation_id"]}}">{{$navigation["str_padding"]}}{{$navigation["title"]}}</option>
                                    @endforeach
                               </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">权限名称：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input class="form-control"
                                       value="{{$nav->title}}"
                                       name="title" datatype="*" errormsg="请输入" tipsrmsg="请输入" placeholder="请输入权限名称" type="text">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">连接地址：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input class="form-control" value="{{$nav->link}}" type="text" name="link_url">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding ">是否显示：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <div>
                                    <label class="control-label cur-p">是</label>
                                    <input name="is_show"
                                           @if($nav->is_show == 1)
                                            checked="checked"
                                           @endif
                                           datatype="*" errormsg="请选择是否显示" value="1" type="radio">
                                    <label class="control-label cur-p">否</label>
                                    <input  name="is_show" value="0"
                                            @if($nav->is_show == 0)
                                            checked="checked"
                                            @endif
                                            type="radio">
                                    <span class="Validform_checktip"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">显示图标：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input class="form-control"  name="icon" value="{{htmlentities($nav->icon)}}" type="text">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            {{--<span class="text-danger ng-binding">*</span>--}}
                            <span class="ng-binding">序号：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input class="form-control"  value="{{$nav->sort}}" errormsg="请输入数字" tipsrmsg="请输入"  datatype="empty|n"  type="text" name="sort_order">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field p-b-30">
                    <div class="form-group">
                        <label for="text4" class="col-sm-4 control-label"></label>
                        <div class="col-xs-8">
                            <input type="hidden" name="navigation_id" value="{{Input::get("id")}}" >
                            <input id="btn_submit" value="确认保存" class="btn btn-primary" type="submit">
                        </div>
                    </div>
                </div>

            </div>
        </form>
    </div>
@stop
@section("footer_js")
    <script type="text/javascript" src="{{url('js/admin/jquery.js')}}"></script>
    <script type="text/javascript" src="{{url('js/public/Validform/Validform_v5.3.2_min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/public/layer/layer.js')}}"></script>
    @if(Session::has('msg'))
        <script>
            var msg = "{{Session::get('msg')}}" ;
            layer.msg(msg);
        </script>
    @endif

    <script>
        //初始化验证//
        $(".m-form").Validform({
            altercss:'Validform_skate',
            postonce:true,
            showAllError:true,
            postonce:true,
            datatype: {
                "empty": /^\s*$/
            },
            tiptype:function(msg,o,cssctl){
                if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
                    var objtip=o.obj.parent().find(".Validform_checktip");
                    objtip.removeClass('Validform_skate');
                    cssctl(objtip,o.type);
                    objtip.text(msg);
                }else{
                    var objtip=o.obj.find("#msgdemo");
                    objtip.removeClass('Validform_skate');
                    cssctl(objtip,o.type);
                    objtip.text(msg);
                }
            }
        });
    </script>

@stop