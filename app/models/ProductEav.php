<?php
class ProductEav
{

    /**
     * @param $data
     * @return mixed
     * 属性集验证
     */
    static function validatorAbs( $data )
    {
        $rules = [];
        $message = [];
        $validator = Validator::make($data, $rules, $message);
        if ($validator->passes()) {
            return true;

        } else {
            return $validator;
        }
    }

    /**
     * @param $data
     * @return mixed
     * 属集验证
     */
    static function validatorAb( $data )
    {
        $rules = [];
        $message = [];
        $validator = Validator::make($data, $rules, $message);
        if ($validator->passes()) {
            return true;

        } else {
            return $validator;
        }
    }


    /**
     * @param $data
     * @return mixed
     * 添加属性集
     */
    static function addAbs( $data )
    {
        if( Source_Eav_AttrbuteSet::where( $data )->count() )
        {
            return false;
        }
        return Source_Eav_AttrbuteSet::create( $data );
    }

    /**
     * @param $id
     * @param $type
     * 关连属性集和属性查询
     */
    static function getRavTypeCount( $id, $name, $type='product' )
    {
       switch ( $type )
       {
           case 'product':
              return Source_Product_ProductEav::where($name,$id)->count();
           break;
       }
    }


    /**
     * @param $data
     * @return mixed
     * 添加属性
     */
    static function addAb( $data )
    {
        $result = DB::transaction(function() use ( $data )
        {
            $text = isset($data['text'])?$data['text']:false;
            $value = isset($data['value'])?$data['value']:false;
            $images = isset($data['images'])?$data['images']:false;
            $data = array_except($data, ['value', 'text','images']);
            $data['created_at'] = date('Y-m-d H:i:s');
            $ID = Source_Eav_Attrbute::insertGetId($data);
            if ( $text )
            {
                foreach ( $text as $k => $row )
                {
                    $res = new Source_Eav_AttrbuteValue();
                    $res->attributeid = $ID;
                    $res->value = $value[$k];
                    $res->text = $row;
                    $res->images = $images[$k];
                    $res->save();
                    if( $images[ $k ] )
                    {
                        //上传图片
                        (new Upload())->uploadProductImage( $ID, $images[ $k ], 'attribute' );
                    }
                }
            }
        });
        if( is_null( $result ) ) return true;
        else return false;
    }

    /**
     * @param $data
     * 修改属性
     */
    static function editAb( $data, $id )
    {
        $result = DB::transaction(function() use ( $data, $id )
        {
            //修改的id
            $editId = isset($data['editid'])?$data['editid']:false;
            $editText = isset($data['edittext'])?$data['edittext']:false;
            $editValue = isset($data['editvalue'])?$data['editvalue']:false;
            $editImages = isset($data['editimages'])?$data['editimages']:false;

            //新增
            $text = isset($data['text'])?$data['text']:false;
            $value = isset($data['value'])?$data['value']:false;
            $images = isset($data['images'])?$data['images']:false;

            //删除
            $oldId = isset($data['oldId'])?$data['oldId']:false;
            $Input = array_except($data, ['id','editid', 'editvalue','edittext','editimages','oldId','_token','_method','text','value','images']);

            //修改主表
            Source_Eav_Attrbute::where( 'id', $id )->update( $Input );
            //更新
            if ( $editId )
            {
                foreach ( $editId as $k => $up )
                {
                    $resUp = Source_Eav_AttrbuteValue::find( $up );
                    if( $editImages[ $k ] != $resUp->images && $editImages[ $k ] )
                    {
                        //上传图片
                        (new Upload())->uploadProductImage( $id, $editImages[ $k ], 'attribute' );
                        //删除原始图片
                        (new Upload())->delImg( 'attribute', $id, $resUp->images );
                    }
                    $resUp->value = $editValue[$k];
                    $resUp->text = $editText[$k];
                    $resUp->images = $editImages[$k];
                    $resUp->save();
                }
            }
            //添加
            if ( $text )
            {
                foreach ( $text as $k => $row )
                {
                    $res = new Source_Eav_AttrbuteValue();
                    $res->attributeid = $id;
                    $res->value = $value[$k];
                    $res->text = $row;
                    $res->images = $images[$k];
                    $res->save();
                    if( $images[ $k ] )
                    {
                        //上传图片
                        (new Upload())->uploadProductImage( $id, $images[ $k ], 'attribute' );
                    }
                }
            }

            //删除
            if( $oldId )
            {
                foreach ( $oldId as $key => $del )
                {
                    $result = Source_Eav_AttrbuteValue::find( $del );
                    //删除原始图片
                    (new Upload())->delImg( 'attribute', $id, $result->images );
                    $result->delete();
                }
            }

        });
        if( is_null( $result ) ) return true;
        else return false;
    }


