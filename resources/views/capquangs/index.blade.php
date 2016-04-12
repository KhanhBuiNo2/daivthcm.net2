@extends('capquang')
@section('title', ' Quan ly cap quang ')
@section('main_contain_view')
<br/>
<br/>
<div class="row"> Quan Ly Cap Quang Khu Vuc Dai VTHCM - Tim kiem
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
    <label for="StatusID"> Trang Thai </label>
    <select class="form-control" id="StatusID" name="StatusID">
    <option value="0">Cho Trang Thai</option>
    <option value="1">New</option>
    <option value="2">Da xem</option>
    <option value="3">Duyet</option>
    </select>
  </div>
  <div class="form-group">
    <label for="Date"> ThoiGian </label>
    <input type="date" class="form-control" id="Date" name="Date" value="">
  </div>

  <input type="hidden" name="_token" value='{!! csrf_token() !!}'	 >
  <button type="submit" class="btn btn-default" value="88"> Search </button>
</form>
<hr>
<div class="row">
    <table class="table-bordered">
        <tr >
            <th class="col-md-1">STT</th>
            <th class="col-md-3">Ten Phuong An</th>
            <th class="col-md-2">Nguoi Bao Cao</th>
            <th class="col-md-1">Thoi gian</th>
            <th class="col-md-1">Trang Thai</th>
            <th class="col-md-2">Ghi Chu</th>
            <td class="col-md-1">Edit</td>
        </tr>
        <tr>
            <td class="col-md-1">1</td>
            <td class="col-md-3">Mark</td>
            <td class="col-md-2">Otto</td>
            <td class="col-md-1">@mdo</td>
            <td class="col-md-1">1</td>
            <td class="col-md-2">1</td>
            <td class="col-md-1">Edit</td>
        </tr>
    </table>

</div>

@stop