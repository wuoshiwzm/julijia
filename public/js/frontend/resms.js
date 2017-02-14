
document.getElementById('phone').focus();

var wait = 60;
function time(o) {
    if (wait == 0) {
        o.removeAttribute("disabled");
        o.value = "点击获取验证码";
        wait = 60;
    } else {
        o.setAttribute("disabled", true);
        o.value = "重新发送(" + wait + ")";
        wait--;
        setTimeout(function () {
                time(o)
            },
            1000)
    }
}

document.getElementById("yzm").onclick = function () {
    phone = $("#phone").val();

    if(!phone){
        $(this).parent().parent().prev().find($(".Validform_checktip")).html('您未输入手机号码！');
        return;
    }


    if (!isphone(phone)) {
        $(this).parent().parent().prev().find($(".Validform_checktip")).html('手机号码不合法！');
        return;
    }

    if ($("#phone").val()) {
        var token = $("input[name='_token']").val();
        var phone = $("#phone").val();
        var msg1 = '';

        $.ajax({
            type: "POST",
            url: "/member/send_resms?_token=" + token + "&phone=" + phone,
            async: false,
            dataType: "text",
            success: function (result) {   //function1()
                msg1 = result;
            },
            failure: function (result) {
                alert('发送失败');
            },
        });
        $(this).parent().parent().prev().find($(".Validform_checktip")).html(msg1);
        if (msg1 != '此手机号并未注册！'  && msg1 != '1分钟内已经发送过验证码！'  && msg1 != '发送验证码失败！请重新获取！') {
            time(this);
        }

    }

}


/*判断输入是否为合法的手机号码*/
function isphone(inputString) {
    var partten = /^1[3,5,8]\d{9}$/;
    var fl = false;
    if (partten.test(inputString)) {
        return true;
    }
    else {
        return false;
    }
}