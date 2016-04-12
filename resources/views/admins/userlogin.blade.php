@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> UserLogin
	<hr>				
</div>
<form action = "" method="POST">
	@if ( count($errors) > 0 )
	<div class="form-group error">
		<ul>
			@foreach ($errors -> all() as $error)
        <li>{{ $error }}</li>
      @endforeach
		</ul>
	</div>
	@endif
	<div class="form-group">
    	<label for="username"> Username </label>
    	<input type="text" class="form-control" id="username" name="username"
    	>
  	</div>
  	<div class="form-group">
    	<label for="password"> Password </label>
    	<input type="password" class="form-control" id="password" name="password"
    	>
  	</div>
  	<input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  	<button type="submit" class="btn btn-default" value="88"> Login </button>
</form>	

@stop