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
        <?php 
          use App\Admin;
          $Is_Admin = session()->get('is_admin');
          if(!empty($Is_Admin))
          { 
        ?>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-right top-nav">
          <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quản Trị User</a>
                <ul class="dropdown-menu">
                    <li><a href="/admin/user/list">Danh sách user</a></li>
                    <li><a href="/admin/user/add">Tạo user</a></li>
                </ul>                  
          </li>
          <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quản Trị Group</a>
                <ul class="dropdown-menu">
                    <li><a href="/admin/group/list">Danh sách Group</a></li>
                    <li><a href="/admin/group/add">Tạo Group</a></li>
                </ul>                  
          </li>
          <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quản Trị Menu</a>
                <ul class="dropdown-menu">
                    <li><a href="/admin/menu/list">Danh sách menu</a></li>
                    <li><a href="/admin/menu/add">Tạo menu</a></li>
                </ul>                  
          </li>
          <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Authorization</a>
                <ul class="dropdown-menu">
                  <li><a href="/admin/module">Module</a></li>
                  <li><a href="/admin/action">Action</a></li>
                </ul>                  
          </li>


          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> {{ session()->get('login_user') }} 
            <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li>
                <a href="/" target="blank"><i class="fa fa-fw fa-user"></i>Home</a>
              </li>
              <li>
                <a href="/admin/user/myInfo"><i class="fa fa-fw fa-user"></i>Thông tin</a>
              </li>
              <li>
                <a href="/admin/user/changeMyPassword"><i class="fa fa-fw fa-user"></i>Đổi Password</a>
              </li>
              <li>
                <a href="/user/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
              </li>
              </ul>
          </li>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
      <ul class="nav navbar-nav side-nav">
        <li class="active">
          <a href="/admin/user/list"> Danh sách user</a>
        </li>
        <li class="active">
          <a href="/admin/user/add"> Tạo user </a>
        </li>
        <li class="active">
          <a href="/admin/group/list"> Danh sách group</a>
        </li>
        <li class="active">
          <a href="/admin/group/add"> Tạo group </a>
        </li>
        <li class="active">
          <a href="/admin/menu/list"> Danh sách menu</a>
        </li>
        <li class="active">
          <a href="/admin/menu/add"> Tạo menu</a>
        </li>
        <li class="active">
          <a href="/admin/module"> Danh sách Module</a>
        </li>
        <li class="active">
          <a href="/admin/module/add"> Tạo Module</a>
        </li>
        <li class="active">
          <a href="/admin/action"> Danh sách Action</a>
        </li>
        <li class="active">
          <a href="/admin/action/add"> Tạo Action</a>
        </li>
        <li class="active">
          <a href="/admin/route"> Route </a>
        </li>
      </ul>
      <?php 
        }
        else
        {
          echo '
            <ul class="nav navbar-nav side-nav">
              <li class="active">
                <a href="#"></a>
              </li>
              <li class="active">
                <a href="#"></a>
              </li>
            </ul>
          ';
        }
      ?>
</nav>
