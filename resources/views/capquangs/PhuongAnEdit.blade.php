@extends('capquang')
@section('title', ' Quan ly cap quang ')
@section('main_contain_view')
<br/>
<br/>
<div class="row"> Quan Ly Cap Quang Khu Vuc Dai VTHCM - Bao cao phuong an
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
    <label for="TenPhuongAn"> Ten Phuong An </label>
    <input type="text" class="form-control" id="TenPhuongAn" name="TenPhuongAn" value="">
  </div>
  <div class="form-group">
    <label for="File">File bao cao</label>
    <input type="file" id="File">
  </div>
  <!--
  Khong mo CKEditor len
  <div class="form-group">
    <label for="Date"> Noi dung </label>
    <textarea id="NoiDung" name="NoiDung" rows="10" class="form-control ckeditor" placeholder="Write your message.."></textarea>
  </div>
  -->
  <input type="hidden" name="_token" value='{!! csrf_token() !!}'    >
  <button type="submit" class="btn btn-default" value="88"> Tao </button>
</form>
@stop