@section('title')
    账号设置
@stop

@section('left')
    @include('member.public.left_config')
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
            <form class="layui-form m-form" method="post" action="/member/config/store">
                {{ Form::token() }}
                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>昵称</label>
                    <div class="layui-input-block">
                        <input type="text"
                               name="alias"
                               placeholder="请输入昵称"
                               autocomplete="off"
                               class="layui-input w40b f_left"
                               datatype="s3-16"
                               errormsg="昵称应为3-16个字符"
                               tipsrmsg="请输入昵称"
                               value="{{$userInfo->alias}}"
                        ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>真实名称</label>
                    <div class="layui-input-block">
                        <input type="text"
                               name="real_name"
                               placeholder="请输入真实名称"
                               autocomplete="off"
                               class="layui-input w40b f_left"
                               datatype="un"
                               errormsg="请输入中文真实名称"
                               tipsrmsg="请输入真实名称"
                               value="{{$userInfo->real_name}}"
                        ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><span class="red">*</span>Email</label>
                    <div class="layui-input-block">
                        <input type="text"
                               name="email"
                               placeholder="请输入mail地址"
                               autocomplete="off"
                               class="layui-input w40b f_left"
                               datatype="*"
                               errormsg="输入mail地址格式错误"
                               tipsrmsg="请输入mail地址"
                               value="{{$userInfo->email}}"
                        ><span class="Validform_checktip"></span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">当前头像</label>
                    <div class="layui-input-block">
                        <div class="form-control-box addimg img_border">
                            <a href="javascript:;" class="">
                                <img onclick="getImgTemplet( this,'user' )"
                                     src="{{!empty($userheader)?$userheader:'/images/member/tou.jpg'}}"
                                     width="80"
                                     height="80">
                                <input type="hidden" id="user" name="header"/>
                            </a><span onclick="clearPic()">删除</span>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <input type="radio" name="sex" value="1" title="男"
                           @if($userInfo->sex == 1) checked="checked" @endif >
                    <input type="radio" name="sex" value="0" title="女"
                           @if($userInfo->sex === 0) checked="checked" @endif>
                </div>



                <div class="layui-form-item">
                    <label class="layui-form-label">QQ</label>
                    <div class="layui-input-block">
                        <input type="text"
                               name="qq"
                               placeholder="请输入您常用的QQ号码"
                               autocomplete="off"
                               class="layui-input w40b f_left"
                               datatype="/^\s*$/|n5-20"
                               errormsg="QQ号码格式错误"
                               tipsrmsg="请输入您常用的QQ号码"
                               value="{{$userInfo->qq}}"
                        >
                        <span class="Validform_checktip"></span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">微信</label>
                    <div class="layui-input-block">
                        <input type="text"
                               name="wechat"
                               placeholder="请输入您常用的微信账号"
                               autocomplete="off"
                               class="layui-input w40b f_left"
                               datatype="/^\s*$/|/^[a-zA-Z\d_]{5,}$/"
                               errormsg="请输入微信号码"
                               tipsrmsg="请输入您常用的微信账号"
                               value="{{$userInfo->wechat}}"
                        >
                        <span class="Validform_checktip"></span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="submit" value="立即提交" class="layui-btn"/>
                    </div>
                </div>

            </form>
        </div>

    </div>
    <input type="hidden" id="msg" value="{{Session::get('msg')}}">

@stop

@section('js')
    <script type="text/javascript" src="{{asset('js/public/location_pick/location_pick.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/admin/group.js')}}"></script>
    {{--  <script type="text/javascript" src="{{asset('js/member/config.js')}}"></script>--}}
@stop