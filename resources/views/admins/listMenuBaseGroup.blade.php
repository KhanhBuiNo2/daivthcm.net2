@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')
<div class="row"> <a href="/admin/group"> Group</a> > Danh sách menu của group {{$basegroup['GroupName']}}
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
      <label for="MenuID"> Tên Menu </label>
      <select class="form-control" id="MenuID" name="MenuID">         
        <option value="0">Chọn Menu</option>
        @if( !empty($unaddmenus) )
        @foreach($unaddmenus as $unaddmenu)
        <option value="{{ $unaddmenu -> MenuID  }}">{{ $unaddmenu -> MenuTitle }}</option>
        @endforeach
        @endif  
      </select>
    </div>
    <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
    <button type="submit" class="btn btn-default" value="88"> Thêm Menu </button>
</form>
<br/>
@if (Session::has('message'))
<div class="alert alert-{{ Session::get('message_level') }}">
  {{ Session::get('message') }}
</div>
@endif
<table class="table table-bordered">
  <tr>
    <th class="col-md-1"> STT </th>
    <th class="col-md-2"> Tên Menu </th>
    <th class="col-md-2"> URL </th>
    <th class="col-md-1"> Remove </th>                         
  </tr>
  <?php $STT =1; ?>
  @foreach ($menus as $menu)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $menu -> MenuTitle }} </td>
    <td class="col-md-2"> {{ $menu -> MenuURL }} </td>
    <td class="col-md-1"> <a onclick = "return deleteConfirm('Bạn có muốn remove menu này khỏi group không')" href="/admin/group/removeMenuBaseGroup/{{ $menu -> MenuID }}/{{ $basegroup['GroupID'] }}"> Remove </a> </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>

@stop