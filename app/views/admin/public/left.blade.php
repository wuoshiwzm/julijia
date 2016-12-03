<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/11/9
 * Time: 19:05
 */
?>

<div class="admincp-container-left vl-sidebar tab-content">
    <div class="top-border">
        <span class="nav-side"></span>
        <span class="sub-side"></span>
    </div>

    <div id="product" class="nav-tabs tab-pane active">
        <ul class="tab-bar">
            <li class="J_ToolbarItem SZY-MENU-2" href="#system-index" data-toggle="tab" onclick="openMenu('/admin/index/main',this )">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe614;</b>
                    <div class="v-text">首页</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="#product_set" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe61d;</b>
                    <div class="v-text">商品</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/product/attribute_base_index',this,'')">属性集管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/product/attribute_index',this,'' )">属性管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/product/goods',this,'')">商品管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/product/category',this,'')">分类管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(set.html,this, '')">商品设置</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="#order" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont">&#xe728;</b>

                    <div class="v-text">订单</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/order',this )">订单列表</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/refund/index',this)">退款管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/comment/index',this)">评价管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/complain/index',this )">投诉管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/deliver/index',this )">发货管理</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="#members" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe6bb;</b>
                    <div class="v-text">会员</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/member/index',this)">用户列表</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(vip_jy.html,this )">交易记录</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(vip_dj.html,this )">用户等级</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(set.html,this )">用户设置</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

            <li class="J_ToolbarItem  SZY-MENU-2" href="#marketing" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe72e;</b>
                    <div class="v-text">营销</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/marketing/fullcut',this )">满减满送</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/marketing/coupon',this )">优惠券</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

            <li class="J_ToolbarItem  SZY-MENU-2" href="#news" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont">&#xe608;</b>
                    <div class="v-text">新闻</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                      <li>  <a href="javascript:void(0);" onclick="openMenu('/admin/newscate',this)">资讯分类 </a></li>
                      <li>  <a href="javascript:void(0);" onclick="openMenu('/admin/newsart',this)" >资讯</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

            <li class="J_ToolbarItem  SZY-MENU-2" href="#report"  data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont">&#xe608;</b>
                    <div class="v-text">统计</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li>  <a href="javascript:void(0);" onclick="openMenu('/admin/report/order',this,'')"  >订单</a> </li>
                        <li>  <a href="javascript:void(0);" onclick="openMenu('/admin/report/customer',this,'')"   >客户</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

        </ul>

        <ul class="toolbar J_ModuleSlides">
            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="system-index" class="slide tab-pane">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>
                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(index.html,this)" >
                                <div class="nav-title">
                                    欢迎页
                                    <em class="arrow-icon  fa fa-angle-right"></em>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

            <!-- 循环展开的二级菜单 BEGIN -->

            <li id="product_set" class="slide tab-pane active">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>
                        <li class="active">
                            <a href="javascript:void(0);" onclick="openMenu('/admin/product/goods',this,'')">
                                <div class="nav-title">
                                    商品管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>
                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu('/admin/product/category',this,'')">
                                <div class="nav-title">
                                    分类管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>
                                </div>
                            </a>
                        </li>


                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu('/admin/product/attribute_base_index',this,'')">
                                <div class="nav-title">
                                    属性集管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>
                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu('/admin/product/attribute_index',this,'' )">
                                <div class="nav-title">
                                    属性管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->


            <!-- 循环展开的二级菜单 BEGIN -->


            <li id="order" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    订单列表
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    退款/纠纷
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    订单批量导出
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    发货管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    物流查询统计
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(complaints01.html,this, )">
                                <div class="nav-title">
                                    交易评价
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    投诉管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="members" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(vip.html,this, )">
                                <div class="nav-title">
                                    会员列表
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    会员设置
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    客户等级
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="marketing" class="slide tab-pane">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu('',this)">
                                <div class="nav-title">
                                    满减满送
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu('/admin/marketing/fullcut',this,'' )">
                                <div class="nav-title">
                                    优惠券
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="news" class="slide tab-pane">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu('/admin/newscate',this)">
                                <div class="nav-title">
                                    资讯分类
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu('/admin/news',this)">
                                <div class="nav-title">
                                    资讯
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li id="report" class="slide tab-pane">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    订单
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    客户
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="statistical" class="slide tab-pane">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>
                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    订单
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    客户
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

        </ul>
    </div>

    <div id="supplier" class="nav-tabs tab-pane ">
        <ul class="tab-bar">

            <li class="J_ToolbarItem  SZY-MENU-2"  href="javascript:void(0);" onclick="openMenu('/admin/user/supplier',this,'')"  data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe712;</b>
                    <div class="v-text">入驻</div>
                    <b class="fa fa-caret-left"></b>
                </div>

            </li>
            <li class="J_ToolbarItem  SZY-MENU-2"  href="javascript:void(0);" onclick="openMenu('/admin/product/brand',this,'')"  data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="iconfont iconfont_f20">&#xe71f;</b>

                    <div class="v-text">品牌</div>
                    <b class="fa fa-caret-left"></b>
                </div>

            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="javascript:void(0);" onclick="openMenu('/admin/user/shop',this,'' )"  data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>
                    <b class="iconfont iconfont_f20">&#xe72f;</b>
                    <div class="v-text">门店</div>
                    <b class="fa fa-caret-left"></b>
                </div>

            </li>

        </ul>
        <ul class="toolbar J_ModuleSlides">

            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="supplier_01" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(live.html,this, )">
                                <div class="nav-title">
                                    入驻列表
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li id="supplier_02" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(brand.html,this, )">
                                <div class="nav-title">
                                    品牌管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li id="supplier_03" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(shop.html,this, )">
                                <div class="nav-title">
                                    供应商
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            <!-- 循环展开的二级菜单 END  -->

        </ul>
    </div>

    <div id="finance" class="nav-tabs tab-pane ">
        <ul class="tab-bar">

            <li class="J_ToolbarItem  SZY-MENU-2" href="#finance-capital" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="iconfont iconfont_f20"></b>
                    <div class="v-text">财务</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">订单管理</a></li>

                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

        </ul>
        <ul class="toolbar J_ModuleSlides">

            <!-- 循环展开的二级菜单 BEGIN -->


            <li id="finance-capital" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar ">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    财务管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

        </ul>
    </div>

    <div id="app" class="nav-tabs tab-pane ">
        <ul class="tab-bar">

            <li class="J_ToolbarItem  SZY-MENU-2" href="#app-setting" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="fa fa-cog fa-fw"></b>

                    <div class="v-text">管理</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">用户管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">角色管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">菜单管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">缓存管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">索引管理</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="#app-setting" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="fa fa-cog fa-fw"></b>

                    <div class="v-text">设置</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/system/config',this)">系统设置</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/system/tongxinconfig',this)">通信设置</a></li>

                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

        </ul>
        <ul class="toolbar J_ModuleSlides">

            <!-- 循环展开的二级菜单 BEGIN -->


            <li id="app-setting" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    用户管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    角色管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    菜单管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    缓存管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    索引管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

        </ul>
    </div>

    <div id="system_sat" class="nav-tabs tab-pane ">
        <ul class="tab-bar">

            <li class="J_ToolbarItem  SZY-MENU-2" href="#management" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="fa fa-cog fa-fw"></b>

                    <div class="v-text">管理</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">用户管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">角色管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">菜单管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">缓存管理</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">索引管理</a></li>
                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>
            <li class="J_ToolbarItem  SZY-MENU-2" href="#System_Settings" data-toggle="tab">
                <div class="wrap J_TGoldData">
                    <div class="left-line"></div>

                    <b class="fa fa-cog fa-fw"></b>

                    <div class="v-text">设置</div>
                    <b class="fa fa-caret-left"></b>
                </div>
                <!-- 循环收缩的二级菜单 start -->
                <div class="submenu">
                    <ul>

                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/system/config',this)">系统设置</a></li>
                        <li><a href="javascript:void(0);" onclick="openMenu('/admin/system/tongxin',this )">通信设置</a></li>

                    </ul>
                </div>
                <!-- 循环收缩的二级菜单 END -->
            </li>

        </ul>
        <ul class="toolbar J_ModuleSlides">

            <!-- 循环展开的二级菜单 BEGIN -->


            <li id="management" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    用户管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    角色管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    菜单管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    缓存管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    索引管理
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->


            <!-- 循环展开的二级菜单 BEGIN -->
            <li id="System_Settings" class="slide tab-pane ">
                <div class="product-nav-list mCustomScrollbar">
                    <ul>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    系统设置
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                        <li class="">
                            <a href="javascript:void(0);" onclick="openMenu(/product_set.html,this,; )">
                                <div class="nav-title">
                                    通信设置
                                    <em class="arrow-icon  fa fa-angle-right"></em>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </li>
            <!-- 循环展开的二级菜单 END  -->

        </ul>
    </div>



    <!--展开收起菜单按钮-->
    <div class="navbar-collapse" data-switch-toggle="state">
        <a class="navbar-btn">
            <i class="fa fa-outdent"></i>
        </a>
    </div>
</div>
