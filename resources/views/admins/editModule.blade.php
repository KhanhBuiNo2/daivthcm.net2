@extends('admin')
@section('title', ' Quan tri User, Group, Menu, Authen ')
@section('main_contain_view')

<div class="row"> Module > ModuleEdit
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
              <label for="ModuleName"> Tên Module </label>
              <input type="text" class="form-control" id="ModuleName" name="ModuleName" value="{{ $module['ModuleName'] }}">
              <label for="Note"> Ghi chu</label>
              <textarea  class="form-control" id="Note" name="Note"> {{ $module['Note'] }} </textarea>
            </div>
            <input type="hidden" name="ModuleID" value='{!! $module['ModuleID'] !!}' >
            <input type="hidden" name="_token" value='{!! csrf_token() !!}' >
            <button type="submit" class="btn btn-default" value="88"> Thay doi </button>
        </form>
@stop