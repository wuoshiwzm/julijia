<?php
/**
 * Created by julijia_frontend.
 * User: 王顶峰
 * Email: dingfeng0509@vip.qq.com
 * Date: 2017/1/12
 * Time: 11:53
 */?>

<ul>
    @if( $refund->type ==1)
        @if($refund->status ==1)
            <li class="operate-steps">
            <i class="iconfont"></i>
            <span>退款单状态：买家已提交，等待客服业务审核</span>
        </li>
        <li class="operate-prompt">
            <input value="业务审核" data-refund="{{$refund->id}}" class="btn btn-primary modify" type="button">
        </li>
        <li class="operate-prompt">
            业务审核通过后，由财务确认退款
        </li>
    @endif
        @if($refund->status ==2)
            <li class="operate-steps">
                <i class="iconfont"></i>
                <span>退款单状态：客服业务已经审核，等待财务退款</span>
            </li>
            <li class="operate-prompt">
                财务退款后，请确认退款
            </li>
        @endif
            @if($refund->status ==6)
                <li class="operate-steps">
                    <i class="iconfont"></i>
                    <span>退款单状态：财务已经退款</span>
                </li>
                <li class="operate-prompt">
                    业务审核通过后，由财务确认退款
                </li>
            @endif
    @elseif( $refund->type ==2)
        @if($refund->status ==1)
            <li class="operate-steps">
                <i class="iconfont"></i>
                <span>退款单状态：买家已提交，等待客服业务审核</span>
            </li>
            <li class="operate-prompt">
                <input value="业务审核"  data-refund="{{$refund->id}}" class="btn btn-primary check" type="button">
            </li>
            <li class="operate-prompt">
                客户审核时，请输入收货人信息
            </li>
        @endif
        @if($refund->status ==2)
            <li class="operate-steps">
                <i class="iconfont"></i>
                <span>退款单状态：客服业务已经审核，等待客户发货</span>
            </li>
            <li class="operate-prompt">
                业务审核通过后，等待客户发货
            </li>
        @endif
            @if($refund->status ==4)
                <li class="operate-steps">
                    <i class="iconfont"></i>
                    <span>退款单状态：客户已经发货，等待客服收货</span>
                </li>
                <li class="operate-prompt">
                    <input value="确认收货" data-refund="{{$refund->id}}"  class="btn btn-primary " type="button" onclick="location.href= '/admin/refund/reseive/{{encode($refund->id)}}'">
                </li>
                <li class="operate-prompt">
                    确认收货后，财务退款，由财务确认退款
                </li>
            @endif

            @if($refund->status ==5)
                <li class="operate-steps">
                    <i class="iconfont"></i>
                    <span>退款单状态：客服已经收货，等待财务退款</span>
                </li>

                <li class="operate-prompt">
                    等待财务退款
                </li>
            @endif
        @if($refund->status ==6)
            <li class="operate-steps">
                <i class="iconfont"></i>
                <span>退款单状态：财务已经退款</span>
            </li>
            <li class="operate-prompt">
                业务审核通过后，由财务确认退款
            </li>
        @endif

    @endif
</ul>

<div class="phone" style="display: none" >
    <h1>退款审核</h1>
    <form id="form1"  class="m-form">
        <ul>
            <li style="padding-bottom:8px; font-size:14px;">
                <label>
                    <span class="ng-binding">是否通过：</span>
                    <label class="control-label"><input name="tong" value="1"  type="radio"> 是</label>
                    <label class="control-label"><input name="tong" value="0" type="radio"> 否</label>
                </label>
                <input type="hidden" name="refund_id" value="{{$refund->id}}">
            </li>
            <li><textarea class="textarea"   name="content" placeholder="审核说明"></textarea></li>
            <li>
                <input  value="确定审核" class="button" type="button" id="confirm1">
                <input  value="取消审核" class="button02" type="button" id="cancel1">
            </li>
        </ul>
    </form>
</div>

