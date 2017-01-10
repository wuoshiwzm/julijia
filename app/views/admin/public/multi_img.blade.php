<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户图片</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        img {
            border: none;
            border: 0;
        }

        dl, ul, li {
            list-style-type: none;
        }

        .body {
            font-family: "微软雅黑";
            background: #fff;
            padding: 20px;
            padding: 20px 20px 20px 20px;
        }

        .img_a {
            width: 418px;
            height: 260px;
            padding-top: 100px;
            text-align: center;
            background: #f0f0f0;
        }

        .img_a img {
            width: 135px;
            height: 135px;
        }

        .img_a div {
            background: #fff;
            padding: 10px;
            width: 135px;
            height: 135px;
            margin: 0 auto;
        }

        .button_div {
            padding: 6px 0px 6px 0px;
        }

        .button_div span {
            background: #fff url(/images/admin/img_bg.jpg) no-repeat 0px 0px;
            border: 0;
            width: 150px;
            height: 38px;
            display: block;
            float: left;
            overflow: hidden;
        }

        .button_div_txt {
            padding: 10px 10px 6px 0px;
            font-size: 12px;
            color: #666;
        }

        .button_div_left {
            border: 0;
            width: 200px;
            height: 38px;
            float: left;
            font-size: 100px;
            filter: alpha(opacity=0);
            -moz-opacity: 0;
            -khtml-opacity: 0;
            opacity: 0;
            cursor: pointer;
        }

        #SWFUpload_0 {
            border: 0;
            width: 200px;
            height: 38px;
            float: left;
            font-size: 100px;
            filter: alpha(opacity=0);
            -moz-opacity: 0;
            -khtml-opacity: 0;
            opacity: 0;
            cursor: pointer;
        }

        .button_div_right {
            background: #666;
            border: 0;
            width: 110px;
            height: 38px;
            font-size: 14px;
            color: #fff;
            font-weight: bold;
            text-align: center;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            float: left;
            float: right;
            cursor: pointer;
        }

        .button_div_right:hover {
            background: #555;
        }
    </style>
</head>
<body>
<div class="body">
    <form class="m-form" id="frm" accept-charset="UTF-8" action="" method="POST">
        <div class="img_a">
            <div><img src="/images/admin/addimg.png"></div>
        </div>
        <input type="text" class="imgInput">
        <div class="button_div_txt">支持3M以内的jpg、jpeg、png格式的图片</div>
        <input type="hidden" value="" name="path" id="path">
        <div class="button_div">
            <span><input type="file" value="上传图片" accept="image/*" class="button_div_left" id="file_upload"></span>
            <input type="button" value="保存图片" class="button_div_right" id="subfrm">
        </div>
        <input type="hidden" value="{{$i}}" id="index">
    </form>
</div>
<script type="text/javascript" src="/js/public/jquery/jquery-1.9.1.min.js"></script>
<!--弹框-->
<script type="text/javascript" src="/js/public/layer/layer.js"></script>
<!--图片上传插件-->
<script type="text/javascript" src="/js/public/uploadify/jquery.uploadify.js"></script>
<script>
    $(function () {
        $("#file_upload").uploadify({
            'formData': {
                'timestamp': '<?php echo time();?>',
                'token': '<?php echo md5('unique_salt' . time())?>'
            },
            'width': 149,
            'height': 38,
            'fileSizeLimit': '3072KB',
            'fileTypeExts': '*.jpg;*.gif;*.jpeg;*.png',
            'buttonClass': 'uploadify-button',
            'buttonText': '',
            'swf': '/js/public/uploadify/uploadify.swf',
            'uploader': '/js/public/uploadify/uploadify.php',
            'checkExisting': '/js/public/uploadify/check-exists.php',
            'debug': true,
            'onUploadError': function (file, errorCode, errorMsg, errorString) {
                if (errorString != 'Cancelled') {
                    layer.msg('文件上传出错了');
                }
            },
            'onUploadSuccess': function (file, data, response) {

                if (data.length > 50 || data == false) {
                    layer.msg('上传失败');
                    return;
                }
                $("#path").val(data);
                $(".img_a").find('img').attr('src', '/media/temp/' + data);
                if($(".imgInput").val()){
                    $(".imgInput").val(data + ';' +$(".imgInput").val());
                }else{
                    $(".imgInput").val(data);
                }
            },
            'itemTemplate': '<div id="${fileID}" class="uploadify-queue-item" style="display: none">\
                               <div class="cancel">\
                                   <a href="javascript:$(\'#${instanceID}\').temp(\'cancel\', \'${fileID}\')">X</a>\
                               </div>\
                               <span class="fileName">${fileName} (${fileSize})</span><span class="data"></span>\
                            </div>'
        });
    });


    /**
     * 提交图片from表单
     */
    $("#subfrm").click(function () {
        if ($(".img_a").find('img').attr('src') != '/images/user.jpg') {

            var data = $("#path").val();
            var index = $("#index").val();
            var imgInput = $(".imgInput").val();
            parent.setPathUrl(imgInput, index);
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        } else {
            parent.layer.msg('请选择图片', {icon: 7});
        }
    });
</script>
</body>
</html>

