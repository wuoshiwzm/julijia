@section('title','优惠券新增')
@section('content')
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3><span class="action">优惠券 - 新增</span></h3>
                <h5>
                    <span class="action-span">
                     <a href="{{url('admin/marketing/coupon')}}" class="btn btn-warning click-loading"><i class="iconfont">&#xe6d4;</i>返回优惠劵列表</a>
                    </span>
                </h5>
            </div>
        </div>
    </div>
    <form id="SystemConfigModel" class="form-horizontal form" method="post" action="{{url('admin/marketing/coupon')}}">
        {{ Form::token() }}
        <div class="table-content m-t-30 ">
            <h5 class="tab_h5"><font class="iconfont">&#xe64e;</font>基本信息</h5>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">标 题：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="name" ajaxurl="/admin/getonlyinfo?type=rule" datatype="s2-15" maxlength="15" tipsrmsg="请输入品牌名称" errormsg="品牌名称为2-15个字符">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">备注信息：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <textarea class="form-control valid" name="desc" rows="5" maxlength="300" style="height:60px"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="text-danger ng-binding">*</span>
                        <span class="ng-binding">优惠券：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="rule_code" ajaxurl="/admin/getonlyinfo?type=rule_code" datatype="s2-30" maxlength="30" tipsrmsg="请输入优惠券" errormsg="优惠券为2-15个字符">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">状 态：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w100" name="status"  >
                                <option value="0">启用</option>
                                <option value="1" selected="selected">禁用</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">发行数量：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="lssue_num" datatype="n1-6" maxlength="6" tipsrmsg="请输入发行数量" errormsg="发行数量长度为6位正整数" >
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">使用次数：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="userd_num" datatype="n1-6" maxlength="6" tipsrmsg="请输入使用次数" errormsg="使用次数长度为6位正整数">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">每人/每天：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="per_num" datatype="n1-6" maxlength="6" tipsrmsg="请输入每人/每天使用数量" errormsg="每人/每天使用数量长度为6位正整数">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">开始时间：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="from_date"  onfocus="WdatePicker()"  value="{{date("Y-m-d")}}" datatype="time" tipsrmsg="请输入开始时间" errormsg="时间格式有误">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">结束时间：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="to_date"  onfocus="WdatePicker()" value="{{date("Y-m-d")}}" datatype="time" maxlength="6" tipsrmsg="请输入结束时间" errormsg="时间格式有误">
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <h5 class="tab_h5"><font class="iconfont">&#xe663;</font>触发条件</h5>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">触发条件：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w200" name="type" onchange="condition( this )">
                                <option value="subtotal">购物车小计</option>
                                <option value="number">购物数量</option>
                                <option value="weight">总重量</option>
                                <option value="payment">支付方式</option>
                                <option value="goods">选定产品</option>
                                <option value="classification">选择分类</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field" id="content">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">购物车小计：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w130" name="yunsuanfu">
                                <option value="<">大于</option>
                                <option value=">">小于</option>
                                <option value="=">等于</option>
                                <option value="<=">大于等于</option>
                                <option value=">=">小于等于</option>
                            </select>&nbsp;&nbsp;
                            <input type="text"  class="form-control valid w100" name="value" datatype="je" maxlength="10" tipsrmsg="请输入金额" errormsg="金额限制2位小数（大于0）">&nbsp;&nbsp;元
                            <span class="Validform_checktip"></span>
                        </div>
                    </div>
                </div>
            </div>
            <h5 class="tab_h5"><font class="iconfont">&#xe66c;</font>使用操作</h5>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">触发条件：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <select class="form-control valid w100" onchange="setType( this )">
                                <option value="1">固定折扣</option>
                                <option value="2">百分比</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span class="ng-binding">折扣金额：</span>
                    </label>
                    <div class="col-sm-8">
                        <div class="form-control-box">
                            <input type="text"  class="form-control valid" name="discount_amount" datatype="je" maxlength="10" tipsrmsg="请输入折扣金额" errormsg="折扣金额限制2位小数（大于0）">
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
    <script type="text/javascript" src="/js/public/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/js/admin/coupons.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop
