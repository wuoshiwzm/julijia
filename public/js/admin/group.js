/**
 * Created by Administrator on 2016/11/4 0004.
 */
function delGroup( id )
{

    var token = $("input[name='_token']").val();
    layer.confirm('确定要删除此等级信息吗？', {
        btn: ['确定','取消']
    }, function(){
        $.post('/admin/group/'+id,{_method:'DELETE',_token:token},function (msg) {
            if( msg.status == '0')
            {
                layer.msg(msg.msg, {icon: 1});
                location=location;
            }else
            {
                layer.msg(msg.msg, {icon: 2});
            }
        },'json')
    });
}

