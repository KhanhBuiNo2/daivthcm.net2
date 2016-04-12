@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/module">Module</a> > Thêm Module
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
    <label for="GroupName"> Tên Module </label>
    <input type="text" class="form-control" id="ModuleName" name="ModuleName">
    <label for="Note"> Ghi chú</label>
    <textarea  class="form-control" id="Note" name="Note"> </textarea>
  </div>
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Tạo mới </button>
</form>
<hr>
@if (Session::has('message'))
<div class="alert alert-{{ Session::get('message_level') }}">
  {{ Session::get('message') }}
</div>
@endif  
<table class="table table-bordered">
  <tr>
    <th class="col-md-1"> STT </th>
    <th class="col-md-3"> Tên Module </th>
    <th class="col-md-3"> Ghi Chú </th>
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
    <td class="col-md-1"><a onclick = "return deleteConfirm('Ban co muon xoa Moudle nay khong')" href="/admin/module/delete/{{ $module['ModuleID'] }}"> Delete </a>
    </td>                          
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
@stop