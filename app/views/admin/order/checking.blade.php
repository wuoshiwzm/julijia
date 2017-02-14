@section("title")
    待审核的评价
@stop

@section("admincss")
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/styles.css')}}">
    <style>
        .phone{ padding:20px 30px 0px 30px; font-family:"微软雅黑";}
        .phone h1{ height:40px; line-height:34px; font-size:16px; color:##24A0D6; border-bottom:1px solid #24A0D6}
        .phone ul { padding:20px; }
        .phone ul li{ clear:both; }
        .phone ul li font{  float:left; display:block; width:70px;}
        .phone ul li .textarea{ height:120px;width:340px; padding:6px 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
        .phone .button{ width:160px; color:#fff; height:36px; line-height:36px; background:#24A0D6; border:0; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px;}
    </style>
@stop

@section("content")
<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <div class="subject">
                <h3>
                    <span class="action">评论列表</span>
                </h3>
            </div>
        </div>
    </div>

    <!--搜索-->
    <div class="search-term m-b-10"><form action="{{url("/admin/comment/checking")}}" method="get">
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>订单编号：</span>
                    </label>
                    <div class="form-control-wrap">
                        <input id="searchmodel-keyword" class="form-control" name="order_sn" placeholder="订单编号"
                               type="text" value="{{Input::get('order_sn')}}">
                    </div>
                </div>
            </div>

            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>星级：</span>
                    </label>
                    <div class="form-control-wrap">
                        <select name="rank" class="form-control">
                            <option value="0">全部</option>
                            <option value="1"
                                    @if(Input::get("rank") == 1)
                                    selected
                                    @endif
                            >1颗星</option>
                            <option value="2"
                                    @if(Input::get("rank") == 2)
                                    selected
                                    @endif
                            >2颗星</option>
                            <option value="3"
                                    @if(Input::get("rank") == 3)
                                    selected
                                    @endif
                            >3颗星</option>
                            <option value="4"
                                    @if(Input::get("rank") == 4)
                                    selected
                                    @endif
                            >4颗星</option>
                            <option value="5"
                                    @if(Input::get("rank") == 5)
                                    selected
                                    @endif
                            >5颗星</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="simple-form-field">
                <div class="form-group">
                    <label class="control-label">
                        <span>评论状态：</span>
                    </label>
                    <div class="form-control-wrap">
                        <select name="status" class="form-control">
                            <option value="1">已回复</option>
                            <option value="0">未回复</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="simple-form-field">
                <input id="btn_search" value="查询" class="btn btn-primary m-r-5" type="submit">
            </div>

        </form>
    </div>

    <div class="common-title">
        <div class="ftitle">
            <h3>商品列表</h3>
            <h5>
                (&nbsp;共
                <span data-total-record="true">{{$data->getTotal()}}</span>
                条记录&nbsp;)
            </h5>

        </div>
        <div class="operate">
            <a class="reload" href="" data-toggle="tooltip" data-placement="auto bottom" title="" data-original-title="刷新数据">
                <i class="iconfont"></i>
            </a>

        </div>
    </div>
    <div class="item-list-hd">
        <ul class="item-list-tabs">
            <a href="{{url("/admin/comment/index")}}">
                <li name="all" class="tabs-t ">显示的评价</li>
            </a>
            <a href="{{url("/admin/comment/checking")}}">
                <li name="un" class="tabs-t current">待审核的评价</li>
            </a>
        </ul>
    </div>
    <!--列表内容-->
    <div class="table-responsive">

        <!---->
        <table id="table_list" class="table table-hover">
            <thead>
            <tr>
                <th class="tcheck">
                    <input class="checkBox allCheckBox table-list-checkbox-all" title="全选/全不选" type="checkbox">
                </th>

                <th style="cursor: pointer;">宝贝信息</th>
                <th style="cursor: pointer; text-align:center">评价</th>
                <th style="cursor: pointer;">评价人</th>

                <!--操作列样式handle-->
                <th class="handle">操作</th>
            </tr>
            </thead>
            <tbody>
            <!--以下为循环内容-->
            @foreach($data as $row)
                <tr class="order-tr" name="1">
                    <td class="tcheck">
                        <input class="checkBox table-list-checkbox" type="checkbox">
                    </td>
                    <td>
                        <div class="goodsPicBox pull-left m-r-10">
                            <img src="/images/pic01.png" class="goods-thumb">
                        </div>
                        <div class="ng-binding refund-message">
                            <div class="name">
                                <a href="#" target="_blank" data-toggle="tooltip" data-placement="auto bottom" title=""
                                   class="c-blue" data-original-title="{{$row->item->product_name}}">{{$row->item->product_name}}</a>
                            </div>

                            <div class="time">下单时间：{{$row->order->created_at}}</div>
                            <div class="time">订单编号：{{$row->order->order_sn}}</div>
                        </div>
                    </td>
                    <!--icon-0为实星，icon-1为虚星-->
                    <td>
                        <div class="ng-binding">
                            <span class="text-c">
								<a class="score-icon icon-0 m-r-5"></a>
								好评
							</span>
                            <span class="star-icon text-c">
                                @for($i = 0; $i < 5; $i++)
                                    @if($i <= $row->leavel)
                                        <i class="icon-0"></i>
                                    @else
                                        <i class="icon-1"></i>
                                    @endif
                                @endfor
							</span>
                        </div>
                    </td>
                    <!--b_blue_5.gif为钻级用户，1为一个钻，以此类推；b_red_4.gif为红心级用户；s_cap_4.gif为冠级用户-->
                    <td>
                        <div class="ng-binding">
							<span>
								{{$row->real_name}}
                                <font class="c-blue">{{$row->name}}</font>
							</span>
                        </div>
                    </td>
                    <td class="handle">
                        <a class="hiddens" href="{{url('/admin/comment/detail?'.http_build_query(["c_id" => $row->id]))}}">查看详情</a>&nbsp;&nbsp;
                        @if($row->status == 0 )
                            <a class="hiddens huifu" data-id="{{$row->id}}" href="javascript:void(0);">审核</a>
                        @endif
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        @include("admin.public.page",array('data'=>$data,'set'=>$set))
        <!---->
    </div>
</div>
<!-- 相册轮换  -->
<div class="phone" style="display: none">
    <h1>用户评价审核及回复</h1>
    <form id="replay_form">
        <ul>
            <li style="padding-bottom:8px; font-size:14px;"><label>
                    <span class="ng-binding">是否通过：</span>
                    <label class="control-label"><input type="radio" name="tong" value="1" > 是</label>
                    <label class="control-label"><input type="radio" name="tong" value="0"> 否</label>
                </label>
            </li>
            <li>
                <textarea class="textarea" name="content"></textarea>
            </li>
            <li>
                <input type="hidden" id="c_id" name="c_id">
                <input id="replay" type="button" value="回复"  class="button">
            </li>
        </ul>
    </form>
</div>
<script>
    $(function(){
        var comment_id;
        $(".huifu").click(function(){
            //重置表单
            $("#replay_form")[0].reset();
            comment_id = $(this).attr("data-id");
            $("#c_id").val(comment_id);
            index = layer.open({
                type: 1,
                title:false,
                shadeClose: true,
                shade: 0.6,
                area: ['444px', '350px'],
                content: $(".phone")
            });
        })

        $("#replay").click(function(){
            var tong = $("[name=tong]:checked").val();
            var content = $("[name=content]").val();
            if (tong == undefined) {
                layer.msg("请选择是否审核通过",{icon:2,time:800})
                return false;
            }else if(content == ""){
                layer.msg("请填写回复内容",{icon:2,time:800})
                return false;
            }
            $.post("/admin/comment/check",$("#replay_form").serialize(),function(data){
                if(data.status == 1) {
                    layer.msg("审核操作成功",{icon:1,time:800})
                    layer.close(index);
                    $("a[data-id="+comment_id+"]").remove();
                }else if(data.status == 0) {
                    layer.msg("审核操作失败",{icon:2,time:800})
                }
            })
        })

    })
</script>
@stop