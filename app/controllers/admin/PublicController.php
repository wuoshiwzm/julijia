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
        switch ( $type )
        {
            case 'Supplier':
                $res =  Source_User_SupplierInfo::where('name',$param)->count();
                break;
            case 'brand':
                $res =  Source_Product_ProductBrand::where('name',$param)->count();
                break;
            case 'shop':
                $res =  Source_User_ShopInfo::where('m_name',$param)->count();
                break;
            case 'rule':
                $res =  Source_Salerule_FavoutableRule::where('name',$param)->count();
                break;
            case 'rule_code':
                $res =  Source_Salerule_FavoutableRule::where('rule_code',$param)->count();
                break;
        }

        if( $res == false )
        {
            $obj['info'] ='验证通过';
            $obj['status'] ='y';

        }else
        {
            $obj['info'] ='验证失败';
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
}