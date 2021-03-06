@section('title')会员等级@stop

@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">会员等级 - 新增/编辑</span>
                    </h3>
                    <h5>
				<span class="action-span">
					<a href="vip.html" class="btn btn-warning click-loading">
						<i class="iconfont">&#xe6d4;</i>
						返回会员等级列表
					</a>
				</span>
                    </h5>
                </div>
            </div>
        </div>

        <div class="explanation m-b-10">

            <div class="title">
                <i class="arrow-icon explain-checkZoom" title="点击此处展开或收起"></i>
                <i class="iconfont">&#xe6a7;</i>
                <h4>温馨提示</h4>
            </div>
            <ul class="explain-panel">
                <li>
                    <span>会员等级：由“成长值”决定，成长值越高，会员等级越高</span>
                </li>
                <li>
                    <span>成长值：是会员通过购物所获得的经验值，由累计购物金额计算获得，成长值获得根据确认收货时间计算，成长值按照交易金额的个位数取整计算。例如会员的订单是88.2元，则确认收货后可以得到88点成长值</span>
                </li>
            </ul>
        </div>


        <form id="SystemConfigModel" class="form-horizontal form" action="{{url('admin/group/'.$group->id)}}"
              method="post" novalidate>
            <input type="hidden" name="_method" value="put">
            {{ Form::token() }}

            <div class="table-content m-t-30">

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">等级名称：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text" class="form-control valid" name="name" value="{{$group->name}}"
                                       datatype="*1-30" tipsrmsg="请输入新闻标题" errormsg="名称为1-30字符">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">等级图标：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box addimg">
                                <a href="javascript:;">
                                    <img onclick="getImgTemplet( this,'group' )"
                                         src="{{getImagesUrl('group',$group->id,$group->pic)}}" width="100"
                                         height="100"></a><span>删除</span>
                            </div>
                            <div class="help-block help-block-t">
                                <div class="help-block help-block-t">请上传图片，做为等级图标，建议尺寸20*20像素</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">成长值范围：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text" class="form-control valid w100" name="beg_points"
                                       value="{{(int)$group->beg_points}}"
                                       datatype="n" tipsrmsg="请输入起始值" errormsg="起始值为数字">
                                <span class="Validform_checktip"></span>
                            </div>
                            <br>
                            <br>
                            至
                            <br>
                            <br>

                            <div class="form-control-box">
                                <input type="text" class="form-control valid w100" name="end_points"
                                       value="{{(int)$group->end_points}}"
                                       datatype="n" tipsrmsg="请输入起始值" errormsg="起始值为数字">
                                <span class="Validform_checktip"></span>
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
    <script type="text/javascript" src="{{asset('js/admin/group.js')}}"></script>
@stop