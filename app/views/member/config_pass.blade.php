@section('title')

    修改密码
@stop


@section('admincss')
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
            <form class="layui-form m-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>原始密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="请输入原始密码" autocomplete="off" class="layui-input w40b f_left"  ignore="ignore"  datatype="n"  errormsg="请输入原始密码" tipsrmsg="请输入原始密码" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>新密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="请输入新密码" autocomplete="off" class="layui-input w40b f_left"  ignore="ignore"  datatype="n"  errormsg="请输入新密码" tipsrmsg="请输入新密码" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>确认密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="请输入新密码" autocomplete="off" class="layui-input w40b f_left"  ignore="ignore"  datatype="n"  errormsg="请输入新密码" tipsrmsg="请输入新密码" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" >立即提交</button>
                    </div>
                </div>
            </form>


        </div>

    </div>

@stop