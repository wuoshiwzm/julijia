@section('content')



@if(Session::has('message'))
           <p class="alert">{{ Session::get('message') }}</p>
           @endif

  注册信息

    <form action="{{url('user/store')}}" method="post">

      {{ Form::token() }}
      用户名:<input type="text" name="name">
      <br>

      密码:<input type="password" name="password">
      <br>

      重新输入密码:<input type="password" name="repassword">
      <br>

      Email:<input type="text" name="email">
      <br>

      办公室电话:<input type="text" name="office_phone">
      <br>

      手机:<input type="text" name="mobile_phone">
      <br>

      住宅电话:<input type="text" name="home_phone">
      <br>

      性别:<select type="text" name="sex">
        <option selected="selected">请选择</option>
        <option value="1">男</option>
        <option value="0">女</option>
      </select>
      <br>

      生日:<input type="date" name="birthday">
      <br>

      QQ号码:<input type="text" name="qq">
      <br>

      微信号码:<input type="text" name="wechat">
      <br>



      <input type="submit" >
    </form>
@stop
