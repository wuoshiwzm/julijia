@foreach( $data['data'] as $K=>$name )
    <h5 class="h5_bottom">{{$name['name']}}</h5>
    @foreach( $name['value'] as $row )
        @if( isset($row->productEavToEav->id)  )
            <div class="simple-form-field">
                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        @if( $row->productEavToEav->is_required  )
                            <span class="text-danger ng-binding">*</span>
                        @endif
                        <span class="ng-binding">{{$row->productEavToEav->admin_label}}：</span>
                    </label>
                    <div class="col-sm-9">
                        <div class="form-control-box">
                            <!-- text -->
                            @if( $row->productEavToEav->front_input == 'text' )
                            <?php $name = $row->productEavToEav->name; ?>
                            <input type="text" class="form-control" @if( $row->productEavToEav->is_system == 1 ) value="{{$flat->$name}}" @else value="{{$flat->productFlatToFlatDetail->$name}}" @endif name="{{$row->productEavToEav->id}}" @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}" >
                            <span class="Validform_checktip"></span>
                            @endif

                             <!-- time -->
                            @if( $row->productEavToEav->front_input == 'time' )
                            <?php $name = $row->productEavToEav->name; ?>
                            <input type="text" class="form-control"  onfocus="WdatePicker({lang:'zh-cn',minDate:new Date(new Date().valueOf())})"  @if( $row->productEavToEav->is_system == 1 ) value="{{$flat->$name}}" @else value="{{$flat->productFlatToFlatDetail->$name}}" @endif  @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif name="{{$row->productEavToEav->id}}"  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}" >
                            <span class="Validform_checktip"></span>
                            @endif

                            <!-- radio -->
                            @if( $row->productEavToEav->front_input == 'radio' )
                            <?php $name = $row->productEavToEav->name; ?>
                            @foreach(Source_Eav_AttrbuteValue::where('attributeid',$row->productEavToEav->id)->get() as $rows )
                                <label class="control-label cur-p m-r-10">
                                    <input type="radio"  @if( $row->productEavToEav->is_system == 1 ) @if($flat->$name == $rows->value ) checked="checked" @endif @else  @if($flat->productFlatToFlatDetail->$name == $rows->value ) checked="checked" @endif @endif name="{{$row->productEavToEav->id}}" value="{{$rows->value}}" @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}" >{{$rows->text}}
                                </label>
                            @endforeach
                            <span class="Validform_checktip"></span>
                            @endif


                            <!-- checkbox -->
                            @if( $row->productEavToEav->front_input == 'checkbox' )
                            <?php $name = $row->productEavToEav->name; ?>
                            <label class="control-label cur-p m-r-10">
                                <input type="checkbox"  @if( $row->productEavToEav->is_system == 1 ) @if($flat->$name == $rows->value ) checked="checked" @endif @else  @if($flat->productFlatToFlatDetail->$name == $rows->value ) checked="checked" @endif @endif name="{{$row->productEavToEav->id}}"  @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}">红色
                                <span class="Validform_checktip"></span>
                            </label>
                            @endif


                            <!-- select -->
                            @if( $row->productEavToEav->front_input == 'select' )
                            <?php $name = $row->productEavToEav->name; ?>
                            <select class="form-control valid w200" name="{{$row->productEavToEav->id}}" >
                                @if( $row->productEavToEav->model )
                                    {{ $model = $row->productEavToEav->model }}
                                    @foreach($model::get() as $rows )
                                        <option value="{{$rows->id}}" @if( $row->productEavToEav->is_system == 1 ) @if($flat->$name == $rows->id ) selected="selected" @endif @else  @if($flat->productFlatToFlatDetail->$name == $rows->id ) selected="selected" @endif @endif>{{$rows->name}}</option>
                                    @endforeach
                                @endif
                            </select>
                            <span class="Validform_checktip"></span>
                            @endif

                            <!-- texteare -->
                            @if( $row->productEavToEav->front_input == 'textarea' )
                            <?php $name = $row->productEavToEav->name; ?>
                                <textarea class="form-control valid"  @if( $row->productEavToEav->name == 'desc') id="desc" @endif rows="5" name="{{$row->productEavToEav->id}}"  @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}">@if( $row->productEavToEav->is_system == 1 ) {{$flat->$name}} @else {{$flat->productFlatToFlatDetail->$name}} @endif</textarea>
                                <span class="Validform_checktip"></span>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        @endif
    @endforeach
@endforeach

<!--可配属性-->
@if( count($data['configure'])  )
    <h5 class="h5_bottom">{{$data['configure']['name']}}</h5>
    <div class="div_contentlist">
        @foreach( $data['configure']['value'] as $Keys=>$configure )
            @if( isset($configure->productEavToEav->id)  )
                <div class="simple-form-field plist">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">
                            <span class="ng-binding Father_Title" data-id="{{$configure->productEavToEav->name}}" data-value="{{$configure->productEavToEav->admin_label}}">{{$configure->productEavToEav->admin_label}}：</span>
                        </label>
                        <div class="col-sm-9 color_un">
                            <div class="form-control-box Father_Item{{$Keys}}">
                                @if( isset($flat->productFlatToFlatDetail->attribute_json) &&  $flat->productFlatToFlatDetail->attribute_json)
                                <?php
                                  $jsonData = json_decode($flat->productFlatToFlatDetail->attribute_json);
                                  $EavName = $configure->productEavToEav->name;
                                ?>
                                @foreach( Source_Eav_AttrbuteValue::where('attributeid', $configure->attbute_id)->orderBy('attributeid','asc')->get() as $keys=>$value )
                                <label class="control-label cur-p m-r-10">
                                     <input type="checkbox"  data-id="{{$value->attributeid}}" class="valid" @if(count($jsonData[0])) @if( in_array($value->value,$jsonData[0]->$EavName) || in_array(Config::get('tools.imagePath').'attribute/'.$configure->attbute_id.'/'.$value->images,$jsonData[0]->$EavName) ) checked="checked" @endif @endif>
                                     <span title="{{$value->text}}">
                                         @if( $value->images )
                                             <img src="{{getImagesUrl('attribute',$value->attributeid,$value->images)}}" height="32" width="32">
                                         @else
                                             {{$value->value}}
                                         @endif
                                     </span>
                                </label>
                                @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
    </div>

    <!--可配置显示-->
    <div class="simple-form-field">
        <div class="form-group">
            <label class="col-sm-3 control-label">
                <span class="ng-binding"> </span>
            </label>
            <div class="col-sm-9 unber_x">
                <div class="form-control-box">
                    <div class="form-control-box" id="createTable">
                        <table class="table table-hover" style="border-bottom:0!important" id="process">
                           @if( isset($jsonData[1]) && count($jsonData[1]) )
                            @foreach( $jsonData[1] as $j=>$jrow )
                                <tr>
                                    @foreach( $jrow as $t=>$td )
                                    <td>
                                        @if( $t=='prices' )
                                            <input name="prices[]" class="form-control w90" type="text" value="{{$td}}"> / 件
                                        @else
                                            @if( strstr($td,"http") )
                                                <img src="{{$td}}" height="32" width="32">
                                            @else
                                                {{$td}}
                                            @endif
                                            <input name="{{$t}}[]" value="{{$td}}" type="hidden">
                                        @endif
                                    </td>
                                    @endforeach
                                </tr>
                            @endforeach
                        </table>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif