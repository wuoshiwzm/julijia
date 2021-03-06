<!DOCTYPE html>
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>修改价格</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/iconfont.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/bootstrap.min.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/bootstrap-switch.min.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/common.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
    <script type="text/javascript" src="{{url("js/public/jquery/jquery-1.9.1.min.js")}}"></script>
    <script type="text/javascript" src="{{url("js/public/layer/layer.js")}}"> </script>
    <script type="text/javascript" src="{{url("js/admin/order/modify.js")}}"> </script>
</head>
<body>

<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">修改订单价格</span>
                </h3>
            </div>

        </div>
    </div>
    <div class="subject subject_h4">
        <h4>
            订单原价<span class="action">（不含运费）：</span>￥{{$order->cost_item}}
        </h4>
    </div>
    <div class="explanation m-b-10">
        <div class="title">
            <i class="arrow-icon explain-checkZoom" ></i>
            <i class="iconfont">&#xe6a7;</i>
            <h4>温馨提示</h4>
        </div>
        <ul class="explain-panel ">
            <li>
                <span>涨价或折扣，正数为涨价，负数为折扣</span>
            </li>
            <li>
                <span>邮费为0时货到付款服务费将由卖家承担</span>
            </li>
            <li>
                <span>买家实付金额不可为0元及以下。</span>
            </li>
        </ul>
    </div>
    <!--商品信息-->
    <div class="table-responsive deliver">
        <table class="table">
            <thead>
            <tr>
                <th class="tcheck w50">
                    {{--<input class="checkBox  allCheckBox" type="checkbox">--}}
                </th>
                <th>商品信息</th>
                <th class="w110">单价（元）</th>
                <th class="text-c w110">数量</th>
                <th class="w110">原价（元）</th>
                <th class="w120">涨价或折扣（元）</th>
                <th class="w120">邮费（元）</th>
            </tr>
            </thead>
            <tbody>

            @foreach($order->item()->get() as $key => $row)
            <!--订单内容-->
            <tr class="order-item">
                <td class="tcheck">
                    {{--<input class="checkBox" type="checkbox">--}}
                </td>
                <td class="item" >
                    <div class="pic-info">
                        <a href="##" class="goods-thumb" title="查看商品详情" target="_blank">
                            <img src="../images/02.jpg" alt="查看商品详情">
                        </a>
                    </div>
                    <div class="txt-info">
                        <div class="desc span02">
                            <a href="" class="goods-name" target="_blank" >{{$row->product_name}}</a>
                        </div>
                    </div>
                </td>
                <td class="price">
                    {{$row->price}}
                </td>
                <td class="num text-c">{{$row->num}}</td>
                <td class="price">{{$row->price}}</td>
                <td class="discount">
                    <input class="form-control valid disprice" type="text"
                           data-item="{{$row->id}}" data-price="{{$row->price}}"
                           data-num="{{$row->num}}"  >
                </td>
                @if ($key == 0)
                    <td class="postage" rowspan="{{$order->item()->count()}}" sumrows="1">
                        <div class="ng-binding">
                        <span>快递：</span><br>
                        <span>
                        <input class="form-control valid freight" type="text"   value="{{$order->shipping_amount}}" >
                        </span><br>
                        <span>
                            <a href="javascript:void(0);" class="c-blue" id="free">免运费</a>
                        </span>
                        </div>
                    </td>
                @endif
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
    <div class="messageBox tfoot-info">
        <div class="address-info">
            <p class="m-b-5">
                <span>收货地址： {{$order->ship_addr}}</span>
            </p>
            <p>
                <span>买家实付：</span>
                <span>￥ <span id="original">{{$order->cost_item}}</span>（原价）</span>
                <em class="operator"> + </em>
                <span>￥<span id="freight">{{$order->shipping_amount}}</span>（运费）</span>
                <em class="operator">-</em>
                <span>￥<span id="favorable">{{$order->cost_freight}}</span>（优惠金额）</span>
                <em class="operator">=</em>
				<span class="order-amount">
					<strong>实收款金额：￥<span id="payment">{{$order->pay_amount}}</span>元</strong>
				</span>
            </p>
        </div>
        <div><br>
            <button class="btn btn-primary m-r-5" id="confirm">确定</button><button class="btn btn-danger m-r-5" id="cancel">取消</button>
        </div>
    </div>
</div>
</body>
</html>