@section('css')
    {{--    <link type="text/css" rel="stylesheet" href="{{asset('css/images/icon.png')}}">--}}
    <link type="text/css" rel="stylesheet" href="{{asset('css/admin/iconfont.css')}}">
    <link type="text/css" rel="stylesheet" href="{{asset('css/frontend/css_all.css')}}">
    <link type="text/css" rel="stylesheet" href="{{asset('css/frontend/login.css')}}">
    <link type="text/css" rel="stylesheet" href="{{asset('css/frontend/layui.css')}}">
    {{--    <link type="text/css" rel="stylesheet" href="{{asset('css/admin/layer.css')}}">--}}
@stop

@section('content')


    <div class="shopping">
        <div class="shopping_nei">
            <div class="shopping_nei_order">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>

                <div class="table_div_map">
                    <a href="#">曼蒂首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;用户注册
                </div>


                @if(Session::has('msg'))
                    @if(is_array(Session::has('msg')))
                        @foreach(Session::has('msg') as $msg)
                            <p class="alert">{{$msg}}</p>
                    @endforeach
                @endif
            @endif

            <!--找回密码-->
                <div class="table_div">
                    <div class="login_zhao">
                        <h2>用户注册</h2>
                        <form class="layui-form m-form" action="{{url('member/store')}}">
                            {{ Form::token() }}
                            <div class="layui-form-item">
                                <label class="layui-form-label"><span class="red">*</span>手机号码</label>
                                <div class="layui-input-block">
                                    <input type="text" name="mobile_phone" placeholder="手机号" autocomplete="off"
                                           class="layui-input w40b f_left02" ignore="ignore" datatype="m" id="phone"
                                           errormsg="请输入手机号" tipsrmsg="请输入手机号">
                                    <span class="Validform_checktip"></span>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">
                                    <span class="red">*</span>验 证 码</label>
                                <div class="layui-input-block">
                                    <input type="text" name="code" placeholder="验证码" autocomplete="off"
                                           class="layui-input w20b f_left02" ignore="ignore" datatype="*"
                                           errormsg="请输入验证码" tipsrmsg="请输入验证码">
                                    <span class="Validform_checktip"></span>
                                    <input type="button" class="layui-btn w30b yzm" onclick="sendSms()">发送验证码</input>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label"><span class="red">*</span>用 户 名</label>
                                <div class="layui-input-block">
                                    <input type="text" name="name" placeholder="用户名" autocomplete="off"
                                           class="layui-input w40b f_left02" ignore="ignore" datatype="*1-30"
                                           errormsg="请输入用户名" tipsrmsg="请输入1-30位的用户名">
                                    <span class="Validform_checktip"></span>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">设置密码</label>
                                <div class="layui-input-block">
                                    <input type="password" name="password" placeholder="新密码" autocomplete="off"
                                           class="layui-input w40b f_left02" ignore="ignore" datatype="*"
                                           errormsg="请输入新密码" tipsrmsg="请输入新密码">
                                    <span class="Validform_checktip"></span>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">确认密码</label>
                                <div class="layui-input-block">
                                    <input type="password" name="password2" placeholder="确认密码" autocomplete="off"
                                           class="layui-input w40b f_left02" ignore="ignore" datatype="*"
                                           recheck="password"
                                           errormsg="请输入新密码" tipsrmsg="请输入新密码">
                                    <span class="Validform_checktip"></span>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label"> </label>
                                <div class="layui-input-block">
                                    <input type="checkbox" name="like[write]" title="同意协议">
                                    <div class="layui-unselect layui-form-checkbox layui-form-checked"><span>同意协议</span><i
                                                class="layui-icon"></i></div>
                                    <a href="http://xian.julijia.cn/website/agreement.html" target="_blank"
                                       class="xieyi">《居利家协议》</a>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <input type="submit" class="layui-btn w30b">立即注册</input>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>



@stop



@section('footer_js')
    <script type="text/javascript" src="{{asset('js/frontend/member.js')}}"></script>
    {{--<link type="text/css" rel="stylesheet" href="{{asset('css/frontend/layui.css')}}">--}}
    {{--<script type="text/javascript" src="{{url('js/public/jquery/jquery-1.9.1.min.js')}}"></script>--}}
    <script type="text/javascript" src="{{url('js/public/Validform/Validform_v5.3.2_min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/frontend/er_admin.js')}}"></script>
    <script type="text/javascript" src="{{url('js/frontend/rules.js')}}"></script>
    {{--<script type="text/javascript" src="{{url('js/public/layer/layer.js')}}"></script>--}}
    {{--<script type="text/javascript" src="{{url('js/frontend/layui.js')}}"></script>--}}

@stop