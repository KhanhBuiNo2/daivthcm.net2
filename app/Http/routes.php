<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
// test
Route::get('/test',function(){
	(App\pubMenu::getSubMenuFromUserIDAndMenuID(2,3));
});

/* route trang chu, se duoc chinh sua sau khi hoan thanh
Route::get('/', function () {
    return view('public');
});
*/
//route phan login va logout 
Route::get('user/login',[
	'as' => 'getLogin', 
	'uses' => 'AdminController@getLogin'
]);
Route::post('user/login',[
	'as' => 'postLogin',
	'uses' => 'AdminController@postLogin'
]);
Route::get('user/logout',[
	'uses' => 'AdminController@logout'
]);

//route phan trang chu
Route::match(['get', 'post'],'/', [	'as' => 'home',
    								'uses' => 'HomeController@index'
    								])->middleware(['FullRole']);
//Route home
Route::group(['prefix' => '/home', 'middleware' => 'FullRole'], function(){
	Route::match(['get', 'post'],'/', ['uses' => 'HomeController@index']);
	Route::group(['prefix' => '/user'], function(){
		Route::get('/logout',['uses' => 'HomeController@logout']);
		Route::get('/myInfo',['uses' => 'HomeController@myInfo']);
		Route::post('/myInfo',['uses' => 'HomeController@updateMyInfo']);
		Route::get('/changeMyPassword',['uses' => 'HomeController@getChangeMyPassword']);
		Route::post('/changeMyPassword',['uses' => 'HomeController@postChangeMyPassword']);
	});
});