    /**
     * @param $id
     * @return array
     * 查询属性集和属性的挂靠关系
     */
    static function getAdsToAd( $id )
    {
        $data = new stdClass();
        $fEav = Source_Product_ProductEav::where( 'attbute_set_id', $id )->with('productEavToEav')->get();
        $res = array(
            array('text'=>"基本",'children'=>array()),
            array('text'=>"价格", 'state'=>'closed','children'=>array()),
            array('text'=>"seo" ,'state'=>'closed','children'=>array()),
            array('text'=>"图片" ,'state'=>'closed','children'=>array()),
            array('text'=>"描述" ,'state'=>'closed','children'=>array())
        );

        if( count($fEav) )
        {
            $pEav = array();
            $aId = array();

            foreach ( $fEav as $key=>$row )
            {
                if($row->group =="1"){
                    $aId['id'] = $row->attbute_id;
                    $aId['text'] = isset($row->productEavToEav->admin_label)?$row->productEavToEav->admin_label:'';
                    array_push($res[0]['children'],$aId);
                }
                if($row->group =="2"){
                    $aId['id'] = $row->attbute_id;
                    $aId['text'] = isset($row->productEavToEav->admin_label)?$row->productEavToEav->admin_label:'';
                    array_push($res[1]['children'],$aId);
                }
              if($row->group =="3"){
                    $aId['id'] = $row->attbute_id;
                    $aId['text'] = isset($row->productEavToEav->admin_label)?$row->productEavToEav->admin_label:'';
                    array_push($res[2]['children'],$aId);
                }

               if($row->group =="4"){
                   $aId['id'] = $row->attbute_id;
                   $aId['text'] = isset($row->productEavToEav->admin_label)?$row->productEavToEav->admin_label:'';
                   array_push($res[3]['children'],$aId);
               }
                if($row->group =="5"){
                    $aId['id'] = $row->attbute_id;
                    $aId['text'] = isset($row->productEavToEav->admin_label)?$row->productEavToEav->admin_label:'';
                    array_push($res[4]['children'],$aId);
                }
            }

        }else
        {
            $pEav = array();
            $res_get = Source_Eav_Attrbute::where('is_system',1)->select('id','admin_label','name')->get();
            foreach ( $res_get as $key=>$row )
            {

                if($row->name =='name'||$row->name =='weight'||$row->name =='status'||$row->name =='url_key'||$row->name =='brand'||$row->name =='sku'){
                    $aId['id'] = $row->id;
                    $aId['text'] = isset($row->admin_label)?$row->admin_label:'';
                    array_push($res[0]['children'],$aId);
                }
                if($row->name =='price'||$row->name =='cost_price'||$row->name =='preferential_price'||$row->name =='price_begin'||$row->name =='price_end'){
                    $aId['id'] = $row->id;
                    $aId['text'] = isset($row->admin_label)?$row->admin_label:'';
                    array_push($res[1]['children'],$aId);
                }
                if($row->name =='keysword'||$row->name =='meta_desc'){
                    $aId['id'] = $row->id;
                    $aId['text'] = isset($row->admin_label)?$row->admin_label:'';
                    array_push($res[2]['children'],$aId);
                }
                if($row->name =='small_image'||$row->name =='thumbnail'||$row->name =='base_image'){
                    $aId['id'] = $row->id;
                    $aId['text'] = isset($row->admin_label)?$row->admin_label:'';
                    array_push($res[3]['children'],$aId);
                }
                if($row->name =='desc'){
                    $aId['id'] = $row->id;
                    $aId['text'] = isset($row->admin_label)?$row->admin_label:'';
                    array_push($res[4]['children'],$aId);
                }
            }
        }

       return  json_encode($res);


    }

