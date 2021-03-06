//收货
function receive(OrderId, itemId) {
    var token = $("input[name='_token']").val();
    //phone = $("#phone").val();
    layer.confirm('确定要收货吗？', {
        btn: ['确定', '取消']
    }, function () {

        $.post('/member/receive', {_token: token, OrderId: OrderId, itemId: itemId}, function (msg) {
            if (msg.status == 0) {
                layer.msg(msg.msg, {icon: 1});
                fresh();
            } else {
                layer.msg(msg.msg, {icon: 2});
                fresh();
            }
        }, 'json')
    });
}

//删除订单
function deleOrder(rowId) {
    var token = $("input[name='_token']").val();

    layer.confirm('确定要删除此订单吗？', {
        btn: ['确定', '取消']
    }, function () {

        $.post('/member/order/remove/' + rowId, {_token: token}, function (msg) {
            if (msg == 'true') {
                layer.msg('成功');
                fresh();
            }
        }, 'text');
    }, function () {

    });
}


//购物车删除商品

function delItem(rowId) {
    var token = $("input[name='_token']").val();
    layer.confirm('确定要删除此商品吗？', {
        btn: ['确定', '取消']
    }, function () {

        $.post('/member/del_cart_item', {_token: token, rowId: rowId}, function (msg) {
            if (msg.status == '0') {
                layer.msg(msg.msg, {icon: 1});
                fresh();
            } else {
                layer.msg(msg.msg, {icon: 2});
            }
        }, 'json');
        // checkDiscount();
    });
}


//批量删除商品
function multiDelItem() {
    var token = $("input[name='_token']").val();
    layer.confirm('确定要删除所选的商品吗？', {
        btn: ['确定', '取消']
    }, function () {
        layer.msg('删除中');
        $('input:checkbox[class=item_checkbox]:checked').each(function (i) {
            rowId = $(this).parent().parent().find(".rowId").val();
            $.post('/member/del_cart_item', {_token: token, rowId: rowId}, function (msg) {
                fresh();
            }, 'json');
        });


    });


}


//支付
function checkout() {
    var token = $("input[name='_token']").val();
    var rowIds = [];
    var couponCode = $(".coupon").val();

    layer.confirm('确定要支付吗？', {
        btn: ['确定', '取消']
    }, function () {

        if ($('input:checkbox[name=item]:checked').length >= 1) {
            //有选择商品，对选择商品进行结算
            $('input:checkbox[name=item]:checked').each(function (i) {
                rowIds[i] = $(this).val();
            });
        }

        if ($('input:checkbox[name=item]:checked').length <= 1) {
            //未选择商品，对所有商品进行结算
            $('input:checkbox[name=item]').not("input:checked").each(function (i) {
                rowIds[i] = $(this).val();
            });
        }

        $.post('/member/cart/checkout', {rowIds: rowIds, token: token, couponCode: couponCode}, function (a) {
            location = '/member/cart/pay_order/' + a;
            /*如果成功，跳转至付款页面*/
        });
    });
}

//更改购物车数量
function changeQuantity(obj, rowId) {

    num = $(obj).val();
    if (num <= 0) {
        $(obj).val(1);
    }

    var token = $("input[name='_token']").val();
    $.post('/member/cart/change_quantity', {_token: token, rowId: rowId, num: num}, function (msg) {
        if (msg.status == '0') {
            layer.msg(msg.msg, {icon: 1});
        } else {
            layer.msg(msg.msg, {icon: 2});
        }
    }, 'json');
    checkDiscount();
}

/**
 *
 * @param $rowIds 购物车商品的 rowid
 * @param $coupon 优惠券
 * 优惠券及满减优惠的检测 返回生效的优惠信息和优惠掉的钱数
 */
function checkDiscount() {

    //更新每个商品的小计
    $(".price").each(function (i) {

        var subEach =
            $(this).parent().parent().find(".price_y").html()
            *
            $(this).parent().parent().find("#itemNum").val();
        subEach = parseFloat(subEach).toFixed(2);

        $(this).html(subEach);
    });

    //生成rowId的数组
    var token = $("input[name='_token']").val();
    var rowIds = [];
    var coupon = $(".coupon").val();

    //更新显示区域  更新总数量

    if ($('input:checkbox[class=item_checkbox]:checked').length >= 1) {
        //有选择商品，对选择商品进行结算
        rowIds = [];
        total = 0;
        num = 0;
        $('input:checkbox[class=item_checkbox]:checked').each(function (i) {
            rowIds[i] = $(this).parent().find(".rowId").val();

            num += Number($(this).parent().parent().find("#itemNum").val());
            total += Number($(this).parent().parent().find(".price").html());
        });

        //更新商品件数 <span id="Pics">2</span>  {{$item->num}}  name="number"
        $("#Pics").html(num);
        $("#total").html(parseFloat(total).toFixed(2));

    } else if ($('input:checkbox[class=item_checkbox]:checked').length < 1) {
        $("#Pics").html('0');
        $("#total").html('0.00');
    }

    //更新显示区域  检测折扣
    $.post('/member/cart/check_item', {_token: token, rowIds: rowIds, couponCode: coupon}, function (msg) {


        //说明没有折扣信息
        if (!msg['amount']) {
            //清空对应折扣信息
            $("#discount").parent('li').hide();
            $("#discount_info").parent('li').hide();

            $("#pay").html($("#total").html());
        } else {
            //有折扣信息，处理
            $("#discount").parent('li').show();
            $("#discount_info").parent('li').show();
            //优惠额
            var discount = msg['amount'];
            discount = parseFloat(discount).toFixed(2);
            $("#discount").html(discount);
            $("#discount_info").html(msg['rule']['name']);
            //应付总额
            var shouldPay = $("#total").html() - $("#discount").html();
            shouldPay = parseFloat(shouldPay).toFixed(2);
            $("#pay").html(shouldPay);
        }
    });
}

//收藏
function collect(id) {
    var id = id;
    var token = $("input[name='_token']").val();


    layer.confirm('确定要转移到收藏夹吗？', {
        btn: ['确定', '取消'] //按钮
    }, function () {
        $.post('/member/cart/collect/' + id, {token: token}, function (a) {
            if (a = 'true') {
                layer.msg('移入成功 请刷新页面', {icon: 1});
                fresh();
            }
        }, 'text');
    }, function () {

    });
    refresh();

}

/*function multiDelItem() {
 var token = $("input[name='_token']").val();
 layer.confirm('确定要删除所选的商品吗？', {
 btn: ['确定', '取消']
 }, function () {
 layer.msg('删除中');
 $('input:checkbox[class=item_checkbox]:checked').each(function (i) {
 rowId = $(this).parent().parent().find(".rowId").val();
 $.post('/member/del_cart_item', {_token: token, rowId: rowId}, function (msg) {

 }, 'json');
 });

 fresh();
 });


 }*/

//全部收藏全部选中的商品
function multiCollect() {
    var token = $("input[name='_token']").val();

    layer.confirm('确定要收藏所选的商品吗？', {
        btn: ['确定', '取消']
    }, function () {
        layer.msg('收藏中');
        $('input:checkbox[class=item_checkbox]:checked').each(function (i) {
            rowId = $(this).parent().parent().find(".rowId").val();

            $.post('/member/cart/collect/' + rowId, {token: token}, function (a) {

                fresh();
            }, 'text');
        });
        layer.msg('成功移入收藏夹');

    });

}


function fresh() {
    window.location.reload();
}