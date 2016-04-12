@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/group"> Group</a> > Danh sách Action của group {{ $group['GroupName']  }}
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
    <label for="AuthorizationID"> Action </label>
    <select class="form-control" id="AuthorizationID" name="AuthorizationID">
      <option value="0"> Chọn Action </option>                
      @foreach ($unaddactions as $unaddaction)
      <option value="{{ $unaddaction -> AuthorizationID }}"> {{ $unaddaction -> Method }} - {{ $unaddaction -> ModuleID }}  </option>
      @endforeach
  </select>
  </div>
  <input type="hidden" name="GroupID" value='{!! $group['GroupID'] !!}' >
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Thêm </button>
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
    <th class="col-md-2"> Tên Action </th>
    <th class="col-md-4"> Ghi Chú </th>
    <th class="col-md-1"> Remove </th>                        
  </tr>
  <?php $STT =1; ?>
  @foreach ($actions as $action)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $action -> Method }} - {{ $action -> ModuleID }} </td>
    <td class="col-md-4"> {{ $action -> Description }} </td>
    <td class="col-md-1"><a onclick = "return deleteConfirm('Bạn có muốn remove action này khỏi group không')" href="/admin/group/removeActionBaseGroup/{{ $action -> AuthorizationID }}/{{ $group['GroupID'] }}"> Remove </a>
    </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
@stop