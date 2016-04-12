@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> Menu > MenuList
  <hr>        
</div>
@if (Session::has('message'))
<div class="alert alert-{{ Session::get('message_level') }}">
  {{ Session::get('message') }}
</div>
@endif
<table class="table table-bordered">
  <tr>
    <th class="col-md-1"> STT </th>
    <th class="col-md-1"> Tên menu </th>
    <th class="col-md-1"> Vi Tri </th>
    <th class="col-md-2"> URL </th>
    <th class="col-md-1"> Menu cha </th>
    <th class="col-md-1"> Cap </th>
    <th class="col-md-1"> Group </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT = 1; ?>
  @foreach($menus as $menu)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-1"> {{ $menu -> MenuTitle }} </td>
    <td class="col-md-1"> {{ substr($menu -> MenuPosition,1) }} </td>
    <td class="col-md-2"> {{ $menu -> MenuURL }} </td>
    <td class="col-md-1"> {{ $menu -> MenuParent }} </td>
    <td class="col-md-1"> {{ $menu -> MenuLevel }} </td>
    <td class="col-md-1"> <a href="/admin/menu/listGroupBaseMenu/{{$menu -> MenuID}}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/menu/edit/{{$menu -> MenuID}}"> Edit </a> </td>
    <td class="col-md-1"> <a href="/admin/menu/delete/{{$menu -> MenuID}}"> Delete </a> </td>                        
  </tr>
  <?php $STT++;?>
  @endforeach
</table>    
@stop