<div class="shengqing" style="display: none">
    <h1>退款审核</h1>
    <form id="form2" class="m-form">
        <ul>
            <li style="padding-bottom:8px; font-size:14px; padding:4px 0px; height:30px;">
                <span class="ng-binding">联 系 人：</span>
                <input id="link" name="link"   type="text"  placeholder="输入联系人" class="txt">
            </li>
            <li style="padding-bottom:8px; font-size:14px;padding:4px 0px; height:40px;">
                <span class="ng-binding">联系电话：</span>
                <input id="link_phone" name="link_phone"  type="text" placeholder="输入联系电话" class="txt">
            </li>
            <li>
                <textarea id="address" class="textarea"  name="address" placeholder="输入地址"></textarea>
            </li>

            <li style="padding-bottom:4px;padding-top:8px; font-size:14px;">
                    <span class="ng-binding02">审核确认：</span>
                    <label>
                        <input type="checkbox" name="is_pass" value="1" > 通过审核
                    </label>
                <input type="hidden" name="refund_id" value="{{$refund->id}}">
            </li>
            <li>
                <textarea id="content" class="textarea" name="content" placeholder="审核说明"></textarea>
            </li>
            <li>
                <input name="" type="button" value="确定审核及收货地址"  class="button" id="confirm2">
                <input name="" type="button" value="取消审核"  class="button02" id = "cancel2">
            </li>
        </ul>
    </form>
</div>
<script>
    $(function(){
        //退款审核
        $(".modify").click(function(){
            //清空表单数据
            $("#form1")[0].reset();
            var refund_id = $(this).attr("data-refund");
            index1 = layer.open({
                type: 1,
                title:false,
                shadeClose: true,
                shade: 0.6,
                area: ['444px', '350px'],
                content: $(".phone")
            });
        });

        //确定审核
        $("#confirm1").click(function(){
            /*数据验证*/
            var is_check = $("input[name=tong]:checked").val();
            if (is_check == undefined) {
                layer.msg("请选择是否审核",{icon:2,time:800});
                return false;
            }else if($(".textarea").val() == "") {
                layer.msg("请填写审核说明",{icon:2,time:800});
                return false;
            }
            $.post("/admin/refund/confirm",$("#form1").serialize(),function(data){
                if (data.status == 1) {
                    layer.msg("审核成功");
                }else {
                    layer.msg("审核失败");
                }
                layer.close(index1);
                location.reload();
            })
        });

        //取消审核
        $("#cancel1").click(function(){
            layer.close(index1);
        });

        //退款退货审核
        $(".check").click(function(){
            var refund_id = $(this).attr("data-refund");
            //清空表单数据
            $("#form2")[0].reset();
            index2 = layer.open({
                type: 1,
                title:false,
                shadeClose: true,
                shade: 0.6,
                area: ['444px', '520px'],
                content: $(".shengqing")
            });
        });

        //退款退退货确定审核
        $("#confirm2").click(function(){
            if ($("#link").val() == "") {
                layer.msg("联系人不能为空",{icon:2,time:800});
                return false;
            }else if ($("#link").val().length > 10) {
                layer.msg("联系长度不能超过10", {icon: 2, time: 800});
                return false;
            } else if ($("#link_phone").val() == ""){
                layer.msg("联系人电话不能为空");
            } else if( ! /^[0-9]+$/.test($("#link_phone").val())) {
                layer.msg("联系人电话格式必须为数字");
                return false;
            }else if ($("#link_phone").val().length > 11){
                layer.msg("联系人电话长度不能超过11位");
                return false;
            } else if ($("#address").val() == "") {
                layer.msg("联系人地址不能为空");
                return false;
            }else if ($("#content").val() == "") {
                layer.msg("审核说明不能为空",{icon:2,time:800});
                return false;
            }

            $.post("/admin/refund/check",$("#form2").serialize(),function(data){
                if (data.status == 1) {
                    layer.msg("审核成功");
                }else {
                    layer.msg("审核失败");
                }
                layer.close(index2);
                location.reload();
            })
        });

        //取消审核
        $("#cancel2").click(function(){
            layer.close(index2);
        })

    })
</script>
