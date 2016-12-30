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
                    <a href="#">我的曼蒂</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;用户登录
                </div>


                @if(Session::has('msg'))
                <p class="alert">{{ var_dump(Session::get('msg')); }}</p>
                @endif

                <!--找回密码-->
                <div class="table_div">
                    <div class="login_zhao02">
                        <h2 class="iconfont fize18">&#xe60b;</h2>
                        <form class="layui-form m-form form" action="{{url('member/loginVerify')}}">
                            <div class="layui-form-item">
                                <div class="layui-input-block input_po">
                                    <span class="iconfont">&#xe657;</span>
                                    <input type="text" name="name" placeholder="请输入用户名" autocomplete="off"
                                           class="layui-input w40b f_left font_deng" ignore="ignore"
                                           name="name" value="{{Input::old('name')}}"
                                           datatype="*" errormsg="请输入" tipsrmsg="请输入"
                                           name="name" value="{{Input::old('name')}}"/>
                                    <label class="Validform_checktip"></label>
                                </div>
                            </div>

                            <div class="layui-form-item ">
                                <div class="layui-input-block input_po">


                                    <!-- 密码 -->
                                    <span class="iconfont">&#xe657;</span>
                                    <input type="password" name="password" placeholder="密 码" autocomplete="off" ignore="ignore"
                                           class="layui-input w40b f_left font_deng"   datatype="*"
                                           errormsg="请输入密码" tipsrmsg="请输入密码">
                                    <label class="Validform_checktip"></label>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <input type="submit" class="layui-btn w40b font_deng font_deng_btn">登 录</input>
                                </div>
                            </div>
                        </form>
                        <div class="zhuce"><span class="iconfont">&#xe666;</span><a href="shop_login_zc.html">免费注册</a>
                        </div>
                        <div class="wjmm"><a href="shop_login_z.html">忘记密码</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop

@section('footer_js')
    {{--<link type="text/css" rel="stylesheet" href="{{asset('css/frontend/layui.css')}}">--}}
    {{--<script type="text/javascript" src="{{url('js/public/jquery/jquery-1.9.1.min.js')}}"></script>--}}
    <script type="text/javascript" src="{{url('js/public/Validform/Validform_v5.3.2_min.js')}}"></script>
    <script type="text/javascript" src="{{url('js/frontend/er_admin.js')}}"></script>
    <script type="text/javascript" src="{{url('js/frontend/rules.js')}}"></script>
    {{--<script type="text/javascript" src="{{url('js/public/layer/layer.js')}}"></script>--}}
    {{--<script type="text/javascript" src="{{url('js/frontend/layui.js')}}"></script>--}}
    @stop