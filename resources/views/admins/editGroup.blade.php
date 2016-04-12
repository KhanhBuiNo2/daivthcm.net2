@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href = "/admin/group"> Group</a> > GroupEdit
          <hr>        
        </div>
        <form action="" method="POST">
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
              <label for="GroupName"> Tên group </label>
              <input type="text" class="form-control" id="GroupName" name="GroupName" value="{{ $group['GroupName'] }}">
            </div>
            <input type="hidden" name="GroupID" value='{!! $group['GroupID'] !!}' >
            <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
            <button type="submit" class="btn btn-default" value="88"> Thay doi </button>
        </form>
@stop