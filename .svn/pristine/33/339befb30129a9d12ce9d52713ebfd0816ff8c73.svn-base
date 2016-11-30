<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/10/8
 * Time: 16:53
 */

/**
 * Class Product|
 * 产品管理
 * 1 产品图片尺寸至少 三个尺寸，并且保留原图。
 * 2 产品删除采用真删除
 */
class News
{


    static function validatorNews($data)
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
     *
     * @param $input 传入的input 数据
     *
     * 存入 Source_News_NewsArt:
     * @param $input ['category_id'] 分类ID
     * @param $input ['title'] 资讯标题
     * @param $input ['keywords'] 关键字
     * @param $input ['meta_desc'] 关键字描述
     * @param $input ['is_comment'] 是否允许评论
     * @param $input ['beg_time'] 生效时间
     * @param $news 拼接生成的新闻变量
     *
     * 存入 Source_News_NewsArt:
     * @param $input ['desc_word'] 摘 要
     * @param $input ['content'] 内 容
     * @param $input ['keywords'] 关键字
     * @param $newsDetail 拼接生成的新闻详情变量
     * @return mixed
     * 添加新闻
     * 对应模型  Source_News_NewsArt Source_News_NewsDetail
     */
    static function addNews($input)
    {
        $news = $input;
        unset($news['desc_word'], $news['content']);
        $newsDetail = $input;
        unset($newsDetail['category_id'], $newsDetail['title'], $newsDetail['meta_desc'],
            $newsDetail['is_comment'], $newsDetail['beg_time']);


        $res = DB::transaction(function () use ($news, $newsDetail) {
            $res = Source_News_NewsArt::create($news);

            $newsDetail['blog_id'] = $res->id;

            Source_News_NewsDetail::create($newsDetail);

        });
        if (is_null($res)) {
            return true;
        }
        return false;

    }


    /**
     * 获取所有数据
     */
    static function all()
    {
        return Source_News_NewsArt::all();
    }


    /**
     * @param $id 新闻ID
     * 删除新闻
     */
    static function delete($id)
    {

        $res = DB::transaction(function () use ($id) {
            Source_News_NewsArt::find($id)->delete();
            Source_News_NewsDetail::where('blog_id', $id)->delete();
        });

        if (is_null($res)) {
            return true;
        }
        return false;
    }
}
