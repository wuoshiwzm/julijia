<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta 填写运单号="utf-8">
    <title>选择物流</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <style>
        /* css 重置 */
        *{margin:0; padding:0; list-style:none; }
        .phone{ padding:20px 30px 0px 30px; font-family:"微软雅黑";}
        .phone h1{ height:40px; line-height:34px; font-size:16px; color:##24A0D6; border-bottom:1px solid #24A0D6; }
        .phone ul { padding:20px; }
        .phone ul li{ height:44px; line-height:44px; font-size:16px;}
        .phone ul li font{  float:left; display:block; width:100px; text-align:right;}
        .phone ul li .txt{ height:30px;width:188px; padding:0 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
        .phone ul li .txt2{ width:100px;}
        ul li .textarea{ height:120px;width:340px; padding:6px 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
        .phone .button{ width:158px; color:#fff; height:36px; line-height:36px; background:#24A0D6; border:0; float:left;margin-top:6px;font-weight:bold; font-size:16px; margin-top:16px;}
        .button02{ margin-left:14px; background:#aaa !important;}

        #order_status{height:30px;width:210px; padding:0 10px; line-height:30px; font-size:16px; border:1px solid #ddd;float:left; margin-top:6px;}
    </style>
</head>
<body>
<div class="phone">
    <h1>选择物理公司-（填写运单号）</h1>
    <form>
        <ul>
            <li><font>物流公司：</font>
                <select id="order_status">
                    <option value="0">顺丰快递</option>
                    <option value="1">中通快递</option>
                    <option value="2">圆通快递</option>
                </select>
            </li>
            <li><font>物流单号：</font><input name="" class="txt" type="text"></li>
            <li><input name="" value="确认发货" class="button" type="button"><input name="" value="无需物流发货" class="button button02" type="button"></li>
        </ul>
    </form>
</div>
</body>
</html>