@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/group"> Group</a>
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
    <th class="col-md-2"> Tên Group </th>
    <th class="col-md-2"> User </th>
    <th class="col-md-2"> Menu </th>
    <th class="col-md-2"> Action </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT =1; ?>
  @foreach ($groups as $group)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $group['GroupName'] }} </td>
    <td class="col-md-2"> <a href="/admin/group/listUserBaseGroup/{{ $group['GroupID'] }}"> List </a> </td>
    <td class="col-md-2"> <a href="/admin/group/listMenuBaseGroup/{{ $group['GroupID'] }}"> List </a> </td>
    <td class="col-md-2"> <a href="/admin/group/listActionBaseGroup/{{ $group['GroupID'] }}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/group/edit/{{ $group['GroupID'] }}"> Edit </a> </td>
    <td class="col-md-1"> <a onclick = "return deleteConfirm('Bạn có muốn xóa group này không')" href="/admin/group/delete/{{ $group['GroupID'] }}"> Delete </a> </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
@stop