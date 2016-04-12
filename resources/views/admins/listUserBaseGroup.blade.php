@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')
<div class="row"> <a href="/admin/group"> Group </a> > Danh sách user có trong group > {{$group['GroupName']}}
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
      <label for="UserID"> Họ tên </label>
      <select class="form-control" id="UserID" name="UserID">         
        <option value="0">Chon họ tên</option>
        @foreach($unaddusers as $unadduser) 
        <option value="{{$unadduser -> UserID}}">{{$unadduser -> FullName}} - {{$unadduser -> Username}}</option>
        @endforeach
      </select>
    </div>
    <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
    <button type="submit" class="btn btn-default" value="88"> Thêm user </button>
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
    <th class="col-md-2"> Username </th>
    <th class="col-md-2"> Họ tên </th>
    <th class="col-md-1"> Remove </th>                         
  </tr>
  <?php $STT =1; ?>
  @foreach ($users as $user)
  <tr>
    <td class="col-md-1"> {{ $STT }} </td>
    <td class="col-md-2"> {{ $user -> Username }} </td>
    <td class="col-md-2"> {{ $user -> FullName }} </td>
    <td class="col-md-1"> <a onclick = "return deleteConfirm('Ban co muon remove user nay khoi group khong')" href="/admin/group/removeUserBaseGroup/{{ $user -> UserID }}/{{ $group['GroupID'] }}"> Remove </a> </td>                        
  </tr>
  <?php $STT++; ?>
  @endforeach
</table>

@stop