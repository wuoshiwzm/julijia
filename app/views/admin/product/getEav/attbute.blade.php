@foreach( $data as $K=>$name )
 @if( $K )<h5 class="h5_bottom">{{$name['name']}}</h5>@endif
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
                     <input type="text" class="form-control" name="{{$row->productEavToEav->id}}" @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}" >
                     <span class="Validform_checktip"></span>
                     @endif


                     <!-- radio -->
                     @if( $row->productEavToEav->front_input == 'radio' )
                     @foreach(Source_Eav_AttrbuteValue::where('attributeid',$row->productEavToEav->id)->get() as $rows )
                         <label class="control-label cur-p m-r-10">
                            <input type="radio" name="{{$row->productEavToEav->id}}" value="{{$rows->value}}" @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}" >{{$rows->text}}
                         </label>
                     @endforeach
                     <span class="Validform_checktip"></span>
                     @endif


                     <!-- checkbox -->
                     @if( $row->productEavToEav->front_input == 'checkbox' )
                     <label class="control-label cur-p m-r-10">
                         <input type="checkbox"  name="{{$row->productEavToEav->id}}"  @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}">红色
                         <span class="Validform_checktip"></span>
                     </label>
                     @endif


                     <!-- select -->
                     @if( $row->productEavToEav->front_input == 'select' )
                     <select class="form-control valid w200" name="{{$row->productEavToEav->id}}" >
                         @if( $row->productEavToEav->model )
                             {{ $model = $row->productEavToEav->model }}
                             @foreach($model::get() as $rows )
                                 <option value="{{$rows->id}}">{{$rows->name}}</option>
                             @endforeach
                         @endif
                     </select>
                     <span class="Validform_checktip"></span>
                     @endif

                     <!-- texteare -->
                     @if( $row->productEavToEav->front_input == 'texteare' )
                         <textarea class="form-control valid"  rows="5" name="{{$row->productEavToEav->id}}"  @if( $row->productEavToEav->is_required == 0 ) ignore="ignore" @endif  datatype="{{$row->productEavToEav->valid_rule}}"  errormsg="{{$row->productEavToEav->errormsg}}" tipsrmsg="{{$row->productEavToEav->tipgs}}"></textarea>
                         <span class="Validform_checktip"></span>
                     @endif
                 </div>
             </div>
         </div>
     </div>
 @endif
 @endforeach
@endforeach