<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Routing\Route;
use App\Http\Requests;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\addUserRequest;
use App\Http\Requests\addGroupRequest;
use App\Http\Requests\editGroupRequest;
use App\Http\Requests\addMenuRequest;
use App\Http\Requests\updateMyInfoRequest;
use App\Http\Requests\changeMyPasswordRequest;
use App\Http\Requests\addModuleRequest;
use App\Http\Requests\editModuleRequest;
use App\Http\Requests\addActionRequest;
use App\Http\Requests\editActionRequest;
use App\Http\Controllers\Controller;
use Hash;
use App\Admin;
use App\Model\User;
use App\Model\Menu;
use App\Model\Group;
use App\Model\Module;
use App\Model\Authorization;
use App\Model\GroupAuthorization;            
class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admins.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getLogin(){
		if (session()-> has('login_userid')){
			if (session()-> has('is_admin')){
				return redirect() -> route('admin');
			}
			return redirect() -> route('home');
		}
        return view('admins.userlogin');
    }
    public function postLogin(LoginRequest $request){
        $Username = trim(Input::get('username'));
        $Password = Input::get('password') ;
        $user = Admin::getUserFromUsername($Username);
        if( !empty($user))
        {
            if(Hash::check($Password,$user -> Password))
            {   
                //dang nhap thanh cong
                session()->put('login_user', $user->Username);
                session()->put('login_userid', $user->UserID);
                session()->put('is_admin', $user->Is_Admin); 
                if($user->Is_Admin){
                    return redirect()->route('admin');       
                }
                else{
                    return redirect()->route('home');
                }
            }
            else
            {
                return redirect()->route('getLogin')->withErrors('Username / Password khong dung. Vui long nhap lai1');  
            }
        }
        else
        {
            return redirect()->route('getLogin')->withErrors('Username / Password khong dung. Vui long nhap lai');          
        }

    }
    public function logout(){
        session()->flush();
        return redirect()->route('home');
    }

    public function listUser(){
        return view('admins.listUser',['users' => Admin::getAllUser() ]);
    }

    public function addUser(){
        return view('admins.addUser');
    }
    public function postAddUser(addUserRequest $request ){
        $user = new User;
        $user -> Username = trim(Input::get('Username'));
        $user -> FullName = Input::get('FullName');   
        $user -> Password = Hash::make('123456');
        $user ->save();
        return redirect()->route('listUser')->with(['message_level' => 'success' ,'message' => 'Da tao thanh cong user ']);
    }
    public function getEditUser($userid){
        return view('admins.editUser',['user' => Admin::getUserInfoFromUserID($userid)]);
    }
    public function postEditUser(){
        $UserID = Input::get('UserID');
        $user = User::findOrFail($UserID);
        $user -> FullName = Input::get('FullName');
        $user ->save();
        return redirect()->route('listUser')->with(['message_level' => 'success' ,'message' => 'Da cap nhat thanh cong user ']);
    }
    public function deleteUser($userid){
        Admin::deleteUserFromUserID($userid);
        return redirect()->route('listUser')->with(['message_level' => 'warning' ,'message' => 'Da xoa thanh cong user ']);
    }
    public function resetUser($userid){
        $user = User::find($userid);
        $user -> Password = Hash::make('123456');
        $user -> save();
        return redirect()->route('listUser')->with(['message_level' => 'info' ,'message' => 'Da reset thanh cong user ']);   
    }

    //Thay doi thong tin user
    public function myInfo(){
        return view('admins.myInfo',[
                'MyInfo'    => Admin::getUserInfoFromUserID( session()->get('login_userid') ) 
            ]);
            
    }
    public function updateMyInfo(updateMyInfoRequest $request){
        $user = User::find(session() -> get('login_userid'));
        $birtharr = explode('/',Input::get('Birthday'));
        $birthday = $birtharr[2].'-'.$birtharr[1].'-'.$birtharr[0];
        if(!empty($user)){
            $user -> FullName = Input::get('FullName');
            $user -> Email = Input::get('Email');
            $user -> Phone = Input::get('Phone');
            $user -> Gender = Input::get('Gender');
            $user -> Birthday = $birthday;
            $user -> save();
            return redirect()->route('listUser');
        }
        return redirect()->back();
    }
    public function getChangeMyPassword(){
        return view('admins.changeMyPassword',[
                'MyInfo'    => Admin::getUserFromUsername( session() -> get('login_user') )
            ]);
    }
    public function postChangeMyPassword(changeMyPasswordRequest $request){
        $UserID = session()->get('login_userid');
        $User = User::find($UserID);
        if (Hash::check(Input::get('OldPassword'),$User ->Password ) ){
            $User -> Password = Hash::make(Input::get('NewPassword'));
            $User ->save();
            return redirect()->route('adm_home');        
        }
        else{
            return redirect()->back()->withErrors('Password khong dung. Vui long nhap lai');
        }

    }

