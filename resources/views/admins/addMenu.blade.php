@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> Menu > MenuEdit
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
  <div class="form-group">
    <label for="MenuTitle"> Tên menu </label>
    <input type="text" class="form-control" id="MenuTitle" name="MenuTitle">
  </div>
  <div class="form-group">
    <label for="MenuParent"> Menu cha </label>
    <select class="form-control" id="MenuParent" name="MenuParent">
      <option> Chọn menu cha </option>                
      @foreach ($menus as $menu)
      <option value="{{ $menu -> MenuID }}"> {{ $menu -> MenuTitle }} </option>
      @endforeach
  </select>
  </div>
  <div class="form-group">
    <label for="MenuPosition"> Vi Tri </label>
    <input type="text" class="form-control" id="MenuPosition" name="MenuPosition">
  </div>
  <div class="form-group">
    <label for="MenuURL"> URL </label>
    <input type="text" class="form-control" id="MenuURL" name="MenuURL">
  </div>
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Tạo mới </button>
</form>
<br/>
<hr>
@if (Session::has('message'))
<div class="alert alert-{{ Session::get('message_level') }}">
  {{ Session::get('message') }}
</div>
@endif
<table class="table table-bordered">
  <tr>
    <th class="col-md-1"> STT </th>
    <th class="col-md-2"> Tên menu </th>
    <th class="col-md-1"> Vi Tri </th>
    <th class="col-md-2"> URL </th>
    <th class="col-md-2"> Menu cha </th>
    <th class="col-md-2"> Cap </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT = 1; ?>
  @foreach($menus as $menu)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $menu -> MenuTitle }} </td>
    <td class="col-md-1"> {{ substr($menu -> MenuPosition,1) }} </td>
    <td class="col-md-2"> {{ $menu -> MenuURL }} </td>
    <td class="col-md-2"> {{ $menu -> MenuParent }} </td>
    <td class="col-md-1"> {{ $menu -> MenuLevel }} </td>
    <td class="col-md-1"> <a href="/admin/menu/edit/{{$menu -> MenuID}}"> Edit </a> </td>
    <td class="col-md-1"> <a href="/admin/menu/delete/{{$menu -> MenuID}}"> Delete </a> </td>                        
  </tr>
  <?php $STT++;?>
  @endforeach
</table>  

@stop