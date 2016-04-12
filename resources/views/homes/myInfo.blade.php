@extends('home')
@section('title', ' Thong tin ca nha ')
@section('main_contain_view')

<div class="row"> User > MyInfo > {{$MyInfo['Username']}}
  <hr>        
</div>
<form action ="" method="POST">
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
    <label for="FullName"> Họ Tên </label>
    <input type="text" class="form-control" id="FullName" name="FullName" value="{{$MyInfo['FullName']}}">
  </div>
  <div class="form-group">
    <label for="Email"> Email </label>
    <input type="email" class="form-control" id="Username" name="Email" value="{{$MyInfo['Email']}}">
  </div>
  <div class="form-group">
    <label for="Phone"> Phone </label>
    <input type="text" class="form-control" id="Phone" name="Phone" value="{{$MyInfo['Phone']}}">
  </div>
  <div class="form-group">
    <label for="Gender"> Gender </label>
    <input type="text" class="form-control" id="Gender" name="Gender" value="{{$MyInfo['Gender']}}">
  </div>
  <div class="form-group">
    <label for="Birthday"> Birthday </label>
    <?php 
      $birthday = date("d/m/Y",strtotime($MyInfo['Birthday']));
    ?>
    <input type="date" class="form-control" id="Birthday" name="Birthday" value="{{ $birthday }}">
  </div>
  <input type="hidden" name="UserID" value='{!! $MyInfo['UserID']!!}' >
  <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
  <button type="submit" class="btn btn-default" value="88"> Cap nhat thong tin </button>
</form>
@stop