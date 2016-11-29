

@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title item-title02">
                <div class="subject">
                    <h3>
                        <span class="action">会员 - 详情</span>
                    </h3>

                    <h5>
				<span class="action-span">
					<a href="{{url('user/wel')}}" class="btn btn-warning click-loading">
                        <i class="iconfont">&#xe6d4;</i>
						返回会员列表
					</a>
				</span>
                    </h5>

                    <ul class="tab-base shop-row">
                        <li><a class="current" href="{{url('user/welc')}}">
                                <span>欢迎页</span>
                            </a>
                        </li>
                        <li><a href="{{url('user/info')}}">
                                <span>会员信息</span>
                            </a>
                        </li>
                        <li><a href="{{url('user/pkadd')}}">
                                <span>收货地址</span>
                            </a>
                        </li>
                        <li><a href="">
                                <span>订单</span>
                            </a>
                        </li>
                        <li><a href="{{url('user/cart')}}">
                                <span>购物车</span>
                            </a>
                        </li>
                        <li><a href="{{url('user/collect')}}">
                                <span>收藏</span>
                            </a>
                        </li>
                        <li><a href="">
                                <span>评价</span>
                            </a>
                        </li>
                        <li><a href="">
                                <span>投诉</span>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
        <?php  //dd(Auth::user()); ?>
        <div class="order-info m-b-10">
            <!--概要信息-->
            <div class="order-details">
                <div class="title">概要信息</div>
                <div class="content">
                    <dl>
                        <dt>&nbsp;用&nbsp;户&nbsp;名：</dt>
                        <dd><?php echo Session::get('user')->name?></dd>
                    </dl>
                    <dl>
                        <dt>性&nbsp;别：</dt>
                        <dd><?php if (Session::get('user')->sex == 1) {
                                echo '男';
                            } else {
                                echo '女';
                            }?></dd>
                    </dl>
                    <dl>
                        <dt>Email：</dt>
                        <dd><?php echo Session::get('user')->email?></dd>
                    </dl>
                    <dl>

                        <dt>最后一次登录：</dt>
                        <dd><?php echo Session::get('user')->last_time?></dd>
                    </dl>
                    <dl>
                        <dt>账号来源：</dt>
                        <dd>
                            <?php
                            if (ToolsUtils::isMobileDevice()) {
                                echo '手机端';
                            } else {
                                echo 'PC端';
                            }
                            ?>
                        </dd>
                    </dl>
                    <dl>
                        <dt>用户等级：</dt>
                        <dd>???</dd>
                    </dl>
                    <dl>
                        <dt>账号来源：</dt>
                        <dd>???</dd>
                    </dl>
                </div>
            </div>
            <!--收货信息-->
            <div class="order-details">
                <div class="title">收货信息</div>
                <div class="content">
                    <dl>
                        <dd>陕西省&nbsp;&nbsp;&nbsp;西安市&nbsp;&nbsp;&nbsp;雁塔区&nbsp;&nbsp;&nbsp;电视塔恒大国际&nbsp;&nbsp;&nbsp;25层
                            915室&nbsp;&nbsp;&nbsp;李宝山，&nbsp;&nbsp;&nbsp;15263564789 ，&nbsp;&nbsp;&nbsp;710065
                        </dd>
                    </dl>
                </div>
            </div>
        </div>


    </div>


@stop
