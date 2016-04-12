@extends('taisan')
@section('title', ' Thong tin ca nha ')
@section('main_contain_view')

<div class="row"> Quan Ly Tai San - Cong Cu Lao Dong VTN
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
    <label for="search"> Tim kiem </label>
    <input type="text" class="form-control" id="search" name="search" value="">
  </div>
  <div class="form-group">
    <label for="tramid"> Tram </label>
    <select class="form-control" id="tramid" name="tramid">
        <option value="0">chon tram</option>
        <option value="Tram LAN">Tram LAN</option>
        <option value="Tram TGG">Tram TGG</option>
        <option value="Tram BTE">Tram BTE</option>
        <option value="Tram TNH">Tram TNH</option>
        <option value="Tram VTU">Tram VTU</option>
    </select>
    
  </div>
  <input type="hidden" name="_token" value='{!! csrf_token() !!}'    >
  <button type="submit" class="btn btn-default" value="88"> Search </button>
</form>
<?php if(!empty($searchs)) {
    $STT=1;
?>
<div class="row">
    <div class="panel panel-primary filterable taisan">
        <div class="panel-heading">
            <div>
                <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
            </div>
        </div>
        <table id="taisantable" class="table">
            <thead class="filters">
                <tr >
                    <th><input type="text" class="form-control" placeholder="STT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ten Cong Cu" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Don Vi Tinh" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Thoi Gian Su Dung" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Noi Dat" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Bo Phan Su Dung" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SoLuong_SS" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SoLuong_KK" disabled></th>
                    <th><input type="text" class="form-control" placeholder="ChenhLech_TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="HienTrang" disabled></th>
                    <th><input type="text" class="form-control" placeholder="GhiChu" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tram" disabled></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($searchs as $search)
                <tr>
                    <td>{{$STT}}</td>
                    <td>{{$search['TenCongCu']}}</td>
                    <td>{{$search['DonViTinh']}}</td>
                    <td>{{$search['ThoiGianSuDung']}}</td>
                    <td>{{$search['NoiDat']}}</td>
                    <td>{{$search['BoPhanSuDung']}}</td>
                    <td>{{$search['SoLuong_SS']}}</td>
                    <td>{{$search['SoLuong_KK']}}</td>
                    <td>{{$search['ChenhLech_TT']}}</td>
                    <td>{{$search['HienTrang']}}</td>
                    <td>{{$search['GhiChu']}}</td>
                    <td>{{$search['TramID']}}</td>
                    <?php $STT++; ?>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<?php } ?>

@stop