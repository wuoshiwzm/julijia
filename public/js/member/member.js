//收货
function receive(itemId) {
    var token = $("input[name='_token']").val();
    phone = $("#phone").val();
    layer.confirm('确定要收货吗？', {
        btn: ['确定', '取消']
    }, function () {

        $.post('/member/receive', {_token: token, itemId: itemId}, function (msg) {
            if (msg.status == '0') {
                layer.msg(msg.msg, {icon: 1});
                location = location;
            } else {
                layer.msg(msg.msg, {icon: 2});
                location = location;
            }
        }, 'json')
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
                location = location;
            } else {
                layer.msg(msg.msg, {icon: 2});
            }
        }, 'json')
        checkDiscount();
    });
}


//批量删除商品
function multiDelItem() {
    var token = $("input[name='_token']").val();

    layer.confirm('确定要删除所选的新闻吗？', {
        btn: ['确定', '取消']
    }, function () {
        layer.msg('删除中');
        $('input:checkbox[name=item]:checked').each(function (i) {
            rowId = $(this).val();

            $.post('/member/del_cart_item', {rowId: rowId, _token: token}, function (msg) {
            });
        });
        location = location;
        checkDiscount();
    });


}


//更改购物车数量
function changeQuantity(obj, rowId) {

    num = $(obj).val();

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

//支付
function pay() {


    if ($('input:checkbox[name=item]:checked').length >= 1) {
        //有选择商品，对选择商品进行结算

    }

    if ($('input:checkbox[name=item]:checked').length <= 1) {
        //未选择商品，对所有商品进行结算
    }
}


/**
 *
 * @param $rowIds 购物车商品的 rowid
 * @param $coupon 优惠券
 * 优惠券及满减优惠的检测 返回生效的优惠信息和优惠掉的钱数
 */
function checkDiscount() {

    //生成rowId的数组
    var token = $("input[name='_token']").val();
    var rowIds = new Array();
    var coupon = $(".coupon").val();
    //检测折扣
    if ($('input:checkbox[name=item]:checked').length >= 1) {
        //有选择商品，对选择商品进行结算
        $('input:checkbox[name=item]:checked').each(function (i) {
            rowIds[i] = $(this).val();
        });
    } else if ($('input:checkbox[name=item]:checked').length <= 1) {
        //未选择商品，对所有商品进行结算
        $('input:checkbox[name=item]').not("input:checked").each(function (i) {
            rowIds[i] = $(this).val();
        });
    }
    //更新显示区域
    $.post('/member/cart/check_item', {_token: token, rowIds: rowIds,coupon:coupon}, function (msg) {





        if (msg.status == '0') {
            layer.msg(msg.msg, {icon: 1});
        } else {
            layer.msg(msg.msg, {icon: 2});
        }
    }, 'json');

}


//全选
$(function () {

    $(".checkbox_checkall").bind("click", function () {

        if (this.checked) {
            $(".item_checkbox").prop("checked", true);
        } else {
            $(".item_checkbox").prop("checked", false);
        }
        checkDiscount();
    });


    $(".item_checkbox").bind("click", function () {
        // if ($('input:checkbox[name=item]:checked').length >= 1) {}


        checkDiscount();


    });


});