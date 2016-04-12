@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href = "/admin/user"> User</a> > Chỉnh sửa User
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
            <label for="Username"> Username: </label>
            <input type="text" disabled="disabled" class="form-control" id="Username" name="Username" value="{{ $user['Username'] }}">
          </div>
          <div class="form-group">
            <label for="FullName"> Họ Tên </label>
            <input type="text" class="form-control" id="FullName" name="FullName" value="{{ $user['FullName'] }}">
          </div>
          <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
           <input type="hidden" name="UserID" value='{{ $user['UserID'] }}' >
          <button type="submit" class="btn btn-default" value="88"> Chinh Sua </button>
        </form>
@stop