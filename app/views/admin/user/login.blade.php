<!DOCTYPE html>
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>曼蒂商城平台系统管理中心 - 登录</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">

<!-- ================== BEGIN BASE CSS STYLE ================== -->

<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="../css/bootstrap-switch.min.css">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../css/login.css">
<!-- ================== END BASE CSS STYLE ================== -->
<!--[if lt IE 9]>
      <script type="text/javascript" src="../js/html5shiv.min.js"></script>
      <script type="text/javascript" src="../js/respond.min.js"></script>
    <![endif]-->
<!-- ================== BEGIN BASE JS ================== -->
<script type="text/javascript" src="../js/jquery.js"></script>

</head>
<body class="pace-done">
<!--[if IE]>
<div class="ie-warning" style="width:auto;">什么？您还在使用 Internet Explorer (IE) 浏览器？ 很遗憾，我们已不再支持IE浏览器。事实上，升级到以下支持HTML5的浏览器将获得更牛逼的操作体验：<a href="http://www.mozillaonline.com/">Firefox</a> / <a href="http://www.google.com/chrome/?hl=zh-CN">Chrome</a> / <a href="http://www.apple.com.cn/safari/">Safari</a> / <a href="http://www.operachina.com/">Opera</a>，
赶紧升级浏览器，让操作效率提升80%-120%！
</div>
<![endif]-->
<div class="page-container">
    <div class="center">
        <div class="logo-info">
            <a href="javascript:void(0);">
                <img src="../images/logo.png">
            </a>
            <p>曼蒂商城平台系统管理中心</p>
        </div>
        <div class="line">
            <img src="../images/line.png">
        </div>
        <div class="form-info">
            <form id=" " name=" " class="m-form">

            <div class="input-text-box">
                <div class="form-group" style="width:600px; text-align:left;">
                    <label class="tit">帐号</label>
                    <!-- 用户名 -->
                    <input type="text" class="username input-text"  ignore="ignore"  datatype="n" placeholder="请输入用户名"  errormsg="请输入" tipsrmsg="请输入" ><span class="Validform_checktip"></span>
                </div>
                <div class="form-group" style="width:600px; text-align:left;">
                    <label class="tit">密码</label>
                    <!-- 密码 -->
                    <input type="password" id=" " class="username input-text" name=" "  ignore="ignore"  datatype="n" placeholder="请输入密码"  errormsg="请输入" tipsrmsg="请输入" ><span class="Validform_checktip"></span>

                </div>

                <div class="form-group checkbox-signup">
                    <label class="check-label">
                        <input type="checkbox" checked="checked">
                        记住密码
                    </label>
                </div>
            </div>

            <input type="button" id="btn_submit" class="submit" value="立即登录">

            </form>

        </div>


    </div>
    <div class="bottom">
        <h6>
            Copyright © 2016-2026 曼蒂税保 - 版权所有
        </h6>

    </div>
</div>

<ul class="speed" id="supersized" style="visibility: visible;">
<li class="slide-3 activeslide" style="visibility: visible; opacity: 0.941146;"><a target="_blank"><img src="../images/login_bg.jpg" style="width: 1920px; height: 1075.2px; left: 0px; top: -32px;"></a></li>
</ul>


<script type="text/javascript" src="../js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
//初始化验证//


		     $(".m-form").Validform({
		         altercss:'Validform_skate',
		         postonce:true,
		         showAllError:true,
		         postonce:true,
		         tiptype:function(msg,o,cssctl){
		             if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
		                 var objtip=o.obj.parent().find(".Validform_checktip");
		                 objtip.removeClass('Validform_skate');
		                 cssctl(objtip,o.type);
		                 objtip.text(msg);
		             }else{
		                 var objtip=o.obj.find("#msgdemo");
		                 objtip.removeClass('Validform_skate');
		                 cssctl(objtip,o.type);
		                 objtip.text(msg);
		             }
		         },
		     });
		     $(".m-form").find('input').each(function() {
		         $(this).focus(function () {
		             if ($(this).val() == '') {
		                 var msg = $(this).attr('tipsrmsg');
		                 $(this).parent().find(".Validform_checktip").addClass('Validform_skate');
		                 $(this).parent().find(".Validform_checktip").removeClass('Validform_wrong');
		                 $(this).parent().find(".Validform_checktip").text(msg);
		             } else {
		                 $(this).parent().find(".Validform_checktip").removeClass('Validform_skate');
		             }
		         });
		         $(this).blur(function () {
		             if ($(this).val() == '') {
		                 var msg = $(this).attr('errormsg');
		                 $(this).parent().find(".Validform_checktip").removeClass('Validform_skate');
		                 $(this).parent().find(".Validform_checktip").addClass('Validform_wrong');
		                 $(this).parent().find(".Validform_checktip").text(msg);
		             }
		         });
		     });

//
</script>

<script type="text/javascript" src="../js/rules.js"></script>


</body></html>
