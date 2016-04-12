@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/module">Module</a>
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
    <th class="col-md-3"> Ten Module </th>
    <th class="col-md-3"> Ghi Chu </th>
    <th class="col-md-1"> Action </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT =1; ?>
  @foreach ($modules as $module)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-3"> {{ $module['ModuleName'] }} </td>
    <td class="col-md-5"> {{ $module['Note'] }} </td>
    <td class="col-md-1"> <a href="/admin/module/listActionBaseModule/{{ $module['ModuleID'] }}"> List </a> </td>
    <td class="col-md-1"> <a href="/admin/module/edit/{{ $module['ModuleID'] }}"> Edit </a> </td>
    <td class="col-md-1"><a onclick = "return deleteConfirm('Bạn có muốn xóa module này không')" href="/admin/module/delete/{{ $module['ModuleID'] }}"> Delete </a>
     </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
<a href="/admin/module/add"> <button> Add Module </button> </a>
@stop