@section('title','分类添加')
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">分类-新增</span>
                </h3>
                <h5>
                <span class="action-span">
                    <a href="{{url('admin/product/category')}}" class="btn btn-warning click-loading">
                        <i class="iconfont">&#xe6d4;</i>
                        返回列表
                    </a>
                </span>
                </h5>
            </div>
        </div>
    </div>
    <form id="SystemConfigModel" class="form-horizontal form"  action="{{url('admin/product/category')}}" method="post" >
        {{ Form::token() }}
        <div class="table-content m-t-30">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">分类名称：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" placeholder="输入分类名称" name="name"  ajaxurl="/admin/getonlyinfo?type=category" datatype="s2-20" tipsrmsg="请输入2-20位字符" errormsg="请输入2-20位字符（不包含特殊字符）" >
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">上级分组：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w200" name="parent_id" onchange="setLeavel( this );" datatype="*|select">
                                <option value="0" value-leavel="1" >根目录</option>
                                @foreach($type as $row )
                                    <option value="{{$row->id}}" value-leavel="{{$row->leavel+1}}" >{{$row['prefix']}}{{$row->name}}</option>
                                @endforeach
                            </select>
                            <input type="hidden" value="1" name="leavel">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">自定义url：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" placeholder="输入自定义url，便于优化" name="url" datatype="*2-30" tipsrmsg="请输入url地址" errormsg="url为2-30字符" >
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">关键字：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" placeholder="关键字"  name="keywords"  ignore="ignore" datatype="s3-100" tipsrmsg="请输入关键字（不包含特殊字符）" errormsg="长度在3-100内的汉字或字符（不包含特殊字符）">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">关键字描述：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" placeholder="关键字描述"  name="meta_desc"  ignore="ignore" datatype="s3-200" tipsrmsg="请输入关键字描述（不包含特殊字符）" errormsg="长度在3-200内的汉字或字符（不包含特殊字符）">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">分类图标：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box addimg">
                            <a href="javascript:;"><img  onclick="getImgTemplet( this,'path' )"  src="{{url('images/admin/addimg.png')}}" width="100" height="100"></a>
                            <input type="hidden" value="" name="path" id="path">
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">请上传图片，做为品牌的LOGO，建议尺寸100*40像素</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">描 	述：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <textarea class="form-control valid w500" rows="8" aria-invalid="false" name="desc" id="desc"></textarea>
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">是否显示：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <div>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="status" value="1">是</label>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="status" value="0" checked="checked">否</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">排 序：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid w150" placeholder="0" name="sort" ignore="ignore" datatype="n1-3" maxlength="3" tipsrmsg="请输入1-3为正整数" errormsg="输入1-3为正整数">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field p-b-30">
                <div class="form-group">
                    <label for="text4" class="col-sm-4 control-label"></label>
                    <div class="col-xs-8">
                        <input type="button" id="btn_submit" value="确认提交" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@stop
@section('footer_js')
    <script charset="utf-8" src="/js/public/kindeditor/kindeditor.js"></script>
    <script charset="utf-8"src="/js/public/kindeditor/lang/zh_CN.js"></script>
    <script type="text/javascript" src="/js/admin/category.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop