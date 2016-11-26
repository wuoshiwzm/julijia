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
  <a href="{{url('user/info/edit')}}"> 更改信息</a>
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
                <label class="control-label cur-p m-r-10"><?php echo Auth::user()->name;?></label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户昵称：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10"><?php echo Auth::user()->alias;?>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">性别：</span>
              </label>
              <div class="col-sm-8">
                  <label class="control-label cur-p m-r-10">
                    <?php if(Auth::user()->sex == 1){
                      echo '男';
                    }else{
                      echo '女';
                    }
                    ?>

                  </label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
                <label class="col-sm-4 control-label">
                  <span class="ng-binding">出生日期：</span>
                </label>
              <div class="col-sm-8">
                <?php
                //$time = mktime(Auth::user()->birthday);
                $t = strtotime(Auth::user()->birthday);
                echo '<label class="control-label cur-p m-r-10">';
                echo date('Y年 m月 d日',$t);
                echo '</label>';
                 ?>


              </div>
          </div>
        </div>

        <div class="simple-form-field">
              <div class="form-group">
                  <label class="col-sm-4 control-label">
                    <span class="ng-binding">邮 箱：</span>
                  </label>
                  <div class="col-sm-8">
                    <label class="control-label cur-p m-r-10"><?php echo Auth::user()->email; ?></label>
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
                  <label class="control-label cur-p m-r-10">{{$province}}</label>
                  <label class="control-label cur-p m-r-10">{{$city}}</label>
                  <label class="control-label cur-p m-r-10">{{$district}}</label>
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
                <label class="control-label cur-p m-r-10">
                  @if(isset($userAddr))
                  {{$userAddr->address}}
                  @else
                  无地址信息
                  @endif

                </label>
              </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">手机号码：</span>
              </label>
              <div class="col-sm-8">
                <label class="control-label cur-p m-r-10"><?php echo Auth::user()->mobile_phone; ?></label>
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
              <label class="control-label cur-p m-r-10"><?php echo Auth::user()->user_points ?></label>
            </div>
          </div>
          <div class="form-group">
              <label class="col-sm-4 control-label">
                <span class="ng-binding">用户等级：</span>
              </label>
              <div class="col-sm-8">
              <label class="control-label cur-p m-r-10">{{$group}}</label>
            </div>
          </div>
        </div>

        <div class="simple-form-field">
          <div class="form-group">
            <label class="col-sm-4 control-label">
            <span class="ng-binding">是否登录：</span>
            </label>
            <div class="col-sm-8">
               <label class="control-label cur-p m-r-10"><?php if(!Auth::guest())
               echo '是';
               else
               echo '否';
               ?></label>
            </div>
          </div>
        </div>
        <div class="simple-form-field">
        </div>


	</div>
    </div>
</div>


@stop
