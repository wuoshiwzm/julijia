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
					<a href="vip.html" class="btn btn-warning click-loading">
						<i class="iconfont">&#xe6d4;</i>
						返回会员列表
					</a>
				</span>
			</h5>

      <ul class="tab-base shop-row">
  <li><a href="{{url('user/welc')}}" >
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
  <li><a class="current"  href="{{url('user/cart')}}" >
    <span>购物车</span>
    </a>
  </li>
          <li><a href="{{url('user/collect')}}">
    <span>收藏</span>
    </a>
  </li>
  <li><a href="" >
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

<div class="common-title">
	<div class="ftitle">
		<h3>购物车</h3>
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
					<th class="w250" style="cursor: pointer;">商品编号</th>
					<th class="w250" style="cursor: pointer;">商品名称</th>
					<th class="w150"  style="cursor: pointer;">SKU</th>
					<th class="w150" style="cursor: pointer;">数量</th>
					<th class="w150" style="cursor: pointer;">价格</th>
                    <th class="w150" style="cursor: pointer;">合计</th>
				</tr>
			</thead>
			<tbody>
				<!--以下为循环内容-->
				<tr>
					<td>
						201645214152
					</td>
					<td>
                        联想笔记本
                    </td>
					<td>
                        LX001
                    </td>
					<td>1</td>
                    <td>
                        3400
					</td>
                    <td>
                        3400
					</td>
				</tr>

                <tr>
					<td>
						201645214152
					</td>
					<td>
                        联想笔记本
                    </td>
					<td>
                        LX001
                    </td>
					<td>1</td>
                    <td>
                        3400
					</td>
                    <td>
                        3400
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
