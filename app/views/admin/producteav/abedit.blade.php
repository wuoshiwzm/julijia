@section('title','编辑属性')
@section('admincss')
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css').'?v='.Config::get('tools.adminJsTime')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css').'?v='.Config::get('tools.adminJsTime')}}">
@stop
@section('content')
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3><span class="action">编辑属性</span></h3>
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
        <form id="SystemConfigModel" class="form-horizontal"  action="{{url('admin/product/attribute_edit')}}" method="post">
            <input type="hidden"  name="id" value="{{encode($data->id)}}">
            <div class="table-content m-t-30 ">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">属性名称：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text"  name="name" value="{{$data->name}}" class="form-control valid"  datatype="/^[a-z]{3,20}$/" tipsrmsg="请输入3-20位英文字母" errormsg="3-20位英文字母">
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
                                <input type="text"  name="admin_label" value="{{$data->admin_label}}" class="form-control valid" datatype="s2-20" tipsrmsg="请输入2-20位字符" errormsg="2-20位字符">
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
                                    <option value="varchar" @if( $data->type == 'varchar' ) selected="selected" @endif >输入框</option>
                                    <option value="text" @if( $data->type == 'text' ) selected="selected" @endif>文本域</option>
                                    <option value="int" @if( $data->type == 'int' ) selected="selected" @endif>整数类型</option>
                                    <option value="decimal" @if( $data->type == 'decimal' ) selected="selected" @endif>小数类型</option>
                                    <option value="timestamps" @if( $data->type == 'timestamps' ) selected="selected" @endif>时间类型</option>
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
                                <input type="text"  name="length" value="{{$data->length}}" class="form-control valid" datatype="n1-3" tipsrmsg="请输入1-3位数字" errormsg="请输入1-3位数字">
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
                            @if( $data->front_input == 'radio' ||  $data->front_input == 'checkbox' || $data->front_input == 'select' )
                            <div class="shezi">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <th>文本</th>
                                        <th>值</th>
                                        <th>默认</th>
                                        <th>图片</th>
                                        <th class="hiddens"><a class="hiddens add" href="javascript:;">添 加</a></th>
                                    </tr>
                                    @foreach( $data->ButeToButeValue()->get() as $row )
                                    <tr>
                                        <input type="hidden"  name="editid[]" value="{{$row->id}}">
                                        <td><input type="text" name="editvalue[]" maxlength="100" class="form-control valid w100 value" value="{{$row->value}}"></td>
                                        <td><input type="text" name="edittext[]" maxlength="100" class="form-control valid w100 text" value="{{$row->text}}"></td>
                                        <td class="tcheck text-c"><input type="checkbox" class="checkBox table-list-checkbox"></td>
                                        <td class="tcheck"><span><img onclick="getImgTemplet( this )"  src="{{getImagesUrl('attribute',$data->id,$row->images)}}" onerror="src='/images/admin/addimg.png'" height="32" width="32"></span></td>
                                        <td class="hiddens"><a class="hiddens dele_d" href="javascript:;" onclick="delValueIetm( this )">删 除</a></td>
                                        <input type="hidden" name="editimages[]" value="{{$row->images}}">
                                    </tr>
                                    @endforeach
                                </table>
                                <div id="oldID">
                                <!--删除的id-->
                                </div>
                            </div>
                            @else
                            <div class="form-control-box">
                                <select class="form-control valid w200">
                                    @if(  $data->front_input == 'text')
                                    <option value="text">文本框</option>
                                    @endif
                                    @if(  $data->front_input == '文本域')
                                    <option value="textarea">文本域</option>
                                    @endif
                                    @if(  $data->front_input == 'time')
                                    <option value="time">时间</option>
                                    @endif
                                </select>
                            </div>
                            @endif
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
                                <input type="text"  name="front_lable" value="{{$data->front_lable}}" class="form-control valid" datatype="s2-20" tipsrmsg="请输入2-20位字符" errormsg="2-20位字符">
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
                                <input type="text"  name="sort" value="{{$data->sort}}" class="form-control valid" datatype="n1-3" tipsrmsg="请输入1-3位数字" errormsg="请输入1-3位数字">
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
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_hidden" value="1" @if( $data->is_hidden == 1) checked="checked"@endif>是</label>
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_hidden" value="0" @if( $data->is_hidden == 0) checked="checked"@endif>否</label>
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
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_required" value="1" @if( $data->is_required == 1) checked="checked"@endif>是</label>
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_required" value="0" @if( $data->is_required == 0) checked="checked"@endif>否</label>
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
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_fiter" value="1"  @if( $data->is_fiter == 1) checked="checked" @endif>是</label>
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="is_fiter" value="0"  @if( $data->is_fiter == 0) checked="checked" @endif >否</label>
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
                                    <option value="n" @if($data->valid_rule == 'n') selected="selected" @endif >数字类型</option>
                                    <option value="s" @if($data->valid_rule == 's') selected="selected" @endif>位数验证</option>
                                    <option value="*" @if($data->valid_rule == '*') selected="selected" @endif>必填项</option>
                                    <option value="p" @if($data->valid_rule == 'p') selected="selected" @endif >邮政编码</option>
                                    <option value="m" @if($data->valid_rule == 'm') selected="selected" @endif>手机号码</option>
                                    <option value="e" @if($data->valid_rule == 'e') selected="selected" @endif>email格式</option>
                                    <option value="url" @if($data->valid_rule == 'url') selected="selected" @endif>email格式</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">默认提示：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text" name="tipgs" value="{{$data->tipgs}}"  class="form-control valid" datatype="s3-20" tipsrmsg="请输入3-20位字符" errormsg="3-20位字符">
                                <span class="Validform_checktip"></span>
                            </div>
                            <div class="help-block help-block-t"><div class="help-block help-block-t">鼠标获取焦点，默认提示</div></div>
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
                                <input type="text" name="errormsg" value="{{$data->errormsg}}" class="form-control valid" datatype="s3-20" tipsrmsg="请输入3-20位字符" errormsg="3-20位字符">
                                <span class="Validform_checktip"></span>
                            </div>
                            <div class="help-block help-block-t"><div class="help-block help-block-t">验证不通过，错误提示信息</div></div>
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