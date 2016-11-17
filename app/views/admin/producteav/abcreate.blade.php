@section('title','添加属性')
@section('admincss')
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css').'?v='.Config::get('tools.adminJsTime')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css').'?v='.Config::get('tools.adminJsTime')}}">
@stop
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3><span class="action">添加属性</span></h3>
                <h5>
				<span class="action-span">
					<a href="{{url('admin/product/attribute_index')}}" class="btn btn-warning click-loading">
                        <i class="iconfont">&#xe6d4;</i>
                        返回属性列表
                    </a>
				</span>
                </h5>
            </div>
        </div>
    </div>
    <!--表单-->
    <form id="SystemConfigModel" class="form-horizontal form"  action="{{url('admin/product/attribute_store')}}" method="post">
        <div class="table-content m-t-30 ">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">属性名称：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  name="name" class="form-control valid" datatype="/^[a-z]{3,20}$/" tipsrmsg="请输入3-20位英文字母" errormsg="3-20位英文字母">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">后台标题：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  name="admin_label" class="form-control valid" datatype="s3-20" tipsrmsg="请输入3-20位字符" errormsg="3-20位字符">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">类 型：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select name="type" class="form-control valid w200" >
                                <option value="varchar">varchar</option>
                                <option value="text">text</option>
                                <option value="int">int</option>
                                <option value="smallint">smallint</option>
                                <option value="decimal">decimal</option>
                            </select>
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">选择数据类型</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">长 度：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  name="length" class="form-control valid" datatype="n1-3" tipsrmsg="请输入1-3位数字" errormsg="请输入1-3位数字">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">前端类型：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w200" name="front_input" onchange="InputType( this )">
                                <option value="text">文本框</option>
                                <option value="radio">单选</option>
                                <option value="checkbox">多选</option>
                                <option value="select">下拉列表</option>
                                <option value="textarea">文本域</option>
                                <option value="file">文件选择</option>
                                <option value="time">时间</option>
                                <option value="meida">图片</option>
                            </select>
                        </div>
                        <div class="shezi" style="display: none;">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>文本</th>
                                    <th>值</th>
                                    <th>默认</th>
                                    <th class="hiddens"><a class="hiddens add" href="javascript:;">添 加</a></th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">前端标题：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  name="front_lable" class="form-control valid"  datatype="s3-20" tipsrmsg="请输入3-20位字符" errormsg="3-20位字符">
                            <span class="Validform_checktip"></span>
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
                            <input type="text"  name="sort"  class="form-control valid"  datatype="n1-3" tipsrmsg="请输入1-3位数字" errormsg="请输入1-3位数字">
                            <span class="Validform_checktip"></span>
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">数字越大，排名越前</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">是否隐藏：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <div>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_hidden" value="0" >是</label>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_hidden" value="1" >否</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">是否必填：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <div>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_required" value="1" >是</label>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_required" value="0" >否</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">是否多元素：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <div>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_fiter" value="1" >是</label>
                                <label class="control-label cur-p m-r-10"><input type="radio" name="is_fiter" value="0" >否</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">验证规则：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w200" name="valid_rule">
                                <option value="n">数字验证</option>
                                <option value="s">位数验证</option>
                                <option value="*">必填项</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">错误提示：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text" name="errormsg" class="form-control valid" datatype="s3-20" tipsrmsg="请输入3-20位字符" errormsg="3-20位字符">
                            <span class="Validform_checktip"></span>
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">验证不通过，错误提示信息</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">资源模型：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text" name="model" class="form-control valid" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field p-b-30">
                <div class="form-group">
                    <label for="text4" class="col-sm-4 control-label"></label>
                    <div class="col-xs-8">
                        <input type="submit" id="btn_submit" value="确认提交" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@stop
@section('footer_js')
    <script type="text/javascript" src="/js/admin/admineav.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop