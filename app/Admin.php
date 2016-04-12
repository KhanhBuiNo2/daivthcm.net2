<?php

namespace App;
use App\Model\User;
use App\Model\GroupUser;
use App\Model\Group;
use App\Model\Menu;
use App\Model\Module;
use App\Model\Authorization;
use App\Model\GroupAuthorization;
use App\Model\MenuGroup;
use DB;	
use Illuminate\Database\Eloquent\Model;


class Admin extends Model
{
    /*
        Quan tri User
    */
    public static function getUserInfoFromUserID($userID){
    	return User::findOrFail($userID)->toArray();
    }
    public static function getAllUser(){
    	return User::all()->toArray();
    }
    public static function getUserFromUserName($UserName){
    	$users = DB::table('users') 
    					->where('UserName',$UserName)
    					->first();				
        return $users;
    }
    public static function updateUser($data){
    	$UserID = $data['UserID'];
    	$user = User::find($UserID);
    	$user -> Username = $data['Username'];
    	$user -> Password = $data['Password'];
    	$user -> Email = $data['Email'];
    	$user -> DeparmentID = $data['DepartmentID'];
    	$user -> FullName = $data['FullName'];
    	$user -> Gender = $data['Gender'];
    	$user -> Birthday = $data['Birthday'];
    	return $user -> save(); 
    }
    public static function deleteUserFromUserID($UserID){
        $groupusers = GroupUser::select('GroupUserID')
                        ->where('UserID','=',$UserID)
                        ->get()
                        ->toArray();
        if(!empty($groupusers)){
            foreach ($groupusers as $groupuser){
                GroupUser::destroy($groupuser['GroupUserID']);
            }
        }
    	return User::destroy($UserID);
    }


    /*
    Quan tri Group
    */
    public static function getGroupInfoFromGoupID($GroupID){
    	return Group::find($GroupID)->toArray();
    }
    public static function getAllGroup(){
    	return Group::all() ->toArray();
    }
    public static function getGroupFromGroupName($GroupName){
    	$group = DB::table('groups')
    				->find('GroupName',$GroupName)
    				->first();
    	return $group;
    }
    public static function deleteGroupFromGroupID($GroupID){
    	return Group::destroy($GroupID);
    }
    public static function updateGroup($data){
    	$group = Group::find($data['GroupID']);
    	$group -> GroupName = $data['GroupName'];
    	return $group -> save(); 
    }
    
    //quan tri menu
    public static function getAllMenu(){
        $ret = DB::table('menus')
                    ->orderBy('MenuPosition', 'asc')
                    ->get();
        foreach ($ret as $menu){
            $menu -> MenuParent = Menu::find($menu -> MenuParent)['MenuTitle'];
        }            
        return $ret;
    }
    public static function deleteMenu($menuid){
        $menus = DB::table('menus')
                    -> select('MenuID')
                    ->where('MenuParent','=',$menuid)
                    ->get();
        if(!empty($menus)){
            foreach ($menus as $key => $menu) {
                Menu::destroy($menu -> MenuID);
            }
        }
        return Menu::destroy($menuid);
    }

    public static function getMenuFromMenuID($menuid){
        return  Menu::find($menuid)->toArray();
    }
    public static function getMenuFromUserID($UserID){
        $GroupArray = Self::getGroupIDFromUserID($UserID);
        $Menu  = Self::getMenuFromGroupIDArray($GroupArray);
        return $Menu;
    }
    public static function getSubMenu($UserID,$MenuID){

        $GroupArray = Self::getGroupIDFromUserID($UserID);
        $SubMenu  = Self::getSubMenuFromGroupIDArray($GroupArray,$MenuID,2);
        return $SubMenu;
    }
    public static function getFreeMenu(){
        $ret = DB::table('menus')
                    ->select('MenuID','MenuTitle','MenuParent','MenuURL')
                    ->where('MenuLevel',1)
                    ->where('Is_Free',1) 
                    ->orderBy('MenuPosition','asc')
                    ->groupBy('menus.MenuID')
                    ->get();
        return $ret;    
    }
    public static function getFreeSubMenuFromMenuID($MenuID){
        $ret = DB::table('menus')
                    ->select('MenuID','MenuTitle','MenuParent','MenuURL')
                    ->where('MenuLevel',2)
                    ->where('Is_Free',1)
                    ->where('MenuParent',$MenuID) 
                    ->orderBy('MenuPosition','asc')
                    ->groupBy('menus.MenuID')
                    ->get();
        return $ret;   
    }
    public static function getNavMenu($UserID,$MenuID){

        $GroupArray = Self::getGroupIDFromUserID($UserID);
        $SubMenu  = Self::getSubMenuFromGroupIDArray($GroupArray,$MenuID,3);
        return $SubMenu;
    }
    /*
    Quan tri group user
    */
    public static function getGroupUserFromUserID($UserID){
        $user = DB::table('group_users')
                    ->join('users','group_users.UserID','=','users.UserID')
                    ->join('groups','group_users.GroupID','=','groups.GroupID')
                    ->select ('group_users.UserID','group_users.GroupID','users.Username','groups.GroupName')
                    ->where ('group_users.UserID',$UserID)
                    ->orderBy('group_users.GroupID', 'asc')
                    ->get();            
        return $user;                       
    }
    public static function addGroupUser($groupid,$userid){
        $groupusers = new GroupUser;
        $groupusers -> GroupID = $groupid;
        $groupusers -> UserID = $userid;
        return $groupusers -> save();
    }
    public static function removeGroupUser($groupid,$userid){
        $GroupUser = DB::table('group_users')
                        ->where('GroupID','=',$groupid)
                        ->where('UserID','=',$userid)
                        ->first();
        if(!empty($GroupUser)) GroupUser::destroy($GroupUser -> GroupUserID);                 
    }
    public static function getUserFromGroupID($GroupID){
        $users = DB::table('group_users')
                    ->join('users','users.UserID','=','group_users.UserID')
                    ->join('groups','groups.GroupID','=','group_users.GroupID')
                    ->where('group_users.GroupID',$GroupID)
                    ->orderBy('group_users.UserID','asc')
                    ->get();
        return $users;
    }
    public static function getUnAddGroupFromUserID($userid){
        $groupid = Self::getGroupIDFromUserID($userid);
        if (!empty($groupid)){
            $groups = $group = DB::table('groups')
                    ->whereNotIn ('GroupID',$groupid)
                    ->orderBy('GroupID','asc')
                    ->get();
            return $groups;    
        }
        else{
            return DB::table('groups')->get();
        }
    }
    //
    public static function getUnAddUserFromGroupID($groupid){
        $userids = Self::getUserIDFromGroupID($groupid);
        if(!empty($userids)){
            $users = DB::table('users')
                    ->whereNotIn ('UserID',$userids)
                    ->orderBy('UserID','asc')
                    ->get();
            return $users;    
        }
        else{
            return DB::table('users')->get();
        }
    }
    public static function getUserIDFromGroupID($GroupID){
        $GroupUser = GroupUser::select('UserID')
                                ->where('GroupID',$GroupID)
                                ->orderBy('UserID', 'asc')
                                ->get()
                                ->toArray();
        $ret = array();
        foreach ($GroupUser as $index => $user){
            $ret[$index] = $user['UserID'];
        }
        return !empty($ret) ? $ret : null;
    }
    public static function getGroupIDFromUserID($UserID){
        $GroupUser = GroupUser::select('GroupID')
                                ->where('UserID',$UserID)
                                ->orderBy('GroupID', 'asc')
                                ->get()
                                ->toArray();
        $ret = array();
        foreach ($GroupUser as $index => $group){
            $ret[$index] = $group['GroupID'];
        }
        return !empty($ret) ? $ret : null;
    }

    public static function getGroupFromUserID($userid){
        $group = DB::table('group_users')
                    ->join('groups','groups.GroupID','=','group_users.GroupID')
                    ->where('group_users.UserID',$userid)
                    ->orderBy('group_users.GroupID','asc')
                    ->get();
        return $group;             
    }

    /*
    ***Quan tri phan quyen menu theo group
    ***
    */
    public static function getMenuFromGroupIDArray($GroupIDArray){
         $ret = DB::table('menu_groups')
                    ->select('menus.MenuID','menus.MenuTitle','menus.MenuParent','menus.MenuURL')
                    ->join('menus','menu_groups.MenuID','=','menus.MenuID')
                    ->wherein('menu_groups.GroupID',$GroupIDArray)
                    ->where('menus.MenuLevel',1) 
                    ->orderBy('MenuParent','asc')
                    ->orderBy('MenuPosition','asc')
                    ->groupBy('menus.MenuID')
                    ->get();
        return $ret;              
    }
    public static function getSubMenuFromGroupIDArray($GroupIDArray,$MenuParent,$MenuLevel){
         $ret = DB::table('menu_groups')
                    ->select('menus.MenuID','menus.MenuTitle','menus.MenuParent','menus.MenuURL')
                    ->join('menus','menu_groups.MenuID','=','menus.MenuID')
                    ->wherein('menu_groups.GroupID',$GroupIDArray)
                    ->where('menus.MenuLevel',$MenuLevel)
                    ->where ('menus.MenuParent',$MenuParent) 
                    ->orderBy('MenuPosition','asc')
                    ->groupBy('menus.MenuID')
                    ->get();
        return $ret;              
    }
    public static function getAllMenuFromGroupID($groupid){
        $menus = DB::table('menu_groups')
                    -> join('menus','menus.MenuID','=','menu_groups.MenuID')
                    -> where ('menu_groups.GroupID','=',$groupid)
                    -> orderBy('menus.MenuPosition','asc')
                    -> get();
        return $menus;
    }
    public static function getUnAddMenuFromGroupID($groupid){
        $menus = Self::getAllMenuFromGroupID($groupid);
        $menuids = NULL;
        if(!empty($menus))
        {
            $menuids = NULL;
            foreach ($menus as $key => $menu) {
                $menuids[$key] = $menu -> MenuID; 
            }
        }
        $ret = DB::table('menus')
                        -> whereNotIn('MenuID',$menuids)
                        -> where('Is_Free','!=',1)
                        -> orderBy('MenuPosition','asc')
                        -> get();
        return $ret;
    }
    public static function addMenuGroup($menuid,$groupid){
        $MenuGroup = new MenuGroup;
        $MenuGroup -> MenuID = $menuid;
        $MenuGroup -> GroupID = $groupid;
        return $MenuGroup -> save();
    }
    public static function removeMenuGroup($menuid,$groupid){
        $MenuGroups = DB::table('menu_groups')
                        -> where ('MenuID','=',$menuid)
                        -> where ('GroupID','=',$groupid)
                        -> get();
        if(!empty($MenuGroups)){
            foreach ($MenuGroups as $MenuGroup) {
                MenuGroup::destroy($MenuGroup -> MenuGroupID);
            }
        }                
    }
    public static function getAllGroupFromMenuID($menuid){
        $groups = DB::table('menu_groups')
                    ->join('groups','groups.GroupID','=','menu_groups.GroupID')
                    ->where('menu_groups.MenuID','=',$menuid)
                    ->orderBy('menu_groups.GroupID','asc')
                    ->get();
        return $groups;             
    }
    public static function getUnAddGroupFromMenuID($menuid){
        $groups = Self::getAllGroupFromMenuID($menuid);
        $groupids = NULL;
        foreach ($groups as $key => $group) {
            $groupids[$key] = $group -> GroupID;
        }
        if (!empty($groupids)){
            $ret = DB::table('groups')
                ->whereNotIn('GroupID',$groupids)
                ->orderBy('GroupID','asc')
                ->get();    
        }
        else{
             $ret = DB::table('groups')
                ->orderBy('GroupID','asc')
                ->get();  
        }
        return $ret;
    }
    //Quan tri phan Module
    public static function getAllModule(){
        return Module::all() -> toArray();
    }
    public static function getModuleFromModuleID($ModuleID){
        return Module::find($ModuleID) -> toArray();
    }
    public static function GetModuleFromModuleName($ModuleName){
        $ret = Module::select('ModuleID','ModuleName')
                -> where('ModuleName','=',$ModuleName)
                -> get()
                -> toArray();
        if(!empty($ret)){
            return $ret[0];    
        }
        return NULL;
    }
    //Quan tri Action
    public static function getAllAction(){
        $ret = DB::table('authorizations')
                    ->orderBy('ModuleID', 'asc')
                    ->get();
        foreach ($ret as $authorization){
            $authorization -> ModuleID = Module::find($authorization -> ModuleID)['ModuleName'];
        }            
        return $ret;    
    }

    //Quan tri Authorizations
    public static function getActionFromActionID($ActionID){
        $action =  Authorization::find($ActionID) -> toArray();
        $action['ModuleID'] = Admin::getModuleFromModuleID($action['ModuleID'])['ModuleName'];
        return $action;
    }
    public static function getActionFromModuleID($ModuleID){
        return Authorization::where('ModuleID','=',$ModuleID)
                            ->orderBy('AuthorizationID','asc')
                            ->get()
                            ->toArray();
    }
    public static function getActionFromModuleIDandActionName($ModuleID,$Method){
        return Authorization::where('ModuleID','=',$ModuleID)
                            ->where('Method','=',$Method)
                            ->get()
                            ->toArray();         
    }
    public static function getAuthorizationFromModuleIDandAuthorizationName($ModuleID,$Method){
        $ret = Authorization::where('ModuleID','=',$ModuleID)
                            ->where('Method','=',$Method)
                            ->get()
                            ->toArray();
        if(!empty($ret)){
            return $ret[0];    
        }
        return NULL;           
    }
    public static function getAllActionFromModuleID($ModuleID){
        $ret = DB::table('authorizations')
                    ->where('ModuleID','=',$ModuleID)
                    ->orderBy('AuthorizationID', 'asc')
                    ->get();
        foreach ($ret as $authorization){
            $authorization -> ModuleID = Module::find($authorization -> ModuleID)['ModuleName'];
        }            
        return $ret;    
    }
    // Quan tri phan GroupAuthorization
    public static function getActionFromGroupID($GroupID){
        $ret = DB::table('group_authorizations')
                -> join('authorizations','group_authorizations.AuthorizationID','=','authorizations.AuthorizationID')     
                -> where ('GroupID','=',$GroupID)
                -> orderBy('group_authorizations.AuthorizationID','asc')
                -> get();
        foreach ($ret as $authorization){
            $authorization -> ModuleID = Module::find($authorization -> ModuleID)['ModuleName'];
        }            
        return $ret;        

    }
    
    public static function getUnAddActionFromGroupID($GroupID){
        $actions = Self::getActionFromGroupID($GroupID);
        $AuthorizationIDs = array();
        foreach ($actions as $key => $action) {
            $AuthorizationIDs[$key] = $action -> AuthorizationID;            
        }
        $ret = DB::table('authorizations')
                    -> whereNotIn('AuthorizationID',$AuthorizationIDs)
                    -> orderBy('AuthorizationID','asc')
                    -> get();
        foreach ($ret as $authorization){
            $authorization -> ModuleID = Module::find($authorization -> ModuleID)['ModuleName'];
        }            
        return $ret;                      
    }
    public static function getActionFromGroupIDArray($GroupIDs){
        $ret = DB::table('group_authorizations')
                -> join('authorizations','group_authorizations.AuthorizationID','=','authorizations.AuthorizationID')     
                -> whereIn ('GroupID',$GroupIDs)
                -> groupBy('AuthorizationID')
                -> orderBy('AuthorizationID','asc')
                -> get();
        foreach ($ret as $authorization){
            $authorization -> ModuleID = Module::find($authorization -> ModuleID)['ModuleName'];
        }            
        return $ret;
    }
    public static function addGroupAuthorization($GroupID,$AuthorizationID){
        $ret = new GroupAuthorization;
        $ret -> GroupID = $GroupID;
        $ret -> AuthorizationID = $AuthorizationID;
        $ret -> save();        
    }
    public static function removeGroupAuthorization($GroupID,$AuthorizationID){
        $GroupAuthorization = DB::table('group_authorizations')
                                -> where('GroupID','=',$GroupID)
                                -> where('AuthorizationID','=',$AuthorizationID)
                                -> first();
        if(!empty($GroupAuthorization)) GroupAuthorization::destroy($GroupAuthorization -> GroupAuthorizationID);          
    }
    //toi day
    public static function getGroupFromAuthorizationID($AuthorizationID){
        $ret = DB::table('group_authorizations')
                -> join('groups','group_authorizations.GroupID','=','groups.GroupID')     
                -> where('AuthorizationID','=',$AuthorizationID)
                -> groupBy('group_authorizations.GroupID')
                -> orderBy('group_authorizations.GroupID','asc')
                -> get();            
        return $ret;
    }
    public static function getGroupIDArrayFromAuthorizationID($AuthorizationID){
        $groups = DB::table('group_authorizations')
                -> join('groups','group_authorizations.GroupID','=','groups.GroupID')     
                -> where('AuthorizationID','=',$AuthorizationID)
                -> groupBy('group_authorizations.GroupID')
                -> orderBy('group_authorizations.GroupID','asc')
                -> get();            
        $ret = Array();
        foreach ($groups as $key => $group) {
            $ret[$key] = $group -> GroupID;
        }
        return $ret;
    }
    public static function getUnAddGroupFromAuthorizationID($AuthorizationID){
        $groupids = Self::getGroupIDArrayFromAuthorizationID($AuthorizationID);
        return DB::table('groups')
                    -> whereNotIn('GroupID', $groupids)
                    -> orderBy('GroupID','asc')
                    -> get();                
    }

    public static function checkUserAuthorization($UserID,$AuthorizationID){
        $groupids = Self::getGroupIDFromUserID($UserID);
        $ret = DB::table('group_authorizations')
                    -> whereIn('GroupID',$groupids)
                    -> where('AuthorizationID','=',$AuthorizationID)
                    -> get();            
        return !empty($ret)? TRUE: FALSE;  

    }
    //Check quyen user khi su dung Action-Controller
    public static function checkAccess($userID,$Module,$Method){
        $module = Self::GetModuleFromModuleName($Module);
        if(empty($module)) return FALSE;
        $authorization = self::getAuthorizationFromModuleIDandAuthorizationName($module['ModuleID'],$Method);
        if(empty($authorization)) return FALSE;
        return Self::checkUserAuthorization($userID,$authorization['AuthorizationID']);
    }
}