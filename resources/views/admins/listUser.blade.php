@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/user"> User</a>
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
    <th class="col-md-2"> Username </th>
    <th class="col-md-2"> Họ tên </th>
    <th class="col-md-1"> Vị trí </th>
    <th class="col-md-1"> Group </th>
    <th class="col-md-1"> Menu </th>
    <th class="col-md-1"> ActionModule </th>
    <th class="col-md-1"> Password </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                          
  </tr>
  <?php $STT =1; ?>
  @foreach ($users as $user)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $user['Username'] }} </td>
    <td class="col-md-2"> {{ $user['FullName'] }} </td>
    <td class="col-md-1"> {{ $user['DepartmentID']}}  </td>
    <td class="col-md-1"> <a href="/admin/user/listGroupBaseUser/{{ $user['UserID'] }}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/user/listMenuBaseUser/{{ $user['UserID'] }}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/user/listModuleBaseUser/{{ $user['UserID'] }}"> List </a> </td>
    <td class="col-md-1"> <a onclick = "return deleteConfirm('Bạn có muốn reset password của user nay không')" href="/admin/user/reset/{{ $user['UserID'] }}"> Reset </a> </td>
    <td class="col-md-1"> <a href="/admin/user/edit/{{ $user['UserID'] }}"> Edit </a> </td>
    <td class="col-md-1"> <a onclick = "return deleteConfirm('Bạn có muốn xóa user này không')" href="/admin/user/delete/{{ $user['UserID'] }}"> Delete </a> </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>

@stop