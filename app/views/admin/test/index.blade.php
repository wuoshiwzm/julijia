<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2016/10/12
 * Time: 15:28
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
            <label>属性集</label>
            <div class="bar_optin">
                <a href="/test/attbuteset/add">添加</a>
            </div>
        </div>
        <div class="content">
            <table>
              <tbody>
                <th>名称</th>
                <th>类型</th>
                <th>时间</th>
                <th>操 作</th>
                @foreach( $list as $val)
                    <tr>
                        <td>{{$val->attribute_name}}</td>
                        <td>
                            @if($val->type =="product")
                                 产品
                            @elseif($val->type =="order")
                                订单
                            @elseif($val->type =="customer")
                                 客户
                            @endif
                        </td>
                        <td>{{$val->created_at}}</td>
                        <td><a href="/test/attbuteset/edit?id={{encode($val->id)}}">编辑</a></td>
                    </tr>
                @endforeach
              </tbody>
            </table>
        </div>
   </div>

</body>
</html>
