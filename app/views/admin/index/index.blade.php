@extends('layouts.admin_right')
@section('admincss')
   <link type="text/css" rel="stylesheet" href="{{url('css/admin/welcome.css')}}">
@stop
@section('content')
   <div class="page" style="background: #f5f5f5; padding: 20px 25px;">
      <div class="row card-box">
         <div class="col-lg-3 col-sm-3">
            <div class="panel green">
               <div class="symbol">
                  <i class="iconfont iconfont_40">&#xe73a;</i>
               </div>
               <div class="value">
                  <p class="num" id="today_gains">0.00</p>
                  <p class="text">今日销售总额</p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-sm-3">
            <div class="panel purple">
               <div class="symbol">
                  <i class="iconfont">&#xe712;</i>
               </div>
               <div class="value">
                  <p class="num" id="today_shops">0</p>
                  <p class="text">今日入驻商家</p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-sm-3">
            <div class="panel blue">
               <div class="symbol">
                  <i class="iconfont">&#xe721;</i>
               </div>
               <div class="value">
                  <p class="num" id="today_users">0</p>
                  <p class="text">今日注册会员</p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-sm-3">
            <div class="panel orange">
               <div class="symbol">
                  <i class="iconfont">&#xe68d;</i>
               </div>
               <div class="value">
                  <p class="num" id="today_visits">0</p>
                  <p class="text">今日网站访问</p>
               </div>
            </div>
         </div>
      </div>
      <!--订单小统计-->
      <div class="row mini-stat">
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon orange">
						<i class="iconfont">&#xe65f;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="unpayed">50</span>
                     <span class="text">待付款订单数</span>
                  </div>
               </a>
            </div>
         </div>
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon tar">
						<i class="iconfont">&#xe71a;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="unshipped">27</span>
                     <span class="text">待发货订单数</span>
                  </div>
               </a>
            </div>
         </div>
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon brown">
						<i class="iconfont">&#xe664;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="shipped">2</span>
                     <span class="text">已发货订单数</span>
                  </div>
               </a>
            </div>
         </div>
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon pink">
						<i class="iconfont">&#xe667;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="backing">0</span>
                     <span class="text">退款中订单数</span>
                  </div>
               </a>
            </div>
         </div>
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon green">
						<i class="iconfont">&#xe6e6;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="unevaluate">1</span>
                     <span class="text">待评价订单数</span>
                  </div>
               </a>
            </div>
         </div>
         <div class="col-lg-2 col-sm-2">
            <div class="panel">
               <a href="##">
					<span class="mini-stat-icon blue">
						<i class="iconfont">&#xe734;</i>
					</span>
                  <div class="mini-stat-info">
                     <span class="num" id="finished">3</span>
                     <span class="text">已完成订单数</span>
                  </div>
               </a>
            </div>
         </div>
      </div>
      <!--中间内容-->
      <div class="row">
         <!--左侧内容-->
         <div class="col-md-8">
            <!---->
            <div class="panel">
               <div class="panel-header">
                  <h3>会员增长统计图</h3>
               </div>
               <div class="panel-body">

               </div>
            </div>
         </div>
         <!--中间内容-->
         <div class="col-md-4">
            <!---->
            <div class="panel">
               <div class="panel-header">
                  <h3>运营快捷入口</h3>
               </div>
               <div class="panel-body">
                  <div class="entrance-box">
                     <dl>
                        <sub></sub>
                        <dt class="p-name">
                           <a href="##">订单列表</a>
                        </dt>
                        <dd class="p-ico">
                           <a>
                              <i class="order"></i>
                           </a>
                        </dd>
                     </dl>
                     <dl>
                        <sub></sub>
                        <dt class="p-name">
                           <a href="##">退款管理</a>
                        </dt>
                        <dd class="p-ico">
                           <a>
                              <i class="return"></i>
                           </a>
                        </dd>
                     </dl>
                     <dl>
                        <sub></sub>
                        <dt class="p-name">
                           <a href="##">入驻商管理</a>
                        </dt>
                        <dd class="p-ico">
                           <a>
                              <i class="apply"></i>
                           </a>
                        </dd>
                     </dl>
                     <dl>
                        <sub></sub>
                        <dt class="p-name">
                           <a href="##">会员管理</a>
                        </dt>
                        <dd class="p-ico">
                           <a>
                              <i class="user"></i>
                           </a>
                        </dd>
                     </dl>

                     <dl>
                        <sub></sub>
                        <dt class="p-name">
                           <a href="">账单管理</a>
                        </dt>
                        <dd class="p-ico">
                           <a>
                              <i class="money"></i>
                           </a>
                        </dd>
                     </dl>
                  </div>
               </div>
            </div>
         </div>
      </div>


      <!--系统信息-->
      <div class="row">
         <div class="col-lg-12 col-sm-12">

         </div>
      </div>

   </div>
@stop
