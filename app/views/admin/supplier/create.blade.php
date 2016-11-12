@section('title','入驻')
@section('admincss')
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css').'?v='.Config::get('tools.adminJsTime')}}">
@stop
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">供应商-新增</span>
                </h3>
                <h5>
                <span class="action-span">
                    <a href="{{url('admin/user/supplier')}}" class="btn btn-warning click-loading">
                        <i class="iconfont">&#xe6d4;</i>
                        返回供应商列表
                    </a>
                </span>
                </h5>
            </div>
        </div>
    </div>
    <form id="SystemConfigModel" class="form-horizontal form"  method="post"  action="{{url('admin/user/supplier')}}" novalidate>
        {{ Form::token() }}
        <div class="table-content m-t-30">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">公司名称：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text" class="form-control valid"  name="name"  ajaxurl="/admin/getonlyinfo?type=Supplier" datatype="s2-30" maxlength="30" tipsrmsg="请输入公司名称" errormsg="公司名称2-30个字符">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">营业证：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="yingyehao" datatype="s2-30" maxlength="20" tipsrmsg="请输入营业证" errormsg="营业证格式不正确">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">公司类型：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w180" name="type">
                                <option value="0">有限公司</option>
                                <option value="1">集团公司</option>
                                <option value="2">股份公司</option>
                                <option value="3">个人</option>
                            </select>
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">注：选择公司类型</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">联系人：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="lianxiren" datatype="un"  maxlength="6" tipsrmsg="请输入联系人" errormsg="联系人格式不正确">
                            <span class="Validform_checktip"></span>
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">注：便于我们与您联系</div></div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">手机：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="phone" datatype="m"  tipsrmsg="请输入电话号码" errormsg="电话号码格式不正确">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">固定电话：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="tel" datatype="tel"   tipsrmsg="请输入固定电话" errormsg="电话格式不正确">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">邮编：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid"  name="postcode" datatype="postcode"   tipsrmsg="请输入邮编" errormsg="邮编格式不正确">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">区域：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select id="province" class="form-control m-r-5 valid w150" aria-invalid="false" onchange="getCityList(this)" >
                                <option value="0">请选择省份</option>
                                @foreach( $province as $row )
                                    <option value="{{$row->provinceID}}">{{$row->province}}</option>
                                @endforeach
                            </select>
                            <select id="city" class="form-control m-r-5 m-l-5 w150" datatype="*|select" name="city">
                                <option value="0">请选择城市</option>
                            </select>
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">公司地址：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="address" datatype="s4-50"   tipsrmsg="请输入公司地址" errormsg="公司地址为4-50个字符">
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">法人：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="faren" datatype="un"  maxlength="6" tipsrmsg="请输入法人" errormsg="法人格式不正确">
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">注册资金：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="zhuce_zijin" maxlength="11" datatype="n1-11"  tipsrmsg="请输入注册资金" errormsg="注册资金最大长度11位">
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">开户行：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w180" name="bank">
                                <option value="建设银行">建设银行</option>
                                <option value="中国银行">中国银行</option>
                                <option value="工商银行">工商银行</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">公司账号：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="bank_num" maxlength="11" datatype="n1-20"  tipsrmsg="请输入公司账号" errormsg="公司账号最大长度20位">
                        </div>
                        <div class="help-block help-block-t"><div class="help-block help-block-t">公司汇款和财务结账</div></div>
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
        <input type="hidden" value="2" name="status">
    </form>
</div>
@stop
@section('footer_js')
    <script type="text/javascript" src="/js/admin/supplier.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop