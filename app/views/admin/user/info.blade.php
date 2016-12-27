@section('admincss')
  <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css')}}">

  <!-- ================== END BASE CSS STYLE ================== -->
  <!--[if lt IE 9]>
        <script type="text/javascript" src="../js/html5shiv.min.js"></script>
        <script type="text/javascript" src="../js/respond.min.js"></script>
      <![endif]-->
  <!-- ================== BEGIN BASE JS ================== -->

  <script type="text/javascript" src="{{url('js/public/js/jquery.js')}}"></script>

  <!-- ================== END BASE CSS STYLE ================== -->
  <!--[if lt IE 9]>
        <script type="text/javascript" src="../js/html5shiv.min.js"></script>
        <script type="text/javascript" src="../js/respond.min.js"></script>
      <![endif]-->
  <!-- ================== BEGIN BASE JS ================== -->
@stop


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
  <li><a   class="current" href="{{url('user/info')}}">
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
  <li><a href="{{url('user/cart')}}" >
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



	<div class="form-horizontal" >
	<div class="table-content m-t-30 ">

        <h5 class="tab_h5"><font class="iconfont">&#xe64e;</font>基本信息</h5>
		<div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户名：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10">3133089*86</label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户昵称：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10">握手的中年人</label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">性别：</span>
              </label>
              <div class="col-sm-8">
                  <label class="control-label cur-p m-r-10">男</label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
                <label class="col-sm-4 control-label">
                  <span class="ng-binding">出生日期：</span>
                </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10">2016 年</label>
                <label class="control-label cur-p m-r-10">12 月</label>
                <label class="control-label cur-p m-r-10">10 日</label>

              </div>
          </div>
        </div>

        <div class="simple-form-field">
              <div class="form-group">
                  <label class="col-sm-4 control-label">
                    <span class="ng-binding">邮 箱：</span>
                  </label>
                  <div class="col-sm-8">
                    <label class="control-label cur-p m-r-10">313308939@qq.com</label>
                  </div>
              </div>
            </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">居住地：</span>
              </label>
              <div class="col-sm-8">
                 <div class="form-control-box">
                  <label class="control-label cur-p m-r-10">陕西省</label>
                  <label class="control-label cur-p m-r-10">西安市</label>
                  <label class="control-label cur-p m-r-10">高新区</label>
		         </div>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">详细地址：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10">高科广场d坐</label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">手机号码：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10">13259805469</label>
              </div>
          </div>
        </div>

        <h5 class="tab_h5"><font class="iconfont">&#xe693;</font>账户信息</h5>
        <div class="simple-form-field">
          <div class="form-group" >
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户积分：</span>
              </label>
              <div class="col-sm-8">
              <label class="control-label cur-p m-r-10">10000分</label>
            </div>
          </div>
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户等级：</span>
              </label>
              <div class="col-sm-8">
              <label class="control-label cur-p m-r-10">普通用户</label>
            </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
            <label class="col-sm-4 control-label">
            <span class="ng-binding">是否登录：</span>
            </label>
            <div class="col-sm-8">
               <label class="control-label cur-p m-r-10">是</label>
            </div>
          </div>
        </div>

        <div class="simple-form-field">
        </div>


	</div>
    </div>
</div>


@stop
