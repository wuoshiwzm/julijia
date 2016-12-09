@section('title')
    账号设置
@stop

@section(('content'))

    <div class="ge_admin_nei_right">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>

        <div class="admin_form">
            <div class="h-title">
                个人设置<font>Personal Settings</font>
            </div>
            <form class="layui-form m-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>昵称</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" placeholder="请输入昵称" autocomplete="off"
                               class="layui-input w40b f_left" ignore="ignore" datatype="n" errormsg="请输入昵称"
                               tipsrmsg="请输入昵称"><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>真实名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" placeholder="请输入真实名称" autocomplete="off"
                               class="layui-input w40b f_left" ignore="ignore" datatype="n" errormsg="请输入真实名称"
                               tipsrmsg="请输入真实名称"><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">当前头像</label>
                    <div class="layui-input-block">
                        <div class="form-control-box addimg img_border">
                            <a href="##" class="qie_img"><img src="../images/tou.png" width="80" height="80"></a><span>删除</span>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男">
                        <input type="radio" name="sex" value="女" title="女" checked>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">居住地</label>
                    <div class="layui-input-inline">
                        <select name="quiz1">
                            <option value="">请选择省</option>
                            <option value="浙江" selected="">浙江省</option>
                            <option value="你的工号">江西省</option>
                            <option value="你最喜欢的老师">福建省</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz2">
                            <option value="">请选择市</option>
                            <option value="杭州">杭州</option>
                            <option value="宁波">宁波</option>
                            <option value="温州">温州</option>
                            <option value="温州">台州</option>
                            <option value="温州">绍兴</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz3">
                            <option value="">请选择县/区</option>
                            <option value="西湖区">西湖区</option>
                            <option value="余杭区">余杭区</option>
                            <option value="拱墅区">临安市</option>
                        </select>
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
@section('js')

@stop