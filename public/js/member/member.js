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

}


//全选
$(function () {

    $(".checkbox_checkall").bind("click", function () {

        if (this.checked) {
            $(".item_checkbox").prop("checked", true);
        } else {
            $(".item_checkbox").prop("checked", false);
        }
    });

});