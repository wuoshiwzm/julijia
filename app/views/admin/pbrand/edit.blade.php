@section('title','新增品牌')
@section('admincss')
    <link type="text/css" rel="stylesheet" href="{{url('css/admin/loaders.css').'?v='.Config::get('tools.adminJsTime')}}">
@stop
@section('content')
    <div class="page">
        <div class="fixed-bar">
            <div class="item-title">
                <div class="subject">
                    <h3>
                        <span class="action">编辑</span>
                    </h3>
                    <h5>
                    <span class="action-span">
                        <a href="{{url('admin/product/brand')}}" class="btn btn-warning click-loading">
                            <i class="iconfont">&#xe6d4;</i>
                            返回品牌列表
                        </a>
                    </span>
                    </h5>
                </div>
            </div>
        </div>
        <form class="form-horizontal form"  action="{{url('admin/product/brand/'.encode($data->id))}}" method="post">
            {{ Form::token() }}
            <input type="hidden" name="_method" value="PUT">
            <div class="table-content m-t-30">
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">品牌名称：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text"  class="form-control valid" name="name" value="{{$data->name}}" datatype="s2-15" maxlength="15" tipsrmsg="请输入品牌名称" errormsg="品牌名称为2-15个字符">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">品牌首字母：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text"  class="form-control valid" name="pinyin" value="{{$data->pinyin}}" datatype="/^[A-Z]{1}$/" maxlength="1" tipsrmsg="请输入品牌首字母" errormsg="品牌首字母为1个大写英文字母">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">品牌官网：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text"  class="form-control valid" name="url" value="{{$data->url}}" ignore="ignore" datatype="url" tipsrmsg="请输入品牌官网" errormsg="品牌官地址有误">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">品牌logo：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box addimg">
                                <a href="javascript:;"><img  onclick="getImgTemplet( this,'logo' )"  src="{{getImagesUrl('brand',$data->id,$data->logo)}}" width="100" height="100"></a>
                                <input type="hidden" id="logo"  name="logo" value="{{$data->logo}}"/>
                                <input type="hidden" name="editlogo" value="{{$data->logo}}"/>
                            </div>
                            <div class="help-block help-block-t"><div class="help-block help-block-t">请上传图片，做为品牌的LOGO，建议尺寸100*40像素</div></div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">推广：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box addimg">
                                <a href="javascript:;"><img onclick="getImgTemplet( this,'extension' )"  src="{{getImagesUrl('brand',$data->id,$data->logo)}}" width="100" height="100"></a>
                                <input type="hidden" id="extension" name="extension" value="{{$data->extension}}" />
                                <input type="hidden"  name="editextension"  value="{{$data->extension}}"/>
                            </div>
                            <div class="help-block help-block-t"><div class="help-block help-block-t">品牌推广图，建议尺寸300*200像素，设置品牌推广图，该品牌会在品牌专区显示，否则不展示</div></div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">排序：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="text"  class="form-control w100" name="sort"  value="{{$data->sort}}" ignore="ignore" datatype="n1-3" maxlength="3" tipsrmsg="请输入1到3位整数" errormsg="输入1到3位整数">
                                <span class="Validform_checktip"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="text-danger ng-binding">*</span>
                            <span class="ng-binding">是否推荐：</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="form-control-box">
                                <input type="hidden"  value="1" aria-required="true" class="valid">
                                <div>
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="recommend" value="1" @if($data->recommend == 1 )checked="checked" @endif>是</label>
                                    <label class="control-label cur-p m-r-10"><input type="radio" name="recommend" value="0" @if($data->recommend == 0 )checked="checked" @endif>否</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">
                            <span class="ng-binding">品牌描述</span>
                        </label>
                        <div class="col-sm-8">
                            <textarea class="form-control valid"  rows="5" aria-invalid="false" name="content">{{$data->content}}</textarea>
                        </div>
                    </div>
                </div>
                <div class="simple-form-field p-b-30">
                    <label for="text4" class="col-sm-4 control-label"></label>
                    <div class="col-xs-8">
                        <input type="button" id="btn_submit" value="确认提交" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </form>
    </div>
@stop
@section('footer_js')
    <script type="text/javascript" src="/js/admin/brand.js?v={{Config::get('tools.adminJsTime')}}"></script>
@stop