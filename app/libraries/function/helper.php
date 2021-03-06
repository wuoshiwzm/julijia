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
    }else
    {
        return GoodsImg::getGoodsImg( $directories, $id, $path, $w, $h );
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
function getProductWater( $productPath, $w, $h)
{
    $img = Image::make($productPath, 90)->resize($w, $h);
    $img->save($productPath);
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
function getConfig( $table, $name, $type=null )
{
    if ($table == 'shipping')
    {
        $res = DB::table('config_shipping')->cacheTags('config')->remember( 240  )->where('name', $name)->first();
    }
    if ($table == 'payment')
    {
        $res = DB::table('config_payment')->cacheTags('config')->remember( 240  )->where('name', $name)->first();
    }
    if ($table == 'product')
    {
        $res = DB::table('config_product')->cacheTags('config')->remember( 240  )->where('name', $name)->first();
    }
    if ($table == 'core')
    {

        $res = DB::table('config_core')->cacheTags('config')->remember( 240  )->where('name', $name)->first();
    }

    if (isset($res))
    {
        if( $name == 'website_logo' && $type == false )
        {
            return Config::get('tools.imagePath').'/config/core/'.$res->value;
        }
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
         return $url;
    }
    $arr = explode('&',$str);
    foreach ( $arr as $row )
    {
        $kv = explode('=',$row);
        if( $kv[0] == $name )
        {
            $pos = strpos( $str, $row );
            $str = substr_replace($str, $name.'='.$value, $pos, strlen($row));
            break;
        }
    }
    return $url."?".$str;
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


/**
 * @param $phone
 * @return mixed
 * 隐藏手机号码中间的数字
 */
function conversionPhone( $phone )
{
    $pattern = "/(1\d{1,2})\d\d(\d{0,3})/";
    $replacement = "\$1*****\$3";
    return preg_replace($pattern, $replacement, $phone);
}


function setUrlToArray( $str )
{
    if( $str == false ) return [];
    $arr = explode('&',$str);
    $arrAy = array();
    foreach ( $arr as $row )
    {
        $array = explode('=',$row);
        $arrAy[$array[0]] = isset($array[1])?$array[1]:'';
    }
    return $arrAy;
}



/**
 * 返回客户上一次登录的IP地址
 */
function userLastIP($memberId)
{
    if(!Source_User_UserInfo::where('id',$memberId)->first())
    {
        return '';
    }

    return Source_User_UserInfo::where('id',$memberId)->first()->last_ip ;

}

/**
 * 获取客户端浏览器信息 添加win10 edge浏览器判断
 * @param  null
 * @return string
 */
function getBroswer()
{
    $sys = $_SERVER['HTTP_USER_AGENT'];  //获取用户代理字符串
    if (stripos($sys, "Firefox/") > 0) {
        preg_match("/Firefox\/([^;)]+)+/i", $sys, $b);
        $exp[0] = "Firefox";
        $exp[1] = $b[1];  //获取火狐浏览器的版本号
    } elseif (stripos($sys, "Maxthon") > 0) {
        preg_match("/Maxthon\/([\d\.]+)/", $sys, $aoyou);
        $exp[0] = "傲游";
        $exp[1] = $aoyou[1];
    } elseif (stripos($sys, "MSIE") > 0) {
        preg_match("/MSIE\s+([^;)]+)+/i", $sys, $ie);
        $exp[0] = "IE";
        $exp[1] = $ie[1];  //获取IE的版本号
    } elseif (stripos($sys, "OPR") > 0) {
        preg_match("/OPR\/([\d\.]+)/", $sys, $opera);
        $exp[0] = "Opera";  
        $exp[1] = $opera[1];
    } elseif(stripos($sys, "Edge") > 0) {
        //win10 Edge浏览器 添加了chrome内核标记 在判断Chrome之前匹配
        preg_match("/Edge\/([\d\.]+)/", $sys, $Edge);
        $exp[0] = "Edge";
        $exp[1] = $Edge[1];
    } elseif (stripos($sys, "Chrome") > 0) {
        preg_match("/Chrome\/([\d\.]+)/", $sys, $google);
        $exp[0] = "Chrome";
        $exp[1] = $google[1];  //获取google chrome的版本号
    } elseif(stripos($sys,'rv:')>0 && stripos($sys,'Gecko')>0){
        preg_match("/rv:([\d\.]+)/", $sys, $IE);
        $exp[0] = "IE";
        $exp[1] = $IE[1];
    }else {
        $exp[0] = "未知浏览器";
        $exp[1] = "";
    }
    return $exp[0].'('.$exp[1].')';
}


/**
 * @return bool|string
 * 获取服务器类型
 */
function get_os(){
    $agent = $_SERVER['HTTP_USER_AGENT'];
    $os = false;
    if (preg_match('/win/i', $agent) && strpos($agent, '95'))
    {
        $os = 'Windows 95';
    }
    else if (preg_match('/win 9x/i', $agent) && strpos($agent, '4.90'))
    {
        $os = 'Windows ME';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/98/i', $agent))
    {
        $os = 'Windows 98';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/nt 6.0/i', $agent))
    {
        $os = 'Windows Vista';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/nt 6.1/i', $agent))
    {
        $os = 'Windows 7';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/nt 6.2/i', $agent))
    {
        $os = 'Windows 8';
    }else if(preg_match('/win/i', $agent) && preg_match('/nt 10.0/i', $agent))
    {
        $os = 'Windows 10';#添加win10判断
    }else if (preg_match('/win/i', $agent) && preg_match('/nt 5.1/i', $agent))
    {
        $os = 'Windows XP';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/nt 5/i', $agent))
    {
        $os = 'Windows 2000';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/nt/i', $agent))
    {
        $os = 'Windows NT';
    }
    else if (preg_match('/win/i', $agent) && preg_match('/32/i', $agent))
    {
        $os = 'Windows 32';
    }
    else if (preg_match('/linux/i', $agent))
    {
        $os = 'Linux';
    }
    else if (preg_match('/unix/i', $agent))
    {
        $os = 'Unix';
    }
    else if (preg_match('/sun/i', $agent) && preg_match('/os/i', $agent))
    {
        $os = 'SunOS';
    }
    else if (preg_match('/ibm/i', $agent) && preg_match('/os/i', $agent))
    {
        $os = 'IBM OS/2';
    }
    else if (preg_match('/Mac/i', $agent) && preg_match('/PC/i', $agent))
    {
        $os = 'Macintosh';
    }
    else if (preg_match('/PowerPC/i', $agent))
    {
        $os = 'PowerPC';
    }
    else if (preg_match('/AIX/i', $agent))
    {
        $os = 'AIX';
    }
    else if (preg_match('/HPUX/i', $agent))
    {
        $os = 'HPUX';
    }
    else if (preg_match('/NetBSD/i', $agent))
    {
        $os = 'NetBSD';
    }
    else if (preg_match('/BSD/i', $agent))
    {
        $os = 'BSD';
    }
    else if (preg_match('/OSF1/i', $agent))
    {
        $os = 'OSF1';
    }
    else if (preg_match('/IRIX/i', $agent))
    {
        $os = 'IRIX';
    }
    else if (preg_match('/FreeBSD/i', $agent))
    {
        $os = 'FreeBSD';
    }
    else if (preg_match('/teleport/i', $agent))
    {
        $os = 'teleport';
    }
    else if (preg_match('/flashget/i', $agent))
    {
        $os = 'flashget';
    }
    else if (preg_match('/webzip/i', $agent))
    {
        $os = 'webzip';
    }
    else if (preg_match('/offline/i', $agent))
    {
        $os = 'offline';
    }
    else
    {
        $os = '未知操作系统';
    }
    return $os;
}