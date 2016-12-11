@section('title')

    收货地址
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
                收货地址<font>Shipping Address</font>
            </div>
            <form class="layui-form m-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>所在地区</label>
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
                    <label class="layui-form-label"><span class="red">*</span>详细地址</label>
                    <div class="layui-input-block">
                        <textarea name="desc" class="layui-textarea w80b f_left" placeholder="建议您如实填写详细收货地址，例如街道名称，门牌号码，楼层和房间号等信息" autocomplete="off" ignore="ignore"  datatype="n"  errormsg="5-120个字符，一个汉字为两个字符" tipsrmsg="请输入详细地址" ></textarea><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">邮政编码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="如您不清楚邮递区号，请填写000000" autocomplete="off" class="layui-input w40b f_left"    errormsg="请输入邮政编码" tipsrmsg="请输入邮政编码" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>收货人</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="长度不超过25个字符" autocomplete="off" class="layui-input w40b f_left"  ignore="ignore"  datatype="n"  errormsg="收货人姓名应为2-25个字符，一个汉字为两个字符" tipsrmsg="请输入收货人姓名" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>手机号码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="电话号码、手机号码必须填一项" autocomplete="off" class="layui-input w40b f_left"  ignore="ignore"  datatype="n"  errormsg="6-20个数字" tipsrmsg="请输入手机号码" ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">电话号码</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  placeholder="区号" class="layui-input w20b f_left m_r_10" >
                        <input type="text" name="title"  placeholder="电话号码" class="layui-input w30b f_left m_r_10" >
                        <input type="text" name="title"  placeholder="分机" class="layui-input w20b f_left m_r_10">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"> </label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="like[write]" title="设为默认地址"><div class="layui-unselect layui-form-checkbox layui-form-checked"><span>设为默认地址</span><i class="layui-icon"></i></div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" >保存</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="admin_table">
            <div class="h-title">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th width="10%">收货人</th>
                        <th width="20%">所在地区</th>
                        <th>详细地址</th>
                        <th width="10%">邮编</th>
                        <th width="16%">电话/手机</th>
                        <th width="18%" class="border_rn">操作</th>
                    </tr>
                    <tr>
                        <td>小舒子</td>
                        <td>陕西省，西安市，雁塔区</td>
                        <td>高新路12海天大厦12层2015室</td>
                        <td>710065</td>
                        <td>15812455252</td>
                        <td class="border_rn"><a href="##">修改</a>&nbsp;&nbsp;&nbsp;<a href="##">删除</a>&nbsp;&nbsp;&nbsp;<a href="##">设为默认</a></td>
                    </tr>
                    <tr>
                        <td>小舒子</td>
                        <td>陕西省，西安市，雁塔区</td>
                        <td>高新路12海天大厦12层2015室</td>
                        <td>710065</td>
                        <td>15812455252</td>
                        <td class="border_rn"><a href="##">修改</a>&nbsp;&nbsp;&nbsp;<a href="##">删除</a>&nbsp;&nbsp;&nbsp;<a href="##" class="color_on">默认地址</a></td>
                    </tr>
                    <tr>
                        <td>小舒子</td>
                        <td>陕西省，西安市，雁塔区</td>
                        <td>高新路12海天大厦12层2015室</td>
                        <td>710065</td>
                        <td>15812455252</td>
                        <td class="border_rn"><a href="##">修改</a>&nbsp;&nbsp;&nbsp;<a href="##">删除</a>&nbsp;&nbsp;&nbsp;<a href="##">设为默认</a></td>
                    </tr>
                    <tr>
                        <td>小舒子</td>
                        <td>陕西省，西安市，雁塔区</td>
                        <td>高新路12海天大厦12层2015室</td>
                        <td>710065</td>
                        <td>15812455252</td>
                        <td class="border_rn"><a href="##">修改</a>&nbsp;&nbsp;&nbsp;<a href="##">删除</a>&nbsp;&nbsp;&nbsp;<a href="##">设为默认</a></td>
                    </tr>
                </table>
            </div>
        </div>


    </div>

@stop