//Route Admin: phan user, menu, group
Route::group(['prefix' => '/admin', 'middleware' => 'IsAdmin'], function(){
	Route::match(['get', 'post'],'/', [	'as' => 'admin',
    								'uses' => 'AdminController@index'
    								]);
	Route::group(['prefix' => '/user'], function(){
		Route::get('/',['uses' => 'AdminController@listUser']);
		Route::get('/list',['as' => 'listUser','uses' => 'AdminController@listUser']);
		Route::get('/add',['uses' => 'AdminController@addUser']);
		Route::post('/add',['uses' => 'AdminController@postAddUser']);
		Route::get('/edit/{userid}',['uses' => 'AdminController@getEditUser']);
		Route::post('/edit/{userid}',['uses' => 'AdminController@postEditUser']);
		Route::get('/delete/{userid}',['uses' => 'AdminController@deleteUser']);
		Route::get('/reset/{userid}',['uses' => 'AdminController@resetUser']);
		
		Route::get('/myInfo',['as'=>'adm_home' ,'uses' => 'AdminController@myInfo']);
		Route::post('/myInfo',['uses' => 'AdminController@updateMyInfo']);
		Route::get('/changeMyPassword',['uses' => 'AdminController@getChangeMyPassword']);
		Route::post('/changeMyPassword',['uses' => 'AdminController@postChangeMyPassword']);

		Route::get('listGroupBaseUser/{userid}',['uses' => 'AdminController@listGroupBaseUser']);
		Route::post('listGroupBaseUser/{userid}',['uses' => 'AdminController@addGroupBaseUser']);
		Route::get('removeGroupBaseUser/{groupid}/{userid}',['uses' => 'AdminController@removeGroupBaseUser']);
		Route::post('listMenuBaseUser/{userid}',['uses' => 'AdminController@addGroupBaseUser']);
	});
	Route::group(['prefix' => '/group'], function(){
		Route::get('/',['uses' => 'AdminController@listGroup']);
		Route::get('/list',['as' => 'listGroup','uses' => 'AdminController@listGroup']);
		Route::get('/add',['uses' => 'AdminController@addGroup']);
		Route::post('/add',['uses' => 'AdminController@postAddGroup']);
		Route::get('/edit/{groupid}',['uses' => 'AdminController@getEditGroup']);
		Route::post('/edit/{groupid}',['uses' => 'AdminController@postEditGroup']);
		Route::get('/delete/{groupid}',['uses' => 'AdminController@deleteGroup']);
		Route::get('/listUserBaseGroup/{groupid}',['uses' => 'AdminController@listUserBaseGroup']);
		Route::post('/listUserBaseGroup/{groupid}',['uses' => 'AdminController@addUserBaseGroup']);
		Route::get('removeUserBaseGroup/{userid}/{groupid}',['uses' => 'AdminController@removeUserBaseGroup']);
		//route lien quan toi phan them menu vao group
		Route::get('listMenuBaseGroup/{groupid}',['uses' => 'AdminController@listMenuBaseGroup']);
		Route::post('listMenuBaseGroup/{groupid}',['uses' => 'AdminController@addMenuBaseGroup']);
		Route::get('removeMenuBaseGroup/{menuid}/{groupid}',['uses' => 'AdminController@removeMenuBaseGroup']);
		//Route lien quan toi viec them Action vao Group
		Route::get('listActionBaseGroup/{GroupID}',['uses' => 'AdminController@listActionBaseGroup']);
		Route::post('listActionBaseGroup/{GroupID}',['uses' => 'AdminController@addActionBaseGroup']);
		Route::get('removeActionBaseGroup/{AuthorizationID}/{GroupID}',['uses' => 'AdminController@removeActionBaseGroup']);

	});
	Route::group(['prefix' => '/menu'], function(){
		Route::get('/',['uses' => 'AdminController@listMenu']);
		Route::get('/list',['as' => 'listMenu','uses' => 'AdminController@listMenu']);
		Route::get('/add',['uses' => 'AdminController@getAddMenu']);
		Route::post('/add',['uses' => 'AdminController@postAddMenu']);
		Route::get('/delete/{menuid}',['uses' => 'AdminController@deleteMenu']);
		Route::get('/edit/{menuid}',['as' => 'editMenu','uses' => 'AdminController@getEditMenu']);
		Route::post('/edit/{menuid}',['uses' => 'AdminController@postEditMenu']);
		Route::get('/listGroupBaseMenu/{menuid}',['uses' => 'AdminController@listGroupBaseMenu']);
		Route::post('/listGroupBaseMenu/{menuid}',[ 'uses' => 'AdminController@addGroupBaseMenu']);
		Route::get('/removeGroupBaseMenu/{groupid}/{menuid}',['uses' => 'AdminController@removeGroupBaseMenu']);
	});
	Route::group(['prefix' => '/module'], function(){
		Route::get('/',['as' => 'listModule','uses' => 'AdminController@listModule']);
		Route::get('/add',['as' => 'addModule','uses' => 'AdminController@getAddModule']);
		Route::post('/add',['uses' => 'AdminController@PostAddModule']);

		Route::get('/edit/{ModuleID}',['as' => 'editModule','uses' => 'AdminController@getEditModule']);
		Route::post('/edit/{ModuleID}',['uses' => 'AdminController@postEditModule']);

		Route::get('/delete/{ModuleID}',['uses' => 'AdminController@deleteModule']);
		Route::get('/listActionBaseModule/{ModuleID}',['uses' => 'AdminController@listActionBaseModule']);
	});
	Route::group(['prefix' => '/action'], function(){
		Route::get('/',['as' => 'listAction','uses' => 'AdminController@listAction']);
		Route::get('/add',['as' => 'addAction','uses' => 'AdminController@getAddAction']);
		Route::post('/add',['uses' => 'AdminController@PostAddAction']);

		Route::get('/edit/{ActionID}',['as' => 'editModule','uses' => 'AdminController@getEditAction']);
		Route::post('/edit/{ActionID}',['uses' => 'AdminController@postEditAction']);

		Route::get('/delete/{ActionID}',['uses' => 'AdminController@deleteAction']);
		Route::get('/listGroupBaseAction/{ActionID}',['uses' => 'AdminController@listGroupBaseAction']);
		Route::post('/listGroupBaseAction/{ActionID}',['uses' => 'AdminController@addGroupBaseAction']);
		Route::get('/removeGroupBaseAction/{GroupID}/{ActionID}',['uses' => 'AdminController@removeGroupBaseAction']);
	});
	Route::group(['prefix' => '/route'], function(){
		Route::get('/',['as' => 'listRoute','uses' => 'AdminController@listRoute']);
	});

});
//End Route Admin: phan user, menu, group


