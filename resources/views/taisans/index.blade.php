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
  <input type="hidden" name="_token" value='{!! csrf_token() !!}'	 >
  <button type="submit" class="btn btn-default" value="88"> Search </button>
</form>

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
                <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

@stop