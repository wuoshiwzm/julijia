/**
 * Created by Administrator on 2016/11/8 0008.
 */
$("[name=category_search]").keyup(function() {
    var text = $(this).val();
    if (text == '')
    {
        $(this).parents('.category-list').find('.category-list-name li').show();
    }else
    {
        $(this).parents('.category-list').find(".category-list-name").find("li").hide();
        $(this).parents('.category-list').find(".category-list-name").find("[data-search*=" + text + "]").parents("li").show();
    }
});

/**
 * 选择分类
 * @param id
 * @param index
 * @param ietm
 */
function setItem( id, index, ietm )
{
    var name = $(index).text();
    switch ( $(index).attr('data-leavel') )
    {
        case "1":
            $("#current-choose-category").html(name);
            var categoryName = name;
            $(index).parents('.category-list').find('input').val(name);
            $(index).parents('.category-list-name').find("li").show();
            steCategory(id,ietm);
            break;
        case "2":
            var level1 = $(".level-1").val();
            var categoryName = level1+'<i>&gt;</i>'+name;
            $("#current-choose-category").html(categoryName);
            $(index).parents('.category-list').find('input').val(name);
            $(index).parents('.category-list-name').find("li").show();
            steCategory(id,'category-level-3');
            break;
        case "3":
            var level1 = $(".level-1").val();
            var level2 = $(".level-2").val();
            var categoryName = level1+'<i>&gt;</i>'+level2+'<i>&gt;</i>'+name;
            $("#current-choose-category").html(categoryName);
            $(index).parents('.category-list').find('input').val(name);
            $(index).parents('.category-list-name').find("li").show();
            break;

    }
    $( index ).addClass('classDivClick');
    $( index ).parent('li').siblings().find('a').removeClass('classDivClick');
    $("#categoryName").val(categoryName);
    $("#categoryID").val(id);
}
function steCategory( id,ietm )
{
   $("."+ietm ).find('li').remove();
   $.get('/admin/product/getcategory/'+id,function ( data ) {
      var li = '';
      for( var i=0; i< data.length; i++ )
      {
         li += '<li><a href="javascript:;" class="category-name" data-leavel="'+data[i].leavel+'" data-search="'+data[i].name+'"  onclick="setItem('+data[i].id+',this,3)"> '+data[i].name+'</a></li>';
      }
      $("."+ietm ).append( li );
   },'json')
}


/**
 *  下一步
 */
function addProduct()
{
    var setid = $('.chosen-select option:selected').val();
    var categoryName = $("#categoryName").val();
    var categoryID = $("#categoryID").val();
    if( setid == false )
    {
        layer.msg('请选择属性集');
        return;
    }
    if( categoryName == false || categoryID == false )
    {
        layer.msg('请选择分类信息');
        return;
    }
    $("#SearchModel").submit();
}

/**
 * 获取供应商
 * @param index
 */
function getSupplier( index )
{
    var name = $( index ).find('option:selected').val();
    $( index ).parent('div').find('input').val( name );
}

/**
 * 产品上下架
 * @param type
 * @param index
 * @param id
 */
function setStatus( type,index,id )
{
    layer.confirm('确认此操作', {
        btn: ['确定','取消']
    }, function() {
        if (type == 'down')
        {
            var status = 0;
        }else
        {
            var status = 1;
        }
        $.post('/admin/product/goods/status', {status: status, entity_id: id}, function (data) {

            if ( data.ststus == 0 )
            {
                layer.msg(data.msg, {icon: 1});
                $(index).parents('tr').remove();
            } else {
                layer.msg(data.msg, {icon: 2});
            }

        }, 'json');
    });
}