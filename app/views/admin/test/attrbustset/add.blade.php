<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/10/12
 * Time: 16:05
 */?>

<html>
<head>
    <style>
ul li{
    margin-left: 35px;
            list-style-type: none;
        }
        .left{float: left;top: 50px;width: 200px}
        .right{ float: left;top: 50px;width: 450px;}
        table{width: 600px;text-align: center}
        .toolbar{ margin-top: 20px}
        .toolbar div{ float: right}
        .content{padding-top:20px}
        .content ul{ line-height: 35px}
        .content li label{ width: 35px}
    </style>
</head>
<body style="margin: auto 0; width: 90%">
@include('admin.test.left')
<div class="right">
    <div class="toolbar">
        <label>属性集</label>
        <div class="bar_optin">
            <a href="/test/attbuteset/add">添加</a>
        </div>
    </div>
    <div class="content">
        <form action="/test/attbuteset/save" method="post">
         <ul>
             <li>
                 <label>名称</label>
                 <input type="text" name="attribute_name">
             </li>
             <li>
                 <label>类型</label>
                  <select name="type">
                      <option value="product">product</option>
                  </select>
             </li>
             <li> <input type="submit" value="提交"></li>
         </ul>
        </form>
    </div>
</div>

</body>
</html>