    /**
     * 查询没有挂靠的属性
     * @param $id
     * @return string
     */
    static function  getAdsGetCustomerData( $id )
    {

        $eav = Source_Eav_Attrbute::where('is_system',0);
        $fEav = Source_Product_ProductEav::where( 'attbute_set_id',$id )->with('productEavToEav')->lists('attbute_id');
        if( count($fEav)>0 )
        {
           $eav->whereNotIn('id',$fEav);
        }
        $list = $eav->select('id','admin_label')->get();
        $res=   array();
        foreach ($list as $val)
        {
            $aId['id'] = $val->id;
            $aId['text'] = isset($val->admin_label)?$val->admin_label:'';
            array_push($res,$aId);
        }
        return  json_encode($res) ;
    }

    /**
     *  保存属性集和属性的关系
     *  @param $id
     *  @param $data
     */
    static function AdsToAdSave( $data,$fiter )
    {
        $arr = array();
        $aID = array();
        foreach ( $data as $k=>$v )
        {
            $arr[$k]['attbute_set_id'] = decode($v['setid']);
            $arr[$k]['attbute_id'] = $v['id'];
            if( is_array($fiter)&& in_array($v['id'] ,$fiter) ) {
                $arr[$k]['is_fiter'] =1;
            }else{
                $arr[$k]['is_fiter'] =0;
            }
            switch ( $v['parent'] )
            {
                case "基本":
                    $arr[$k]['group'] = 1;
                    break;
                case "价格":
                    $arr[$k]['group'] = 2;
                    break;
                case "seo":
                    $arr[$k]['group'] = 3;
                    break;
                case "图片":
                    $arr[$k]['group'] = 4;
                    break;
                case "描述":
                    $arr[$k]['group'] = 5;
                    break;
            }
            $sID = decode($v['setid']);
            $aID[] = $v['id'];

        }
        //调用写入数据方法 根据属性id查询属性表扩充flat表
        return (new ProductEav())->addProductFlat( $data, $arr, $sID, $aID );

    }


    /**
     *  添加flat动态字段
     */
    private function addProductFlat( $data, $arr, $sID, $aID )
    {
        $result = DB::transaction(function() use ( $data, $arr, $sID, $aID )
        {
            Source_Product_ProductEav::where('attbute_set_id',$sID )->delete();
            $res = Source_Eav_Attrbute::whereIn('id',$aID)->where('is_system',0)->get();
            foreach ( $res as $row )
            {
                if ( !Schema::hasColumn('product_flat_detail', $row->name) )
                {
                    Schema::table('product_flat_detail', function($table) use ( $row )
                    {
                        switch ( $row->type )
                        {
                            case 'int':
                                $table->integer( $row->name );
                                break;
                            case 'bigint':
                                $table->bigInteger( $row->name );
                                break;
                            case 'blob':
                                $table->binary( $row->name );
                                break;
                            case 'boolean':
                                $table->boolean( $row->name );
                                break;
                            case 'char':
                                $table->char( $row->name, $row->length );
                                break;
                            case 'date':
                                $table->date( $row->name);
                                break;
                            case 'datetime':
                                $table->dateTime( $row->name);
                                break;
                            case 'decimal':
                                $table->decimal( $row->name );
                                break;
                            case 'double':
                                $table->double( $row->name );
                                break;
                            case 'choices':
                                $table->double( $row->name,  array('foo', 'bar'));
                                break;
                            case 'float':
                                $table->float( $row->name );
                                break;
                            case 'integer':
                                $table->integer( $row->name );
                                break;
                            case 'longtext':
                                $table->longtext( $row->name );
                                break;
                            case 'mediumint':
                                $table->mediumInteger( $row->name );
                                break;
                            case 'mediumtext':
                                $table->mediumText( $row->name );
                                break;
                            case 'smallint':
                                $table->smallInteger( $row->name );
                                break;
                            case 'tinyint':
                                $table->tinyInteger( $row->name );
                                break;
                            case 'varchar':
                                $table->string( $row->name, $row->length);
                                break;
                            case 'text':
                                $table->text( $row->name );
                                break;
                            case 'time':
                                $table->time( $row->name );
                                break;
                            case 'timestamps':
                                $table->nullableTimestamps();
                                break;
                        }
                    });
                }
            }
            Source_Product_ProductEav::insert( $arr );
        });

        if( is_null($result) )
        {
            return true;

        }else
        {
            return false;
        }
    }
}