//Route Quan Ly Ky Thuat
Route::group(['prefix' => '/kythuat', 'middleware' => 'ModuleFullRole'], function(){
	//route tongdai
	Route::group(['prefix' => '/tongdai','middleware' => 'LeftMenu:tongdai'], function(){
		Route::get('/',['uses' => 'TongDaiController@index']);
		Route::group(['prefix' => '/sodohethong'], function(){
			Route::get('/{idhethong}',['uses' => 'TongDaiController@SoDoHeThong']);
			Route::get('/add',['uses' => 'TongDaiController@getAddMenu']);
			Route::post('/add',['uses' => 'TongDaiController@postAddMenu']);
			Route::get('/delete/{menuid}',['uses' => 'TongDaiController@deleteMenu']);
			Route::get('/edit/{menuid}',['as' => 'editMenu','uses' => 'TongDaiController@getEditMenu']);
			Route::post('/edit/{menuid}',['uses' => 'TongDaiController@postEditMenu']);
			Route::get('/listGroupBaseMenu/{menuid}',['uses' => 'TongDaiController@listGroupBaseMenu']);
			Route::post('/listGroupBaseMenu/{menuid}',[ 'uses' => 'TongDaiController@addGroupBaseMenu']);
			Route::get('/removeGroupBaseMenu/{groupid}/{menuid}',['uses' => 'TongDaiController@removeGroupBaseMenu']);
		});
	});	
});
//End Route Quan Ly Ky Thuat



//Route Quan Ly Tai San
Route::group(['prefix' => '/taisan', 'middleware' => 'ModuleFullRole'], function(){
	Route::get('/',['uses' => 'TaiSan\TaiSanController@index']);
	
	Route::group(['prefix' => '/vattucongcukhodai','middleware' => 'LeftMenu:vattucongcukhodai'], function(){
		Route::get('/',['uses' => 'TaiSan\TaiSanController@vattucongcukhodai']);
		Route::post('/',['uses' => 'TaiSan\TaiSanController@searchvattucongcukhodai']);

	});
	
	Route::group(['prefix' => '/vattucongcumodemvtn','middleware' => 'LeftMenu:vattucongcukhodai'], function(){	
		Route::get('/',['uses' => 'TaiSan\TaiSanController@vattucongcumodemvtn']);
		Route::post('/',['uses' => 'TaiSan\TaiSanController@searchvattucongcumodemvtn']);
		
	});
	
	Route::group(['prefix' => '/vattucongculaodongvtn','middleware' => 'LeftMenu:vattucongculaodongvtn'], function(){
		Route::get('/',['uses' => 'TaiSan\TaiSanController@vattucongculaodongvtn']);
		Route::post('/',['uses' => 'TaiSan\TaiSanController@searchvattucongculaodongvtn']);

	});
	
	Route::group(['prefix' => '/vattukhodai','middleware' => 'LeftMenu:vattukhodai'], function(){		
		Route::get('/',['uses' => 'TaiSan\TaiSanController@vattukhodai']);
		Route::post('/',['uses' => 'TaiSan\TaiSanController@searchvattukhodai']);

	});
	
	Route::group(['prefix' => '/vattutaisanvtn2','middleware' => 'LeftMenu:vattutaisanvtn2'], function(){		
		Route::get('/',['uses' => 'TaiSan\TaiSanController@vattutaisanvtn2']);
		Route::post('/',['uses' => 'TaiSan\TaiSanController@searchvattutaisanvtn2']);

	});			
});
//End Route Quan Ly Tai San

//Route Quan Ly Cap Quang
Route::group(['prefix' => '/capquang', 'middleware' => 'ModuleFullRole'], function(){
	Route::get('/',['uses' => 'CapQuangController@index']);
	Route::group(['prefix' => '/phuongan'], function(){		
		Route::get('/',['uses' => 'CapQuangController@listPhuongAn']);
		Route::post('/',['uses' => 'CapQuangController@searchPhuongAn']);
		Route::get('/baocao',['uses' => 'CapQuangController@getAddPhuongAn']);
		Route::post('/baocao',['uses' => 'CapQuangController@postAddPhuongAn']);
		Route::get('/duyet/{PhuongAnID}',['uses' => 'CapQuangController@commitPhuongAn']);
		Route::get('/chinhsua/{PhuongAnID}',['uses' => 'CapQuangController@getEditPhuongAn']);
		Route::post('/chinhsua/{PhuongAnID}',['uses' => 'CapQuangController@postEditPhuongAn']);
	});		
});