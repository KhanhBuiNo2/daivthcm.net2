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
  <input type="hidden" name="_token" value='{!! csrf_token() !!}'	 >
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
                    <th><input type="text" class="form-control" placeholder="Ten Hang Ton Kho" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ma So" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Don Vi Tinh Luong" disabled></th>
                    <th><input type="text" class="form-control" placeholder="So Luong KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Don Gia KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien KT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="So Luong TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Don Gia TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien TT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="So Luong HH" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Don Gia HH" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien HH" disabled></th>
                    <th><input type="text" class="form-control" placeholder="So Luong CL" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tien CL" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ghi Chu" disabled></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($searchs as $search)
                <tr>
                    <td>{{$STT}}</td>
                    <td>{{$search['TenHangTonKho']}}</td>
                    <td>{{$search['MaSo']}}</td>
                    <td>{{$search['DonViTinh']}}</td>
                    <td>{{$search['SoLuong_KT']}}</td>
                    <td>{{$search['DonGia_KT']}}</td>
                    <td>{{$search['Tien_KT']}}</td>
                    <td>{{$search['SoLuong_TT']}}</td>
                    <td>{{$search['DonGia_TT']}}</td>
                    <td>{{$search['Tien_TT']}}</td>
                    <td>{{$search['SoLuong_HH']}}</td>
                    <td>{{$search['DonGia_HH']}}</td>
                    <td>{{$search['Tien_HH']}}</td>
                    <td>{{$search['DonGia_CL']}}</td>
                    <td>{{$search['Tien_CL']}}</td>
                    <td>{{$search['GhiChu']}}</td>
                    <?php $STT++; ?>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<?php } ?>

@stop