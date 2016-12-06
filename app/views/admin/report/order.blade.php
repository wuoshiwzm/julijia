<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/11/18
 * Time: 11:25
 */?>
<?php
$start =  isset($_GET['ceated_at_begin'])?$_GET['ceated_at_begin']:'';
$end =  isset($_GET['ceated_at_end'])?$_GET['ceated_at_end']:'';
$name =  isset($_GET['name'])?$_GET['name']:'';
$status =  isset($_GET['status'])?$_GET['status']:'';
?>

@section('content')
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">订单统计</span>
                    </h3>
                </div>
            </div>
        </div>
        <!--搜索-->
        <div class="search-term m-b-10">
            <form  action="/admin/report/order" method="POST">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>有效期：</span>
                        </label>

                        <div class="form-control-wrap">
                            <input type="text" class="form-control w100"  name="ceated_at_begin" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                            至
                            <input type="text" class="form-control w100"  name="ceated_at_end" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>状 态：</span>
                        </label>
                        <div class="form-control-wrap">
                            <select  class="form-control"  name="status">
                                <option value="">全部</option>
                                <option value="1">正常</option>
                                <option value="0">作废</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="control-label">
                            <span>客户名称：</span>
                        </label>
                        <div class="form-control-wrap">
                            <input type="text" id="searchmodel-keyword" class="form-control" name="name">
                        </div>

                    </div>
                </div>


                <div class="simple-form-field">
                    <input type="submit" id="btn_search" value="查询" class="btn btn-primary m-r-5">
                    <input type="button" id="btn_search" value="导出结果" class="btn btn-primary m-r-5" onclick="location='admin/report/exportorder'">
                </div>

            </form>
        </div>

        <div class="common-title">
            <div class="ftitle">
                <h3>订单列表</h3>

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
        <!--列表内容-->
        <div class="table-responsive">
            <table id="table_list" class="table table-hover">
                <thead>
                <tr>
                    <!--排序样式sort默认，asc升序，desc降序-->
                    <th class="w100" style="cursor: pointer;">订单编号</th>
                    <th class="w100" style="cursor: pointer;">订单来源</th>
                    <th class="w150" style="cursor: pointer;">客户名称</th>
                    <th class="w150" style="cursor: pointer;">客户电话</th>
                    <th class="w150" style="cursor: pointer;">支付方式</th>
                    <th class="w100"  style="cursor: pointer;">购买数量</th>
                    <th class="w100"  style="cursor: pointer;">商品价格</th>
                    <th class="w100"  style="cursor: pointer;">优惠金额</th>
                    <th class="w100"  style="cursor: pointer;">支付金额</th>
                </tr>
                </thead>
                <tbody>
                <!--以下为循环内容-->
                <tr>
                    <td colspan="9">
                      <p style="text-align: center">没有查询到数据</p>
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
@section('')
