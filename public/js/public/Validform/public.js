$.extend($.Datatype, {
    /**
     *  电话
     */
    'tel': function (gets, obj, curform, regxp)
    {
        var reg = /(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[3578]\d{9})$)|(^(400)-(\d{3})-(\d{4})(.)(\d{4})$)/;
        if ( gets == '' ){ obj.attr('errormsg', '请填写电话'); return false;}
        if ( reg.test(gets) ) return true;
        else {
            obj.attr('errormsg', '电话格式有误（带区号请用英文 - 隔开）');
            return false
        }
    },
    /**
     * 姓名
     */
    'un': /^[\u4E00-\u9FA5\uf900-\ufa2d]{2,6}$/,

    /**
     * 邮编
     */
    'postcode': function (gets, obj, curform, regxp)
    {
        var reg = /^[1-9][0-9]{5}$/;
        if ( reg.test(gets) )
        {
            return true;
        }else
        {
            obj.attr('errormsg', '请填写正确的6位邮编');
            return false
        }
    },
    /**
     * 金额
     */
    "je": function (gets, obj, curform, regxp)
    {
        var reg = /^([1-9][0-9]*)+(.[0-9]{1,2})?$/;
        if ( reg.test(gets) )
        {
            return true;
        }else
        {
            return false
        }
    }
});