//Phan quan tri cho group
    public function listGroup(){
        return view('admins.listGroup',['groups' => Admin::getAllGroup()]);
    }
    public function addGroup(){
        return view('admins.addGroup');
    }
    public function postAddGroup(addGroupRequest $request){
        $group = new Group;
        $group -> GroupName = Input::get('GroupName');
        $group -> save();
        return redirect()->route('listGroup')->with(['message_level' => 'success' ,'message' => 'Da tao group moi ']);
    }
    public function getEditGroup($groupid){
        return view('admins.editGroup',['group' => Admin::getGroupInfoFromGoupID($groupid)]);
    }
    public function postEditGroup(editGroupRequest $request){
        $group = Group::find(Input::get('GroupID'));
        $group -> GroupName = Input::get('GroupName');
        $group -> save();
        return redirect()->route('listGroup')->with(['message_level' => 'success' ,'message' => 'Da cap nhat lai ten group']);
    }
//phan quan tri group_users
    public function listGroupBaseUser($userid){
            return view('admins.listGroupBaseUser',['user' => Admin::getUserInfoFromUserID($userid),'unaddgroups' => Admin::getUnAddGroupFromUserID($userid),'groups' => Admin::getGroupFromUserID($userid)]);
    }
    public function addGroupBaseUser($userid){
        $selectedgroupid = Input::get('GroupID');
        if(!empty($selectedgroupid)){
            Admin::addGroupUser($selectedgroupid,$userid);
            return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da add group user']);
        }
        else return redirect() -> back() -> with(['message_level' => 'warning' ,'message' => 'Vui long chon group']);
    }
    public function addUserBaseGroup($groupid){
        $selecteduserid = Input::get('UserID');
        if(!empty($selecteduserid)){    
            Admin::addGroupUser($groupid,$selecteduserid);
            return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da add group user']);
        }
        else return redirect() -> back() -> with(['message_level' => 'warning' ,'message' => 'Vui long chon user']);

    }
    public function removeGroupBaseUser($groupid,$userid){
        Admin::removeGroupUser($groupid,$userid);
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da remove group khoi user']);        
    }
    public function removeUserBaseGroup($userid,$groupid){
        Admin::removeGroupUser($groupid,$userid);
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da remove user khoi group']);     
    }
    public function listUserBaseGroup($groupid){
        return view('admins.listUserBaseGroup',['group' =>Admin::getGroupInfoFromGoupID($groupid),'users' =>Admin::getUserFromGroupID($groupid),'unaddusers' => Admin::getUnAddUserFromGroupID($groupid) ]) ;
    }
