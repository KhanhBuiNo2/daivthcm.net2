@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> Menu > MenuEdit > {{ $editmenu['MenuTitle'] }}
  <hr>        
</div>
<form action="" method="POST" >
  @if ( count($errors) > 0 )
  <div class="form-group error">
    <ul>
    @foreach ($errors -> all() as $error)
      <li>{{ $error }}</li>
    @endforeach
    </ul>
  </div>
  @endif
  <br/>
  @if (Session::has('message'))
  <div class="alert alert-{{ Session::get('message_level') }}">
    {{ Session::get('message') }}
  </div>
  @endif
  <div class="form-group">
    <label for="MenuTitle"> Tên menu </label>
    <input type="text" class="form-control" id="MenuTitle" name="MenuTitle" value="{{ $editmenu['MenuTitle'] }}">
  </div>
  <div class="form-group">
    <label for="MenuParent"> Menu cha </label>
    <select class="form-control" id="MenuParent" name="MenuParent">
      <option> Chọn menu cha </option>                
      @foreach ($menus as $menu)
      <option value="{{ $menu -> MenuID }}" <?php if($menu ->MenuID == $editmenu['MenuParent'] ) echo 'selected = "selected"';?> > {{ $menu -> MenuTitle }} </option>
      @endforeach
  </select>
  </div>
  <div class="form-group">
    <label for="MenuPosition"> Vi Tri </label>
    <input type="text" class="form-control" id="MenuPosition" name="MenuPosition" value="{{ substr($editmenu['MenuPosition'],1) }}">
  </div>
  <div class="form-group">
    <label for="MenuURL"> URL </label>
    <input type="text" class="form-control" id="MenuURL" name="MenuURL" value ="{{ $editmenu['MenuURL'] }}">
  </div>
  <div class="form-group">
    <label for="MenuLevel"> Menu Cap </label>
    <input type="text" class="form-control" id="MenuLevel" name="MenuLevel" value ="{{ $editmenu['MenuLevel'] }}">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox" name="Is_Free" value="1"<?php if($editmenu['Is_Free'] ==1) echo 'checked="checked"'; ?> > Free Menu
    </label>
  </div>
  <input type="hidden" name="MenuID" value='{!! $editmenu['MenuID'] !!}' >
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" name="btnEditMenu" value="88"> Thay doi </button>
</form>
<br/>
<hr>
@stop