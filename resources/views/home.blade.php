<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="khanhbuino2" >

    <title>Đài Viễn Thông Hồ Chí Minh - Công Ty Hạ Tầng Mạng Miền Nam -
        @yield('title')
    </title>

    <!-- Bootstrap Core CSS -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="{{ asset('css/sb-home.css') }}" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="{{ asset('css/home.css') }}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="{{ asset('font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div id="wrapper">
		<!-- Navigation -->
    @include('include.home_menu')	
		<div id="page-wrapper">
			<!-- chi chinh sua tu day -->				
			<div class="container-fluid">
        @section('main_contain_view')
          This is the master sidebar.
        @show
			</div>
			<!-- chi chinh sua tu day -->
    		<!-- /.container-fluid -->
		</div>
 		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->

    <!-- jQuery -->
    <script src="{{ asset('js/jquery.js') }}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>  
    <script src="{{ asset('js/upFlashMessage.js') }}"></script>  

</body>

</html>