//Phan quan tri cho menu
    public function listMenu(){
        return view('admins.listMenu',['menus' => Admin::getAllMenu()] );
    }
    public function getAddMenu(){
        return view('admins.addMenu',['menus' => Admin::getAllMenu()]);
    }
    public function postAddMenu(addMenuRequest $request){
        $menu = new Menu;
        $menutitle = Input::get('MenuTitle');
        $menu -> MenuTitle = $menutitle;
        $menu -> MenuParent = Input::get('MenuParent');
        $menu -> MenuLevel = ( (Input::get('MenuParent') == 0) ? 1 : (Admin::getMenuFromMenuID(Input::get('MenuParent')))['MenuLevel'] +1 );
        $menu -> MenuPosition = 'x'.Input::get('MenuPosition');
        $menu -> MenuURL = Input::get('MenuURL');
        $menu ->save();
        return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da tao thanh cong menu ']);  
    }
    /*
    Xoa menu cha se xoa luon cac menu con
    */
    public function deleteMenu($menuid){
        Admin::deleteMenu($menuid);
        return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da xoa thanh cong menu']);                    
    }
    public function getEditMenu($menuid){
        return view('admins.getEditMenu',['editmenu' => Admin::getMenuFromMenuID($menuid), 'menus' => Admin::getAllMenu() ]);
    }
    public function postEditMenu($menuid){
        $menu = Menu::find($menuid);
        if(!empty($menu)){
            $menu['MenuTitle'] =  Input::get('MenuTitle');
            $menu['MenuParent'] = Input::get('MenuParent');
            $menu['MenuPosition'] = 'x'.Input::get('MenuPosition');
            $menu['MenuURL'] = Input::get('MenuURL');
            $menu['Is_Free'] = Input::get('Is_Free') != NULL ? 1 : 0 ;
            $menu['MenuLevel'] = Input::get('MenuLevel');
            $menu -> save();
            return redirect() -> route('listMenu');  
        }
    }
    public function listMenuBaseGroup($groupid){
        return view('admins.listMenuBaseGroup',['menus' => Admin::getAllMenuFromGroupID($groupid),
                                                    'basegroup' => Admin::getGroupInfoFromGoupID($groupid),
                                                    'unaddmenus' => Admin::getUnAddMenuFromGroupID($groupid)       
                                                    ]);
    }
    public function addMenuBaseGroup($groupid){
        $selectedmenuid = Input::get('MenuID');
        if(!empty($selectedmenuid)){
            Admin::addMenuGroup($selectedmenuid,$groupid);
            return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da add menu group']);
        }
        else return redirect() -> back() -> with(['message_level' => 'warning' ,'message' => 'Vui long chon menu']);                
    }
    public function removeMenuBaseGroup($menuid,$groupid){
        Admin::removeMenuGroup($menuid,$groupid);
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da remove menu khoi group']);
    }

    public function listGroupBaseMenu($menuid){
        $basemenu = Admin::getMenuFromMenuID($menuid);
        if($basemenu['Is_Free']) { 
            return redirect()   ->route('editMenu',[$basemenu['MenuID']])
                                ->with(['message_level' => 'warning' ,'message' => 'Menu nay la Free Menu. Muon add/remove group vui long bo Is_Free']);  
        }
        else{
            return view('admins.listGroupBaseMenu',[
            'basemenu' => $basemenu,
            'groups'   => Admin::getAllGroupFromMenuID($menuid),
            'unaddgroups'=>Admin::getUnAddGroupFromMenuID($menuid)
            ]);    
        } 
        
    }
    public function addGroupBaseMenu($menuid){
        $selectgroupid = Input::get('GroupID');
        if(!empty($selectgroupid)){
            Admin::addMenuGroup($menuid,$selectgroupid);
            return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da add menu group']);
        }
        else return redirect() -> back() -> with(['message_level' => 'warning' ,'message' => 'Vui long chon group']);    
    }
    public function removeGroupBaseMenu($groupid,$menuid){
        Admin::removeMenuGroup($menuid,$groupid);
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da remove group khoi menu']);
    }
    // Quan tri phan Module
    public function listModule(){
        return view('admins.listModule',['modules' => Admin::getAllModule()]);
    }
    public function getAddModule(){
        return view('admins.addModule',['modules' => Admin::getAllModule()]);
    }   
    public function postAddModule(addModuleRequest $request){
        $module = new Module;
        $module -> ModuleName = Input::get('ModuleName');
        $module -> Note = Input::get('Note');   
        $module -> save();
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da tao thanh cong module']);
    }
    public function getEditModule($ModuleID){
        return view('admins.editModule',['module' => Admin::getModuleFromModuleID($ModuleID)]);
    }
    public function postEditModule( editModuleRequest $request){
        $ModuleID = Input::get('ModuleID');
        $module = Module::find($ModuleID);
        if( ($module -> ModuleName != Input::get('ModuleName'))||($module -> Note != Input::get('Note')) ){
            $module -> ModuleName = Input::get('ModuleName');
            $module -> Note = Input::get('Note');
            $module ->save();
            return redirect()->route('addModule')->with(['message_level' => 'success' ,'message' => 'Da cap nhat thanh cong module ']);
        }
        else{
            return redirect()->back();       
        }
        
    }

    public function deleteModule($ModuleID){
        if(empty(Admin::getActionFromModuleID($ModuleID))){
            Module::destroy($ModuleID);
            return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da xoa thanh cong     module ']);
        }
        else {
            return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Module con chua Action! Vui long xoa het Action ']);    
        }
        // chua viet phan else
    }
    //Quan tri Aciton
    public function listAction(){
        return view('admins.listAction',['actions' => Admin::getAllAction()]);
    }
    public function getAddAction(){
        return view('admins.addAction',[
                'Modules'   => Admin::getAllModule(),
                'Actions'   => Admin::getAllAction(),
            ]);
    }
    public function postAddAction( addActionRequest $request ){
        if(empty(Admin::getActionFromModuleIDAndActionName( Input::get('ModuleID'), Input::get('Method') ))){
            $action = new Authorization;
            $action -> ModuleID = Input::get('ModuleID');
            $action -> Method   = Input::get('Method');
            $action -> Description = Input::get('Description');
            $action -> save();
            return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da tao xong Action ']); 
        }
        else return redirect() -> back() ->with(['message_level' => 'warning' ,'message' => 'Action da ton tai ']);;
    }
    public function deleteAction($ActionID){
        Authorization::destroy($ActionID);
        return redirect() -> back() ->with(['message_level' => 'success' ,'message' => 'Da xoa xong Action ']);
    }
    public function getEditAction($ActionID){
        return view('admins.editAction',[
                'EditAction'    => Authorization::find($ActionID),
                'Modules'       => Admin::getAllModule(),
                'Actions'       => Admin::getAllAction()   
            ]);
    }
    public function postEditAction(editActionRequest $request,$ActionID){
        $action = Admin::getActionFromActionID( Input::get('AuthorizationID'));
        //xet truong hop Description khong giong nhau
        if( 
            ($action['Description'] == Input::get('Description'))
            &&(!empty(Admin::getActionFromModuleIDAndActionName( Input::get('ModuleID'),Input::get('Method') )))
            )
            return redirect() -> back() ->with(['message_level' => 'warning' ,'message' => 'Action da ton tai ']);
        //Truong hop Description khac ta co        
        if( ($action['Method'] != Input::get('Method'))
                ||($action['ModuleID'] != Input::get('ModuleID'))
                ||($action['Description'] != Input::get('Description'))  ){
            $editAction = Authorization::find( Input::get('AuthorizationID'));
            $editAction -> Method = Input::get('Method');
            $editAction -> ModuleID = Input::get('ModuleID');
            $editAction -> Description = Input::get('Description');
            $editAction -> save();
            return redirect() -> route('addAction') ->with(['message_level' => 'success' ,'message' => 'Da cap nhat xong Action ']);
        }
        return redirect()->back();    
    }
    //Quan tri Module_Action(Authentications)
    public function listActionBaseModule($ModuleID){
        return view('admins.listActionBaseModule',[
				'module'  => Admin::getModuleFromModuleID($ModuleID),	
                'actions' => Admin::getAllActionFromModuleID($ModuleID)
            ]);
    }
    //Quan tri GroupAuthorization
    public function listActionBaseGroup($GroupID){
        return view('admins.listActionBaseGroup',[
            'group'   => Admin::getGroupInfoFromGoupID($GroupID),
            'actions' => Admin::getActionFromGroupID($GroupID),
            'unaddactions' => Admin::getUnAddActionFromGroupID($GroupID)
        ]);
    }
    public function addActionBaseGroup($GroupID){
        Admin::addGroupAuthorization($GroupID, Input::get('AuthorizationID'));
        return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da them Action vao Group ']);
    }
    public function removeActionBaseGroup($AuthorizationID,$GroupID){
        Admin::removeGroupAuthorization($GroupID, $AuthorizationID);
        return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da remove Action khoi Group ']);
    }

    public function listGroupBaseAction($ActionID){
        return view('admins.listGroupBaseAction',[
            'action'    => Admin::getActionFromActionID($ActionID),
            'groups'    => Admin::getGroupFromAuthorizationID($ActionID),
            'unaddgroups'=> Admin::getUnAddGroupFromAuthorizationID($ActionID)
            ]);
    }
    public function addGroupBaseAction($ActionID){
        if(!empty(Input::get('GroupID'))){
            $ret = new GroupAuthorization;
            $ret -> AuthorizationID = $ActionID;
            $ret -> GroupID = Input::get('GroupID');
            $ret -> save();
            return redirect() -> back();     
        }
        return redirect() -> back();
    }
    public function removeGroupBaseAction($GroupID,$ActionID){
        Admin::removeGroupAuthorization($GroupID, $ActionID);
        return redirect() -> back() -> with(['message_level' => 'success' ,'message' => 'Da remove Group khoi Action ']);
    }

    public function listRoute(Route $route){
        $routeCollection = $route -> getRoutes();

        foreach ($routeCollection as $value) {
            echo ($value);
        }
    }
}
