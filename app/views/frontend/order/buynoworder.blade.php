@section('title')立即购买@stop
@section('categoryCss','banner_nav02')
@section('css')
    <link rel="stylesheet" type="text/css" href="{{url('css/frontend/order.css?v='.Config::get('tools.frontendCssTime'))}}">
    <link rel="stylesheet" type="text/css" href="{{url('css/frontend/layui.css?v='.Config::get('tools.frontendCssTime'))}}">
@stop
@section('content')
    <div class="shopping">
        <div class="shopping_nei">
            <div class="shopping_nei_order">
                @include('frontend.order.orderstyle')
                <form class="layui-form" action="{{url('noworder/save')}}" method="post">
                    <!--收货人-->
                    @include('frontend.order.orderaddress',array('address'=>$address))
                    <!--支付方式-->
                    @include('frontend.order.paytype')
                    <!--送货清单-->
                    @include('frontend.order.buynowgoods',array('address'=>$address,'row'=>$goods,'totaled'=>$totaled))
                </form>
            </div>
        </div>
    </div>
@stop
@section('footer_js')
    <script type="text/javascript" src="{{url('js/public/layer/layer.js')}}"></script>
    <script type="text/javascript" src="{{url('js/public/layui/layui.js')}}"></script>
    <script type="text/javascript" src="{{url('js/frontend/order.js?v='.Config::get('tools.frontendJsTime'))}}"></script>
@stop