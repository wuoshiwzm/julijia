<?php

class NewsArticleController extends CommonController
{


    //对应模板为layouts.admin_news
    protected $layout = 'layouts.admin_news';

    /**
     * 设置默认模板
     */
    protected function setupLayout()
    {
        if (!is_null($this->layout)) {
            $this->layout = View::make($this->layout);
        }
    }


    /**
     * Display a listing of the resource. 显示所有新闻内容
     *
     * @return Response
     */
    public function index()
    {
        //news_title  news_available $news_cate_id
        $cate = NewsCate::all();
        //dd($cate);

        $news = Source_News_NewsArt::orderBy('id', 'desc');
        //搜索 标题
        $news_title = trim(Input::get('news_title'));
        //搜索 是否有效
        $news_available = trim(Input::get('news_available'));
        //搜索 对应分类
        $news_cate_id = trim(Input::get('news_cate_id'));


        if ($news_title && $news_available && $news_cate_id) {
            $news->where('news_title', 'like', '%' . $news_title . '%')
                ->where('news_cate_id', $news_cate_id)
                ->where('news_available', $news_available);
        } elseif ($news_title && !$news_available && $news_cate_id) {
            $news->where('news_title', 'like', '%' . $news_title . '%')
                ->where('news_cate_id', $news_cate_id);

        } elseif ($news_title && $news_available && !$news_cate_id) {
            $news->where('news_title', 'like', '%' . $news_title . '%')
                ->where('news_available', $news_available);
        } elseif ($news_title && !$news_available && !$news_cate_id) {
            $news->where('news_title', 'like', '%' . $news_title . '%');
        } elseif (!$news_title && $news_available && $news_cate_id) {
            $news->where('news_cate_id', $news_cate_id)
                ->where('news_available', $news_available);
        } elseif (!$news_title && !$news_available && $news_cate_id) {
            $news->where('news_cate_id', $news_cate_id);
        } elseif (!$news_title && $news_available && !$news_cate_id) {
            $news->where('news_available', $news_available);
        } elseif (!$news_title && !$news_available && !$news_cate_id) {

        }


        $setPage = Input::get('setpage') ? Input::get('setpage') : self::$adminPage;
        $data = $news->paginate($setPage);
        $set['name'] = $news_title;
        $set['setpage'] = $setPage;
        return $this->view('admin.news.newsart', compact('data', 'set', 'cate'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $cates = Source_News_NewsCate::where('deepth', '<', 2)->select('name', 'id')->get();
        return $this->view('admin.news.news_add', compact('cates'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = trimValue(Input::all());

        $input = array_except($input, ['_token', 'method']);
        $validator = News::validatorNews($input);
        if ($validator === true) {
            $res = News::addNews($input);
            if ($res) {
                //添加成功
                return Redirect::to('admin/newsart')->with('msg', '添加成功');

            } else {
                //添加失败
                return back()->with('msg', '添加失败');
            }

        } else {
            return back()->withErrors($validator);
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {
        //
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id)
    {
        $id = decode(trim($id));
        dd($id);
        $data = Source_News_NewsArt::findOrFail($id);
        $cateName = Source_News_NewsCate::select('news_cate_name', 'news_cate_id')->get();
        //  dd($data);
        $this->view('admin.news.news_edit', compact('data', 'cateName'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $input = trimValue(Input::all());

        $validator = News::validatorNews($input);
        $id = decode(trim($id));
        if ($validator === true) {

            $input = array_except($input, ['_token', '_method']);
            $res = Source_News_NewsArt::where('news_id', $id)->update($input);

            if ($res) {
                //修改成功
                return Redirect::to('admin/newsart')->with('msg', '修改成功');

            } else {
                //修改失败
                return Redirect::back()->with('msg', '修改失败');
            }

        } else {
            return Redirect::back()->withErrors($validator);
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id 新闻ID
     * @return Response
     */
    public function destroy($id)
    {
        $id = decode(trim($id));
        //判断 是否有该新闻
        $res = Source_News_NewsArt::find($id);
        if(!$res){
            $obj = new stdClass();
            $obj->status = 1;
            $obj->msg = '没有这个新闻？删除失败';
            return json_encode($obj);
        }

        //在blog 和 blog_detail中删除信息
        $res = News::delete($id);

        if ($res) {
            $obj = new stdClass();
            $obj->status = 0;
            $obj->msg = '删除成功';
            return json_encode($obj);

        } else {
            $obj = new stdClass();
            $obj->status = 1;
            $obj->msg = '删除失败';
            return json_encode($obj);
        }


    }


}
