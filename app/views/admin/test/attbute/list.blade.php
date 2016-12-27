<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/10/13
 * Time: 11:36
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
    </style>
</head>
<body style="margin: auto 0; width: 90%">
@include('admin.test.left')
<div class="right">
    <div class="toolbar">
        <label>属性列表</label>
        <div class="bar_optin">
            <a href="/test/attbute/add">添加</a>
        </div>
    </div>
    <div class="content">
        <table>
            <tbody>
            <th>属性集</th>
            <th>名称</th>
            <th>类型</th>
            <th>后台标题</th>
            <th>前端标题</th>
            <th>长度</th>
            <th>验证规则</th>
            @foreach( $list as $val)
                <tr>
                    <td>{{isset($val->AttrbuteSet->attribute_name)?$val->AttrbuteSet->attribute_name:''}}</td>
                    <td>{{$val->name}}</td>
                    <td>{{$val->type}}</td>
                    <td>{{$val->admin_label}}</td>
                    <td>{{$val->front_lable}}</td>
                    <td>{{$val->length}}</td>
                    <td>{{$val->valid_rule}}</td>
                    <td><a href="/test/attbute/edit?id={{encode($val->id)}}">编辑</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
