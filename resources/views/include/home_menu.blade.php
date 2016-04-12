<?php
  use App\Admin;
  use App\pubMenu;
  $UserID = session() -> get('login_userid');
  $TopMenus = session()->get('TopMenus');
  if(!empty($TopMenus))
  {
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="http://daivthcm.net2">VNPT-NET2</a>
        </div>
        <!-- Top Menu Items -->
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-right top-nav">
          @foreach ($TopMenus as $menu) 
            <?php 
              if(isset($menu['ChildMenu'])) $SubMenu = $menu['ChildMenu']; 
            ?>
            @if(!empty($SubMenu))
              <li class="dropdown">
                <a href="{{ $menu['MenuURL'] }}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> {{ $menu['MenuTitle'] }} </a>
                <ul class="dropdown-menu">
                  @foreach($SubMenu as $submenu)
                    <li><a href="{{ $submenu['MenuURL'] }}"> {{ $submenu['MenuTitle'] }} </a></li>
                  @endforeach
            </ul>
          </li>
            @else
              <li>
                <a href="{{ $menu['MenuURL'] }}">{{ $menu['MenuTitle'] }}</a>
              </li>
            @endif
          @endforeach                  
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> {{ session()->get('login_user') }} 
            <b class="caret"></b></a>
            <ul class="dropdown-menu">
              @if (session()->get('is_admin') ==1)
              <li>
                <a href="/admin" target="blank"><i class="fa fa-fw fa-user"></i> Admin</a>
              </li>
              @endif
              <li>
                <a href="/home/user/myInfo"><i class="fa fa-fw fa-user"></i> Thông tin</a>
              </li>
              <li>
                <a href="/home/user/changeMyPassword"><i class="fa fa-fw fa-user"></i> Đổi Password</a>
              </li>
              <li>
                <a href="/home/user/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
              </li>
              </ul>
          </li>
        </ul>
      </div>
      <!--
      <ul class="nav navbar-nav side-nav">
        <li class="active">
          <a href=" "> </a>
        </li>
      </ul>
      -->
    </nav>
<?php 
  }
  else
  {
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="index.html">VNPT-NET2</a>
        </div>
        <!-- Top Menu Items -->
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-right top-nav">
          <?php 
            $Menu = Admin::getFreeMenu();
          ?>
            @foreach ($Menu as $menu) 
            <?php 
              $SubMenu = Admin::getFreeSubMenuFromMenuID($menu->MenuID);
            ?>
            @if(!empty($SubMenu))
              <li class="dropdown">
                <a href="{{ $menu -> MenuURL }}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> {{ $menu -> MenuTitle }} </a>
                <ul class="dropdown-menu">
                  @foreach($SubMenu as $submenu)
                    <li><a href="{{ $submenu -> MenuURL }}"> {{ $submenu -> MenuTitle }} </a></li>
                  @endforeach
            </ul>
          </li>
            @else
              <li>
                <a href="{{ $menu -> MenuURL }}">{{ $menu -> MenuTitle }}</a>
              </li>
            @endif
          @endforeach 
        </ul>
      </div>
      <!-- /.navbar-collapse -->  
    </nav>
<?php 
  }
?>