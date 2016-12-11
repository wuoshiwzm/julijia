<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">


    <!-- 网站头像 -->
    <link rel="icon" type="image/x-icon" href="{{asset('images/member/icon.png')}}">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('images/member/icon.png')}}">

    {{--css--}}
    <link rel="stylesheet" type="text/css" href="{{asset('css/member/admin.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/member/css.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/member/iconfont.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/member/layui.css')}}">
    @yield('css')




</head>

<body>
<div class="nav_top">
    <div>
        <span>李四<font>vip1</font><a href="##">退出</a></span>
        <ul>
            <li><a href="##">商城首页</a></li>
            <li><a href="##">购物车 ( <font>2</font> )</a></li>
            <li><a href="##">收藏夹 ( <font>2</font> )</a></li>
            <li><a href="##">消息 ( <font>2</font> )</a></li>
        </ul>
    </div>
</div>

<div class="ge_admin01">
    <div class="ge_admin_xin">
        <h2><img src="{{asset('images/member/logo.png')}}"></h2>
        <ul>
            <li class=""><a href="{{url('member')}}">个人中心</a></li>
            <li class="nav_on02 nav_on"><a href="{{url('member/config')}}">账号设置</a></li>
            <li class="nav_on03"><a href="ge_admin_message.html">消息<span>2</span></a></li>
        </ul>
        <div class="tui"><a href="##">退出</a></div>
    </div>
</div>

<div class="ge_admin02">
    <div class="ge_admin_nei">
        <div class="ge_admin_nei_left">
            <ul>
                <li @if(exiturl('index'))class="c_on" @endif ><a href="{{url('member/config/index')}}"><font
                                class="iconfont">&#xe65d;</font>个人设置</a></li>
                <li @if(exiturl('address'))class="c_on" @endif><a href="{{url('member/config/address')}}"><font
                                class="iconfont">&#xe651;</font>收货地址</a></li>
                <li @if(exiturl('pass'))class="c_on" @endif><a href="{{url('member/config/pass')}}"><font
                                class="iconfont">&#xe657;</font>密码设置</a></li>
                <li @if(exiturl('notice'))class="c_on" @endif><a href="{{url('member/config/notice')}}"><font
                                class="iconfont">&#xe621;</font>网站提醒</a></li>
            </ul>
        </div>

        @yield('content')
    </div>
</div>


<!-- footer -->
<div class="g-footer g-footer02">

    <div class="footer_nav">
        <div class="link_about_left_ul">
            <ul>
                <li><a href="##" title="关于曼蒂">关于曼蒂</a></li>
                <li>|</li>
                <li><a href="##" title="版权声明">版权声明</a></li>
                <li>|</li>
                <li><a href="##" title="常见问题">常见问题</a></li>
                <li>|</li>
                <li><a href="##" title="免责声明">免责声明</a></li>
                <li>|</li>
                <li><a href="##" title="联系我们">联系我们</a></li>
                <li>|</li>
                <li><a href="##" title="网站合作">网站合作</a></li>
                <li>|</li>
                <li><a href="##" title="用户协议">用户协议</a></li>
                <li>|</li>
                <li><a href="##" title="网站地图">网站地图</a></li>
            </ul>
            <div class="clear"></div>
            <p class="f-bottom_div_left"><span>邮箱: xxx@xxx
                    .com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线: 400-xxx-xxxx </span>
            </p>
            <p class="f-bottom_div_right">Copyright@2016-2026&nbsp;&nbsp;曼蒂税保&nbsp;&nbsp;版权所有&nbsp;&nbsp;陕ICP备xxxxxxxx号-1</p>

        </div>
        <div class="link_about_right"><img src="../images/er.jpg"/>
            <p>手机端曼蒂</p></div>
    </div>

</div>


</body>



<script type="text/javascript" src="{{asset('js/member/jquery-1.9.1.min.js')}}"></script>
{{--<script type="text/javascript" src="{{asset('js/member/Validform_v5.3.2_min.js')}}"></script>--}}
<script type="text/javascript" src="{{asset('js/member/er_admin.js')}}"></script>
<script type="text/javascript" src="{{asset('js/member/rules.js')}}"></script>
<script type="text/javascript" src="{{asset('js/member/layer-v1.9.3/layer/layer.js')}}"></script>
<script type="text/javascript" src="{{asset('js/member/layui.js')}}"></script>

<script>
    layui.use('form', function () {
        var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功

        //……
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".spinner").hide();
    });//页面加载特效
</script>


@yield('js')


</html>