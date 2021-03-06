@section("title")
    退款单详情
@stop

@section("admincss")
<link type="text/css" rel="stylesheet" href="{{url('css/admin/jquery.mCustomScrollbar.css')}}">
<link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
<link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">
<style>
    .phone{ padding:20px 30px 0px 30px; font-family:"微软雅黑";}
    .phone h1{ height:40px; line-height:34px; font-size:16px; color:##24A0D6; border-bottom:1px solid #24A0D6}
    .phone ul { padding:20px; }
    .phone ul li{ clear:both; }
    .phone ul li font{  float:left; display:block; width:70px;}
     ul li .textarea{ height:120px;width:340px; padding:6px 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
    .phone .button{ width:160px; color:#fff; height:36px; line-height:36px; background:#24A0D6; border:0; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px;}
    .phone .ng-binding{ float:left;  width:74px;}

    .button02{  padding:0px 20px; color:#666; height:36px; line-height:36px; background:#fff; border:1px solid #ddd; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px; margin-left:10px;}
    .button02:hover{  border:1px solid #FF5722;color:#FF5722;  }
    .button02{  padding:0px 20px; color:#666; height:36px; line-height:36px; background:#fff; border:1px solid #ddd; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px; margin-left:10px;}
    .button02:hover{  border:1px solid #FF5722;color:#FF5722;  }

    .shengqing{ padding:20px 30px 0px 30px; font-family:"微软雅黑";}
    .shengqing h1{ height:40px; line-height:34px; font-size:16px; color:##24A0D6; border-bottom:1px solid #24A0D6}
    .shengqing ul { padding:20px; }
    .shengqing ul li{ clear:both; }
    .shengqing ul li font{  float:left; display:block; width:70px;}
    .shengqing .button{  padding:0px 20px; color:#fff; height:36px; line-height:36px; background:#24A0D6; border:0; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px;}
    .shengqing ul li .txt{ height:30px;width:188px; padding:0 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
    .shengqing ul li .txt2{ width:100px;}
    .shengqing .ng-binding{ float:left;  width:74px;}
</style>
@stop
@section("content")
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">商品订单 -- 退款详情</span>
                    </h3>
                    <h5>
				<span class="action-span">
					<a href="{{url("/admin/refund/index")}}" class="btn btn-warning click-loading">
                        <i class="iconfont"></i>
                        返回退款列表
                    </a>
				</span>
                    </h5>
                </div>
            </div>
        </div>

        <!--订单详情信息-->
        <div class="order-info m-b-10">
            <!--下单时间等-->
            <div class="order-info">
                <div class="order-left">
                    <h3 style=" font-weight:bold;">相关商品交易信息</h3>
                    <div class="order-goods">
                         <?php  $item =  $refund->item->first();?>
                        <div class="goodsPicBox pull-left m-r-10">
                            <a href="/{{$item->product_id}}.html" target="_blank">
                                <img src="{{ getImgSize( 'goods', $item->product_id, isset($item->product->small_image)?$item->product->small_image:'' ) }}" class="goods-thumb">
                            </a>
                        </div>
                        <div class="ng-binding refund-message">
                            <div class="name">
                                <a href="/{{$item->product_id}}.html" target="_blank">{{$refund->item->product_name}}</a>
                            </div>

                        </div>
                    </div>
                    <div class="refund-info">
                        <dl>
                            <dt>
                                <span >买家</span>：
                            </dt>
                            <dd>
                                <span>{{$refund->user->real_name}}</span>
                            </dd>
                        </dl>

                        <dl>
                            <dt>
                                <span>订单编号</span>
                                :
                            </dt>
                            <dd>
						<span>
							<a href="javascript:void(0)" class="c-blue">{{$refund->order_sn}}</a>
						</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span >单价</span>
                                ：
                            </dt>
                            <dd>
                                <span>￥{{$refund->item->price}} * {{$refund->item->num}}（数量）</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span >快递</span>
                                ：
                            </dt>
                            <dd>
                                <span>￥{{($refund->shipping_fee !=NULL)?$refund->shipping_fee:'0.00'}}</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="refund-info border-none">
                        <dl>
                            <dt>
                                <span>退款编号</span>
                                ：
                            </dt>
                            <dd>
                                <span>{{$refund->back_sn}}</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span>退款金额</span>
                                ：
                            </dt>
                            <dd>
                                <span>￥{{$refund->price}} </span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span>退款方式</span>
                                ：
                            </dt>
                            <dd>
                                <span>
                                    @if ($refund->order->payment == 1)
                                        退款到支付宝
                                    @elseif($refund->order->payment ==2)
                                        退款到微信
                                    @endif
                                </span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span>退款原因</span>：
                            </dt>
                            <dd>
                                <span>{{isset($refund->reason()->first()->value)?$refund->reason()->first()->value:''}}</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span >退款要求</span>：
                            </dt>
                            <dd>
						<span>
							{{$refund->content}}
						</span>
                            </dd>
                        </dl>

                    </div>
                </div>
                <div class="order-right">
                    <h3 style=" font-weight:bold;">退款服务</h3>
                    <div class="refund-operate">
                        @include('admin.order.refund.status',array('refund'=>$refund))
                    </div>

                    <h3 style=" font-weight:bold;">凭 证</h3>
                    <div class="refund-operate">
                        <ul>
                            <li class="operate-steps pic_m_r">
                                @if($refund->image !=NULL)
                                @foreach( json_decode($refund->image) as $img)
                                     <img src="{{$img}}" class="goods-thumb">
                                @endforeach
                                @endif
                            </li>
                        </ul>
                    </div>

                    <h3 style=" font-weight:bold;">操作日志</h3>
                    <div class="refund-operate">
                        <ul class="hover_li">
                            @foreach($operate_log->get() as  $row)
                                <li class="operate-steps pic_m_r color_bg01">
                                    <table>
                                        <tbody>
                                        <!--订单内容-->
                                        <tr>
                                            <td class="w200">
                                                <a href="javascript:void(0)">
                                                    <dl class="dl_table">
                                                        <dt></dt>
                                                        <dd>{{$row->option_name}}</dd>
                                                        <br>
                                                    </dl>
                                                </a>
                                            </td>
                                            <td class="w400">
                                                {{$row->remark}}
                                            </td>
                                            <td>
                                                时间：{{$row->created_at}}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--商品信息-->
    </div>
@stop
@section("footer_js")
    <script type="text/javascript" src="{{url('js/public/layer/layer.js')}}"></script>
    <script type="text/javascript" src="{{url('js/public/Validform/Validform_v5.3.2_min.js')}}"></script>
    {{--<script type="text/javascript" src="{{url('js/public/Validform/public.js')}}"></script>--}}
@stop
