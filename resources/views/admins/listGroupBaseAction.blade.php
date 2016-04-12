@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> <a href="/admin/action"> Action</a> > Danh sách các group có thể thực hiện action {{ $action['Method'] }} - {{ $action['ModuleID'] }}
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
    <label for="GroupID"> Group </label>
    <select class="form-control" id="GroupID" name="GroupID">
      <option value="0"> Chọn Group </option>                
      @foreach ($unaddgroups as $unaddgroup)
      <option value="{{ $unaddgroup -> GroupID }}"> {{ $unaddgroup -> GroupName }} </option>
      @endforeach
  </select>
  </div>
  <input type="hidden" name="AuthorizationID" value='{!! $action['AuthorizationID'] !!}' >
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Them </button>
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
    <th class="col-md-2"> Tên Group </th>
    <th class="col-md-1"> Remove </th>                        
  </tr>
  <?php $STT =1; ?>
  @foreach ($groups as $group)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $group -> GroupName }} </td> 
    <td class="col-md-2"> <a onclick = "return deleteConfirm('Bạn có muốn remove group này khỏi action không')" href="/admin/action/removeGroupBaseAction/{{ $group -> GroupID }}/ {{$action['AuthorizationID']}}"> Remove </a> </td>
                         
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>
@stop