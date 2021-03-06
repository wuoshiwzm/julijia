<!DOCTYPE html>
<head>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width">
    <meta name="_token" content="{{ csrf_token() }}"/>
    <meta name="redirectURL" content="{{Request::getUri()}}"/>
    <title>@yield('title')</title>
    <meta name="keywords" content="@yield('keywords')">
    <meta name="description" content="@yield('description')">
    <link rel="stylesheet" type="text/css" href="{{url('css/frontend/css_all.css?v='.Config::get('tools.frontendCssTime'))}}">
    <link rel="stylesheet" type="text/css" href="{{url('css/frontend/style_shop.css?v='.Config::get('tools.frontendCssTime'))}}">
    <link rel="stylesheet" type="text/css" href="{{url('css/frontend/animate.css?v='.Config::get('tools.frontendCssTime'))}}">
    <!-- 头部css -->
    @yield('css')
    <script type="text/javascript" src="{{url('js/public/jquery/jquery-1.9.1.min.js')}}"></script>
    <!-- 头部js -->
    @yield('js')
</head>
<body>
    <!-- 头部开始 -->
    @include('frontend.public.top')
    <!-- 头部结束 -->
    <!--内容-->
    @yield('content')
    <!-- 悬浮 -->
    <div class="float" id="float">
        <?php  $user = Session::get('member'); ?>
        <a @if( $user ) href="{{url('member/cart')}}" @else  href="javascript:;" @endif  class="an_1">导航9</a>
        <a @if( $user ) href="{{url('member/collect')}}" @else  href="javascript:;" @endif  class="an_2">导航10</a>
        <a href="javascript:;" class="an_3">导航11</a>
        <a href="javascript:;" id="returnTop" class="an_4">导航12</a>
    </div>
    @include('frontend.public.footer')
    @include('frontend.public.bottom')
    <!-- 底部结束 -->
</body>
<script type="text/javascript" src="{{url('js/public/jquery/jquery.SuperSlide.2.1.1.js')}}"></script>
<script type="text/javascript" src="{{url('js/frontend/wow.min.js')}}"></script>
<script type="text/javascript" src="{{url('js/frontend/public.js?v='.Config::get('tools.frontendJsTime'))}}"></script>
@yield('footer_js')
</html>