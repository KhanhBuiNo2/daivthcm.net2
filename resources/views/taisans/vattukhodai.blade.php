@extends('taisan')
@section('title', ' Thong tin ca nha ')
@section('main_contain_view')

<div class="row"> Quan Ly Tai San - Cong Cu Kho Dai
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
                    <th><input type="text" class="form-control" placeholder="NgayNhap" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ma_Kho" disabled></th>
                    <th><input type="text" class="form-control" placeholder="TenHangTonKho" disabled></th>
                    <th><input type="text" class="form-control" placeholder="MaSo" disabled></th>
                    <th><input type="text" class="form-control" placeholder="DonViTinh" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SoLuong_KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="DonGia_KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien_KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Seri_KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SoLuong_TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="DonGia_TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien_TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SoLuong_CLL" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien CL" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ghi Chu" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tram" disabled></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($searchs as $search)
                <tr>
                    <td>{{$STT}}</td>
                    <td>{{$search['NgayNhap']}}</td>
                    <td>{{$search['Ma_Kho']}}</td>
                    <td>{{$search['TenHangTonKho']}}</td>
                    <td>{{$search['MaSo']}}</td>
                    <td>{{$search['DonViTinh']}}</td>
                    <td>{{$search['SoLuong_KT']}}</td>
                    <td>{{$search['DonGia_KT']}}</td>
                    <td>{{$search['Tien_KT']}}</td>
                    <td>{{$search['Seri_KT']}}</td>
                    <td>{{$search['SoLuong_TT']}}</td>
                    <td>{{$search['DonGia_TT']}}</td>
                    <td>{{$search['Tien_TT']}}</td>
                    <td>{{$search['SoLuong_CL']}}</td>
                    <td>{{$search['SoLuong_CL']}}</td>
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