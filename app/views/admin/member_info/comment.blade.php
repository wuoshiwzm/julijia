@section('content')

    <div class="page">
        <div class="fixed-bar">
            <div class="item-title item-title02">
                <div class="subject">
                    <h3>
                        <span class="action">会员 - 详情</span>
                    </h3>
                    @include('admin.member_info.view.tab')
                </div>
            </div>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3>评价信息</h3>
                <h5>
                    (&nbsp;共
                    <span data-total-record="true">{{$data->count()}}</span>
                    条记录&nbsp;)
                </h5>

            </div>
            <div class="operate">
                <a class="reload" href="javascript:reload();" data-toggle="tooltip" data-placement="auto bottom"
                   title="" data-original-title="刷新数据">
                    <i class="iconfont">&#xe6fb;</i>
                </a>
            </div>
        </div>

        <div class="table-responsive">

            <!---->
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w250" style="cursor: pointer;">宝贝信息</th>
                    <th class="w200" style="cursor: pointer;">评价</th>
                    <th class="w250" style="cursor: pointer;">评论内容</th>

                    <!--操作列样式handle-->
                    <th class="w150 handle" style="cursor: pointer;">操作</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->

                @foreach($data as $comment)

                    <tr class="order-tr" name="1">
                        <td>
                            <div class="goodsPicBox pull-left m-r-10">

                                <img src="{{ getImgSize( 'goods', $comment->item->product_id,
                                                $comment->item->product->small_image) }}"
                                     class="goods-thumb" width="36" height="36">

                            </div>
                            <div class="ng-binding refund-message">
                                <div class="name">

                                    <a href="##" target="_blank" class="c-blue">
                                        {{$comment->item->product_name}}</a>
                                </div>
                                <div class="time">订单编号： {{$comment->order->order_sn}}</div>
                            </div>
                        </td>
                        <!--icon-0为实星，icon-1为虚星-->
                        <td>
                            <div class="ng-binding">

                                <?php
                                switch ($comment->leavel) {
                                    case 1:
                                        echo "很差";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        break;

                                    case 2:
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "差";
                                        break;

                                    case 3:
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "一般";
                                        break;

                                    case 4:
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "好";
                                        break;

                                    case 5:
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "<a class='score-icon icon-0 m-r-3'></a>";
                                        echo "非常好";
                                        break;
                                }

                                ?>


							<span>

							</span>
                                <span class="star-icon text-c">
								<i class="icon-0"></i>
								<i class="icon-0"></i>
								<i class="icon-1"></i>
								<i class="icon-1"></i>
								<i class="icon-1"></i>
							</span>
                            </div>
                        </td>
                        <!--b_blue_5.gif为钻级用户，1为一个钻，以此类推；b_red_4.gif为红心级用户；s_cap_4.gif为冠级用户-->
                        <td>
                            {{$comment->content}}
                        </td>

                        <td class="handle">
                            <!---->
                            <a class="hiddens" href="javascript:;">查看详情</a>
                            <!---->
                        </td>
                @endforeach

                </tbody>
            </table>


                @include('admin.public.page',array('data'=>$data,'set'=>$set))
            <!---->
        </div>

    </div>

@stop