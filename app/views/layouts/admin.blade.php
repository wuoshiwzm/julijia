<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>@yield('title')</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="keywords" content="@yield('keywords')">
    <meta name="description" content="@yield('description')">
    <meta name="viewport" content="width=device-width">
    <meta name="baidu-site-verification" content="W2dIWXtCkQ" />
    <link type="image/x-icon" href="/bitbug_favicon.ico" rel="Shortcut Icon">
    <script type="text/javascript" src="/js/public/jquery/jquery-1.9.1.min.js"></script>
    <!-- 头部css -->
    @yield('headcss')
</head>
<body>
<!-- 内容开始 -->
@yield('content')
<!-- 内容结束 -->
<!-- 底部js -->
<script type="text/javascript" src="/js/public/layer/layer.js"></script>
<script type="text/javascript" src="/js/public/jquery/jquery.SuperSlide.2.1.1.js"></script>
<!-- <script type="text/javascript" src="/js/frontend/index.js?v={{date('YmdH')}}"></script> -->
@yield('footer_js')
</body>
</html>
