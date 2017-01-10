@section("title")
    退款单详情
@stop

@section("admincss")
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/jquery.mCustomScrollbar.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">
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
                            <a href="##" target="_blank">
                                <img src="{{ getImgSize( 'goods', $item->product_id, $item->product->small_image ) }}" class="goods-thumb">
                            </a>
                        </div>
                        <div class="ng-binding refund-message">
                            <div class="name">
                                <a href="##" target="_blank">{{$refund->item->product_name}}</a>
                            </div>

                        </div>
                    </div>
                    <div class="refund-info">
                        <dl></dl>
                        <dt>
                            <span >买家</span>：
                        </dt>
                        <dd>
                        </dd>                                <span>{{$refund->user->real_name}}</span>


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
                                <span>￥{{$refund->shipping_fee}}</span>
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
                                <span>￥7.00 </span>
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
                                        退换到支付宝
                                    @elseif($refund->order->payment ==2)
                                        退换到微信
                                    @endif
                                </span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <span>退款原因</span>
                                ：
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
                        <ul>
                            <li class="operate-steps">
                                <i class="iconfont"></i>
                                <span>退款单状态：买家已，等待平台退款</span>
                            </li>
                            <li class="operate-prompt">
                                <input value="去退款" class="btn btn-primary modify" type="button">
                            </li>
                            <li class="operate-prompt">
                                平台已经同意买家退款，款项原来退回
                            </li>
                        </ul>
                    </div>

                    <h3 style=" font-weight:bold;">凭 证</h3>
                    <div class="refund-operate">
                        <ul>
                            <li class="operate-steps pic_m_r">
                                <img src="../images/010.jpg" class="goods-thumb"><img src="../images/011.jpg"
                                                                                      class="goods-thumb"><img
                                        src="../images/012.jpg" class="goods-thumb">
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
                                                        <dt><img src="../images/ad.jpg"></dt>
                                                        <dd>{{$row->option_name}}</dd>
                                                        <br>
                                                    </dl>
                                                </a>
                                            </td>
                                            <td class="w400">
                                                客户提交退款，订单号14154145，商品：陕西皮影
                                            </td>
                                            <td>
                                                时间：2016-10-12 09:00:00
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                            @endforeach

                            <li class="operate-steps pic_m_r color_bg02">
                                <table>
                                    <tbody>
                                    <!--订单内容-->
                                    <tr class="order-item">
                                        <td class="w200">
                                            <a href="##" target="_blank" class="img_40">dingeng0509@11.com</a>
                                        </td>
                                        <td class="w400">
                                            订单管理员
                                        </td>
                                        <td class="">
                                            时间：2016-10-12 09:20:20
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--商品信息-->
    </div>
@stop

