<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2017/1/9
 * Time: 12:04
 */?>

<form id="searchForm" method="get" action="{{url('/admin/order/index')}}">
    <div class="simple-form-field">
        <div class="form-group">
            <label class="control-label">
                <span>关键字：</span>
            </label>
            <div class="form-control-wrap">
                <input id="name" class="form-control" value="<?= Input::get("keyword")?>" name="keyword" placeholder="商品名称/订单编号/买家帐号" type="text" style="width: 200px">
            </div>
        </div>
    </div>
    <div class="simple-form-field">
        <div class="form-group">
            <label class="control-label">
                <span>订单状态：</span>
            </label>
            <div class="form-control-wrap">
                <select id="order_status" class="form-control" name="status">
                    <option value="0"@if(Input::get('status') == 0)selected @endif>全部</option>
                    <option value="1" @if(Input::get('status') == 1)selected @endif >等待付款</option>
                    <option value="4" @if(Input::get('status') == 4)selected @endif >等待发货</option>
                    <option value="5" @if(Input::get('status') == 5)selected @endif >已发货</option>
                    <option value="6" @if(Input::get('status') == 6)selected @endif >部分已完成</option>
                    <option value="7" @if(Input::get('status') == 7)selected @endif>已完成</option>
                    <option value="3" @if(Input::get('status') == 3)selected @endif >订单关闭</option>
                    {{--<option value="8" @if(Input::get('status') == 8)selected @endif>退款申请中</option>--}}
                    {{--<option value="10" @if(Input::get('status') == 10)selected @endif>退款中</option>--}}
                    {{--<option value="9" @if(Input::get('status') == 9)selected @endif>退款完成</option>--}}
                </select>
            </div>
        </div>
    </div>
    <div class="simple-form-field">
        {{--<button class="btn btn-primary m-r-5 search">搜索</button>--}}
        <input type="submit" class="btn btn-primary m-r-5" value="搜索">
    </div>
</form>
