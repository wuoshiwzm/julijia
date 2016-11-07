$.extend($.Datatype, {
    'tel': function (gets, obj, curform, regxp)
        {
            var reg = /^(1[3,5,8,7]{1}[\d]{9})|(((400)-(\d{3})-(\d{4}))|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{3,7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)$/;
            if ( gets == '' ){ obj.attr('errormsg', '请填写电话'); return false;}
            if ( reg.test(gets) ) return true;
            else {  obj.attr('errormsg', '电话格式有误（带区号请用英文 - 隔开）');return false};
        },
    'un': /^[\u4E00-\u9FA5\uf900-\ufa2d]{2,6}$/,
});
