<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/11/3 0003
 * Time: 17:54
 */
class PublicController extends CommonController
{

    /**
     * @param $parentID
     * @return mixed
     * 获取城市
     */
    public function getCity( $parentID )
    {
        $data = Source_Area_City::where('parent',$parentID)->get();
        return json_encode($data);
    }

    /**
     * @return mixed
     * 验证唯一性
     */
    public function getInfo()
    {
        $type = Input::get('type');
        $param = Input::get('param');
        $id = Input::get('id');
        switch ( $type )
        {
            case 'Supplier':
                $msg = '供应商信息已存在';
                $res =  Source_User_SupplierInfo::where('name',$param)->count();
                break;
            case 'brand':
                $msg = '品牌信息已存在';
                $sql =  Source_Product_ProductBrand::where('name',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'shop':
                $msg = '门店信息已存在';
                $sql =  Source_User_ShopInfo::where('m_name',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'rule':
                $msg = '营销信息已存在';
                $sql =  Source_Salerule_FavoutableRule::where('name',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res= $sql->count();
                break;
            case 'rule_code':
                $msg = '营销编码已存在';
                $sql =  Source_Salerule_FavoutableRule::where('rule_code',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'category':
                $msg = '分类信息已存在';
                $sql =  Source_Product_ProductCategory::where('name',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'category_url':
                $msg = '分类信息url已存在';
                $sql =  Source_Product_ProductCategory::where('url',$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'link':
                $name = Input::get('name');
                $msg = '信息已存在';
                $sql =  Source_FriendshipLink_Link::where($name,$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'attrbute':
                $name = Input::get('name');
                $msg = '名称已存在';
                $sql =  Source_Eav_Attrbute::where($name,$param);
                if( $id )
                {
                    $sql->where('id','!=',$id);
                }
                $res = $sql->count();
                break;
            case 'attrbuteLength':
                $msg = '长度不能小于原始长度';
                $length =  Source_Eav_Attrbute::where('id',$id)->pluck('length');
                if( $length )
                {
                    if( $length < $param )
                    {
                        $res = false;
                    }else
                    {
                        $res = true;
                    }
                }else
                {
                    $res = true;
                }
                break;

        }

        if( $res == false )
        {
            $obj['info'] ='验证通过';
            $obj['status'] ='y';

        }else
        {
            $obj['info'] = $msg;
            $obj['status'] ='n';
        }
        return $obj;
    }



    /**
     * 修改排序
     */
    public function editSort()
    {
        $model = Input::get('model');
        $sort = Input::get('sort');
        $id = Input::get('id');
        switch ( $model )
        {
            case 'brand':
                $res =  Source_Product_ProductBrand::where('id',$id)->update(['sort'=>$sort]);
                break;
            case 'category':
                $res =  Source_Product_ProductCategory::where('id',$id)->update(['sort'=>$sort]);
                break;
        }
        if( $res )
        {
            $obj['info'] ='编辑成功';
            $obj['status'] ='1';

        }else
        {
            $obj['info'] ='编辑失败';
            $obj['status'] ='0';
        }
        return $obj;
    }


    /**
     *  上传图像
     * @return mixed
     */
    public function getImgTemplet( $i )
    {
        return View::make('admin.public.img',compact('i'));
    }

    /**
     *  上传多张图像
     * @return mixed
     */
    public function getMultiImgTemplet( $i )
    {
        return View::make('admin.public.multi_img',compact('i'));
    }

}