@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/action"> Action</a>
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
    <th class="col-md-2"> Tên Action </th>
    <th class="col-md-4"> Ghi Chú </th>
    <th class="col-md-1"> Module </th>
    <th class="col-md-1"> Group </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT =1; ?>
  @foreach ($actions as $action)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $action -> Method }} </td>
    <td class="col-md-4"> {{ $action -> Description }} </td>
    <th class="col-md-2"> {{ $action -> ModuleID }} </th>
    <td class="col-md-1"> <a href="/admin/action/listGroupBaseAction/{{ $action -> AuthorizationID }}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/action/edit/{{ $action -> AuthorizationID }}"> Edit </a> </td>
    <td class="col-md-1"><a onclick = "return deleteConfirm('Bạn có muốn xóa action này không')" href="/admin/action/delete/{{ $action -> AuthorizationID }}"> Delete </a>
     </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
<a href="/admin/action/add"> <button> Add Action </button> </a>
@stop