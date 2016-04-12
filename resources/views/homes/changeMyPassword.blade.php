@extends('home')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> User > changeMyPassword > {{$MyInfo -> Username }}
  <hr>        
</div>
<form action ="" method="POST">
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
    <label for="FullName"> Họ Tên </label>
    <input type="text" class="form-control" id="FullName" name="FullName" disabled="disabled"  value="{{$MyInfo -> FullName}}">
  </div>
  <div class="form-group">
    <label for="OldPassword"> Old Password </label>
    <input type="password" class="form-control" id="OldPassword" name="OldPassword" >
  </div>
  <div class="form-group">
    <label for="NewPassword"> New Password </label>
    <input type="password" class="form-control" id="NewPassword" name="NewPassword" >
  </div>
  <div class="form-group">
    <label for="ConfirmNewPassword"> Confirm New Password </label>
    <input type="password" class="form-control" id="ConfirmNewPassword" name="ConfirmNewPassword" >
  </div>
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Đổi Password </button>
</form>
@stop