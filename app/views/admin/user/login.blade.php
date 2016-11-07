@section('content')

@if(Session::has('message'))
           <p class="alert">{{ Session::get('message') }}</p>
           <p class="alert">{{ Session::all() }}</p>
           @endif

<form  action="{{url('user/loginVerify')}}" method="post">

  {{Form::token()}}
  用户名:<input type="text" name="name">
  <br>

  密码:<input type="password" name="password">
  <br>

  <input type="submit" >
</form>


@stop
