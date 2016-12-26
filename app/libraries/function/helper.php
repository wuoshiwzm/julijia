<?php
/**
 * @param $directories 文件件名称
 * @param $id  id
 * @param $path 文件名称
 * @param null $type 真为用户
 * @return string
 */
function getImagesUrl($directories, $id, $path, $type = null)
{
    //产品默认图片
    if ($id == false && $type == false) {
        return '/images/admin/default.png';
    }

    if ($path == false) {
        return '/images/admin/default.png';
    }
    //用户默认图片
    if ($path == false && $type != false) {
        return '/images/frontend/mo01.jpg';
    }
    //返回地址
    return Config::get('tools.imagePath') . $directories . '/' . $id . '/' . $path;
}

/**
 * 查询图片图片
 * @param $directories
 * @param $id
 * @param $path
 * @param null $w
 * @param null $h
 * @return string
 */
function getImgSize( $directories, $id, $path, $w=null, $h= null  )
{
    if( $id == false || $path == false )
    {
        return '/images/frontend/mo.png';
    }
    if( $w == null || $h == null )
    {
        $productPath = Config::get('tools.imagePath') . $directories . '/' . $id . '/' . $path;
        return $productPath;
    }
}




/**
 * 加密函数
 * @param $data
 * @return string
 */
function encode($data)
{
    $res = base64_encode('composerRequiree87fbfd8bb338d7121ca4b25abe4901c' . $data);
    return $res;
}

/**
 * 解密函数
 * @param $data
 * @return mixed
 */
function decode($data)
{
    $res = base64_decode($data);
    return explode('composerRequiree87fbfd8bb338d7121ca4b25abe4901c', $res)[1];
}


/**
 * @param $text
 * @return mixed
 * 居利家获取密码
 */
function PasswordJiaMi($text)
{
    $text = addslashes($text);
    $res = DB::select("select jiaMi('" . $text . "') as password");
    $data = '';
    if ($res) {
        $data = $res[0]->password;
    }
    return $data;
}

/**
 * @param $productPath
 * @param $content
 * 返回图片水印的图片。
 * 参数： 图片路径  images/aaa.jpg
 * 图片文字
 */
function getProductWater($productPath, $type = null)
{

    if ($type == 'small_image') {
        $img = Image::make($productPath)->resize(260, 160);
        $img->save($productPath);
    } else if ($type == 'news_small_image') {
        $img = Image::make($productPath)->resize(400, 280);
        $img->save($productPath);
    } else {
        $img = Image::make($productPath, 70)->resize(600, 500)->insert('images/sy/sy.png', 'bottom-right', 10, 13);
        $img->save($productPath);
    }
    return $productPath;
}

/**
 * @return string
 * 得到客户端IP
 */
function clientIP()
{
    $cIP = getenv('REMOTE_ADDR');
    $cIP1 = getenv('HTTP_X_FORWARDED_FOR');
    $cIP2 = getenv('HTTP_CLIENT_IP');
    $cIP1 ? $cIP = $cIP1 : null;
    $cIP2 ? $cIP = $cIP2 : null;
    return $cIP;
}

function ipToCity()
{
    $ip = clientIP();
    $cityDate = @file_get_contents('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip=' . $ip);
    $array = json_decode($cityDate);
    $array = isset($array->city) ? $array->city : false;
    return $array;
}


/**
 * @param string $useragent
 * @return bool
 * 判断是不是蜘蛛点进来的链接
 */
function checkrobot($useragent = '')
{
    static $kw_spiders = array('bot', 'crawl', 'spider', 'slurp', 'sohu-search', 'lycos', 'robozilla');
    static $kw_browsers = array('msie', 'netscape', 'opera', 'konqueror', 'mozilla');
    $useragent = strtolower(empty($useragent) ? $_SERVER['HTTP_USER_AGENT'] : $useragent);
    if (strpos($useragent, 'http://') === false && dstrpos($useragent, $kw_browsers)) return false;
    if (dstrpos($useragent, $kw_spiders)) return true;
    return false;
}

function dstrpos($string, $arr, $returnvalue = false)
{
    if (empty($string)) return false;
    foreach ((array)$arr as $v) {
        if (strpos($string, $v) !== false) {
            $return = $returnvalue ? $v : true;
            return $return;
        }
    }
    return false;
}


/**
 * @param $data
 * @return array
 * 递归去除空格
 */
function trimValue( $data )
{
    $t_data = array();
    foreach ( $data as $k=>$v )
    {
        if( is_array($v) )
        {
            $t_data[$k] = trimValue( $v );
        }else
        {
            $t_data[$k] = trim( $v );
        }
    }
    return $t_data;
}

/**
 * @param $table
 * @param $name  字段名称
 * @return string
 *
 */
function getConfig($table, $name)
{
    if ($table == 'shipping') {
        $res = DB::table('config_shipping')->where('name', $name)->first();
    }
    if ($table == 'payment') {
        $res = DB::table('config_payment')->where('name', $name)->first();

    }
    if ($table == 'product') {
        $res = DB::table('config_product')->where('name', $name)->first();
    }
    if ($table == 'core') {
        $res = DB::table('config_core')->where('name', $name)->first();
    }

    if (isset($res)) {
        return $res->value;
    }
    return '';

}


/**
 * @param $url
 * 确认当前url中是否包含指定字段
 */
function exiturl($urlKey)
{
    $urlNow = URL::current();

    if (strstr($urlNow, $urlKey, true)) {
        return true;
    };
    return false;
}

/**
 * 获取毫秒时间戳
 */
function getMicroTimestamp()
{
    return floor(microtime(true) * 1000);
}


/**
 * @param $end_time
 * @return int
 * 计算时间差
 */
function getSecond( $end_time )
{
    $end = strtotime($end_time);
    $start = strtotime(date("Y-m-d H:i:s"));
    $second = $end-$start;
    if( $second > 0 )
    {
        $second = $second;
    }else
    {
        $second = 0;
    }
    return $second;
}

/**
 * @param $str 参与筛选的参数
 * @param $name 替换的名称
 * @param $value  替换的值
 * @return string 返回新的url
 * 生产查询URL地址
 */
function getScreenUrl( $str, $name, $value )
{
    //获取当前地址
    $url = URL::current();
    //全部清除路径
    if( $name == false && $value == false )
    {
        return $url.'?'."b=".$str.'&s=';
    }
    //获取?后面的参数
    $newUrl = Request::getQueryString();
    if( $newUrl  )
    {
        $str = $newUrl;
    }else
    {
        $str = "b=".$str.'&s=';
    }

    $arr = explode('&',$str);
    $parameter = '';
    foreach ( $arr as $row )
    {
        if( strstr( $row, $name ) )
        {
            $parameter = $url.'?'.str_replace( $row, $name.'='.$value, $str );
            break;
        }
    }
    return $parameter;
}


/**
 * @param $str
 * @return mixed
 * 过滤字符串的空格
 */
function myTrim( $str )
{
    $str = trim($str);
    $search = array(" ","　"," ","\n","\r","\t");
    $replace = array("","","","","","");
    return str_replace( $search, $replace, $str);
}
