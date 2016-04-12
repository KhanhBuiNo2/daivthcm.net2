@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href = "/admin/action">Action</a> > Chỉnh sửa Action
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
    <label for="Method"> Tên Action </label>
    <input type="text" class="form-control" id="Method" name="Method" value="{{ $EditAction['Method'] }}">
  </div>
  <div class="form-group">
    <label for="ModuleID"> Module </label>
    <select class="form-control" id="ModuleID" name="ModuleID">
      <option value="0"> Chọn module </option>                
      @foreach ($Modules as $Module) 
        <option <?php if($Module['ModuleID'] == $EditAction['ModuleID']) echo 'selected = "selected"' ; ?> value="{{ $Module['ModuleID'] }}"> {{ $Module['ModuleName'] }} </option>
      @endforeach
  </select>
  </div>
  <div class="form-group">
    <label for = "Description"> Giới thiệu </label>
    <textarea class="form-control" id="Description" name="Description">{{$EditAction['Description']}}</textarea>
  </div>
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <input type="hidden" name="AuthorizationID" value='{!! $EditAction['AuthorizationID'] !!}' >
  <button type="submit" class="btn btn-default" value="88"> Thay doi </button>
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
    <th class="col-md-2"> Tên Action </th>
    <th class="col-md-1"> Module </th>
    <th class="col-md-5"> Giới thiệu </th>
    <th class="col-md-1"> Edit </th>
    <th class="col-md-1"> Delete </th>                        
  </tr>
  <?php $STT = 1; ?>
  @foreach($Actions as $Action)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $Action -> Method }} </td>
    <td class="col-md-1"> {{ $Action -> ModuleID }} </td>
    <td class="col-md-5"> {{ $Action -> Description }} </td>
    <td class="col-md-1"><a href="/admin/action/edit/{{ $Action -> AuthorizationID }}"> Edit </a> </td>
    <td class="col-md-1"><a onclick="return deleteConfirm('Ban co muon xoa Action nay khong')" href="/admin/action/delete/{{ $Action -> AuthorizationID }}"> Delete </a> </td>                        
  </tr>
  <?php $STT++;?>
  @endforeach
</table>  

@stop