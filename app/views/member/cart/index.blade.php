@section('title')
    购物车
@stop

@section(('content'))

    <div class="ge_admin_nei_right">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>

        <div class="table_div_h">
            <h2>我的订单</h2>
        </div>
        <!--订单切换-->
        <div class="table_div">

            <div class="table_div_hd table_div_hd_table">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th width="10%">选择</th>

                        <th>商品</th>
                        <th>规格</th>

                        <th width="10%">单价（元）</th>
                        <th width="10%">重量</th>

                        <th width="8%">数量</th>

                        <th width="8%">总价</th>

                        <th width="14%">操作</th>
                    </tr>
                </table>


                @foreach($carts as $cart)
                    @if($cart->status)
                    <table cellpadding="0" cellspacing="0" class="order_tab">

                        <tr>
                            <td hidden>
                                <input type="text" name="quoteSn" value="{{$cart->quote_sn}}">
                            </td>

                            <td>
                                <input type="checkbox">
                            </td>

                            <td>
                                <dl>
                                    <dt><a href="##" target="_blank"><img src="../images/04.jpg" class="goods-thumb"
                                                                          width="60" height="60"></a></dt>
                                    <dd><a href="##" target="_blank">{{$cart->item->product_name}}</a></dd>
                                </dl>
                            </td>

                            <td width="20%">
                                @if($cart->item->guige)
                                   @foreach (json_decode($cart->item->guige) as $name=>$guige)
                                       {{$name}}::{{$guige}}
                                       <hr>
                                       @endforeach
                                @endif
                            </td>

                            <td width="10%">{{$cart->item->price}}</td>
                            <td width="10%">{{$cart->itemweight}}</td>

                            <td width="8%">{{$cart->itemnum}}</td>

                            <td width="8%">{{$cart->item->price * $cart->itemnum}}</td>

                            <td width="14%" class="operation"><a href="##">购买</a></td>
                        </tr>
                    </table>
                    @endif
                @endforeach

                <div id="paging">

                </div>


            </div>
        </div>
    </div>




@stop
@section('js')
    <script type="text/javascript" src="{{asset('js/member/layui.js')}}"></script>
    <script>
        layui.use('element', function () {
            var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块

        });

        //删除//
        $('.dele_d').click(function () {
            //询问框
            layer.confirm('确定要删除？', {
                title: ['删除', 'font-size:16px;'],
                btn: ['确定', '取消'] //按钮
            }, function () {
                layer.msg('已经删除', {icon: 1});
            }, function () {
                layer.msg('取消删除', {
                    icon: 2

                });
            });
        });
        //

        //删除订单//
        $('.dele_dd').click(function () {
            //询问框
            layer.confirm('确定要删除订单？', {
                title: ['删除订单', 'font-size:16px;'],
                btn: ['确定', '取消'] //按钮
            }, function () {
                layer.msg('已经删除', {icon: 1});
            }, function () {
                layer.msg('取消删除', {
                    icon: 2

                });
            });
        });
        //
    </script>
@stop