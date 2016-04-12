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
                    <th><input type="text" class="form-control" placeholder="TSCĐ" disabled></th>
                    <th><input type="text" class="form-control" placeholder="NGÀY" disabled></th>
                    <th><input type="text" class="form-control" placeholder="SỐ THẺ" disabled></th>
                    <th><input type="text" class="form-control" placeholder="TÊN CÔNG CỤ" disabled></th>
                    <th><input type="text" class="form-control" placeholder="S/N" disabled></th>
                    <th><input type="text" class="form-control" placeholder="NGÀY BBNT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="VỊ TRÍ LẮP ĐẶT" disabled></th>
                    <th><input type="text" class="form-control" placeholder="THEO SỔ SÁCH" disabled></th>
                    <th><input type="text" class="form-control" placeholder="THEO TTKK" disabled></th>
                    <th><input type="text" class="form-control" placeholder="CHÊNH LỆCH" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Ghi Chu" disabled></th>
                    <th><input type="text" class="form-control" placeholder="Tram" disabled></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($searchs as $search)
                <tr>
                    <td>{{$STT}}</td>
                    <td>{{$search['TSCD']}}</td>
                    <td>{{$search['Ngay']}}</td>
                    <td>{{$search['SoThe']}}</td>
                    <td>{{$search['Ten_Cong_Cu']}}</td>
                    <td>{{$search['S_N']}}</td>
                    <td>{{$search['Ngay_BBNT']}}</td>
                    <td>{{$search['ViTriLapDat']}}</td>
                    <td>{{$search['SoLuong_SS']}}</td>
                    <td>{{$search['SoLuong_TT']}}</td>
                    <td>{{$search['ChenhLech']}}</td>
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