@section('title')

    修改密码
@stop


@section('admincss')
@stop


@section('left')
    @include('member.public.left_config')
@stop

@section('content')

    <div class="ge_admin_nei_right">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>




        <div class="admin_form">
            <div class="h-title">
                密码设置<font>password</font>
            </div>

            @if(Session::has('msg'))
                <p class="alert">{{Session::get('msg')}}</p>
            @endif
            <form class="layui-form m-form form" action="{{url('member/config/pass')}}" method="post">
                {{Form::token()}}


                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">原始密码：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="password" class="form-control valid" name="pass_origin"
                                       placeholder="填写原始密码"
                                       datatype="*"
                                       errormsg="原始密码" tipsrmsg="原始密码">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">新密码：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="password" class="form-control valid" name="pass_new"
                                       placeholder="填写新密码"
                                       datatype="*6-20"
                                       errormsg="确认密码 不足6位" tipsrmsg="确认密码">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">确认密码：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="password" class="form-control valid" name="pass_double"
                                       placeholder="填写确认密码"
                                       recheck="pass_new"
                                       errormsg="确认密码不一致" tipsrmsg="确认密码必须一致">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>





                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn">立即提交</button>
                    </div>
                </div>
            </form>


        </div>

    </div>

@stop