<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/12/10
 * Time: 17:06
 */?>
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
            <h3>订  单</h3>
            <h5>
                (&nbsp;共
                <span data-total-record="true">309</span>
                条记录&nbsp;)
            </h5>

        </div>
        <div class="operate">
            <a class="reload" href="javascript:reload();" data-toggle="tooltip" data-placement="auto bottom" title="" data-original-title="刷新数据">
                <i class="iconfont">&#xe6fb;</i>
            </a>
        </div>
    </div>

    <div class="table-responsive">
        <table id="table_list" class="table table-hover">
            <thead>
            <tr>
                <!--排序样式sort默认，asc升序，desc降序-->
                <th class="w200" style="cursor: pointer;">投诉编号</th>
                <th class="w200" style="cursor: pointer;">订单编号</th>
                <th class="w200"  style="cursor: pointer;">投诉方</th>
                <th class="w250" style="cursor: pointer;">投诉原因</th>
                <th class="w250" style="cursor: pointer;">投诉状态</th>
                <th class="w250" style="cursor: pointer;">申请时间</th>
                <th class="w200 handle" style="cursor: pointer;">操 作</th>
            </tr>
            </thead>
            <tbody>
            <!--以下为循环内容-->

            <tr>

                <td>
                    201645214152
                </td>
                <td>
                    201645214152
                </td>
                <td>
                    李四&nbsp;&nbsp;<font class="c-blue">普通会员</font>
                </td>
                <td>承诺的没做到</td>
                <td>
                    买家提起投诉，等待卖家处理
                </td>
                <td>
                    3400元
                </td>
                <td class="handle">
                    <a href="##">查看</a>&nbsp;&nbsp;<a href="##">处理</a>
                </td>
            </tr>

            </tbody>

        </table>

        <div class="pull-right page-box">
            <div id="pagination"  class=" pull-right">

                <div class="pagination-info">
                    共7条记录，每页显示：
                    <select class="select m-r-5" data-page-size="10">

                        <option value="1">1</option>

                        <option value="10" selected="selected">10</option>

                        <option value="20">20</option>

                        <option value="30">30</option>

                        <option value="50">50</option>

                    </select>
                    条
                </div>

                <ul class="pagination">
                    <li class="disabled" style="display: none;">
                        <a class="fa fa-angle-double-left" data-go-page="1" title="第一页"></a>
                    </li>

                    <li class="disabled">
                        <a class="iconfont" title="上一页">&#xe70a;</a>
                    </li>

                    <li class="active">
                        <a data-cur-page="1">1</a>
                    </li>

                    <li class="disabled">
                        <a class="iconfont" title="下一页">&#xe709;</a>
                    </li>

                    <li class="disabled" style="display: none;">
                        <a class="fa fa-angle-double-right" data-go-page="1" title="最后一页"></a>
                    </li>
                </ul>

                <div class="pagination-goto">
                    <input class="ipt form-control goto-input" type="text">
                    <button class="btn btn-default goto-button" title="点击跳转到指定页面">GO</button>
                    <a class="goto-link" data-go-page="" style="display: none;"></a>
                </div>
            </div>
        </div>


    </div>

</div>
@stop
