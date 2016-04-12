<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use URL;
use App\Model\Menu;
use App\Model\Group;
use App\Model\User;
use App\Model\MenuGroup;
use App\Model\GroupUser;
use DB;
/*
**Class nay phu vu cho viec lay (get) / xoa(delete) / them(insert) /sua(update) menu  
**Du lieu tra ve duoc sap xep theo MenuPosition
*/
class pubMenu extends Model
{	
	/*
		*Lay Tat Ca Menu
		*Tra ve Array
	*/
	public static function getAllMenu(){
		return Menu::get()->toArray();
	}
	/*
		*Lay Thong Tin cua Menu tu MenuID
	 	*Tra ve mang Array
	 */
	public static function getMenuFromMenuID($MenuID){
		return Menu::find($MenuID)->toArray();
	}
	/*
		*Lay Menu('MenuID','MenuPosition','MenuTitle','MenuURL','MenuParent','MenuLevel','Is_Free') Tu MenuLevel
		*Truong hop mac dinh la lay menu cap 1 
		*Sap xep theo MenuPosition
		*Tra ve Array
	*/
	public static function getMenuFromMenuLevel($MenuLevel = 1){
		return Menu::select('MenuID','MenuPosition','MenuTitle','MenuURL','MenuParent','MenuLevel','Is_Free')
					-> where('MenuLevel', '=',$MenuLevel)
					-> orderBy('MenuPosition','asc')
					-> get()
					-> toArray();											
	}
	
	/*
		*Lay Menu 2 cap lam menu cho phan tren
		*Sap xep theo MenuPosition
		*Tra ve Array
	*/
	public static function getTwoLevelMenuFromMenuLevel($MenuLevel =1){
		$Menus = Self::getMenuFromMenuLevel($MenuLevel);
		$NextMenus = Self::getMenuFromMenuLevel(++$MenuLevel);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		}
		return $Menus; 
	}

	public static function getDependMenuIDArrayFromGroupIDArray($GroupIDs){
		$MenuIDs = MenuGroup::select('MenuID')
								-> whereIn ('GroupID',$GroupIDs)
								-> orderBy('MenuID')
								-> groupBy('MenuID')
								-> get()
								-> toArray();
		$ret = Array();
		foreach ($MenuIDs as $key => $Menu) {
			$ret[$key]=$Menu['MenuID'];
		}						
		return $ret;
	}


	/*
		Lay menu(ke ca free menu ) tu MenuID va UserID
		Tra ve Array STD 
	*/
	public static function getSubMenuFromUserIDAndMenuID($UserID,$MenuID){
		if(!empty($MenuID))
		{
			$MenuInfo = Self::getMenuFromMenuID($MenuID);
		$GroupIDs = Self::getGroupIDArrayFromUserID($UserID);
		$DependMenuIDs = Self::getDependMenuIDArrayFromGroupIDArray($GroupIDs); 
		return	Menu::select('MenuTitle','MenuURL')
							->whereIn('MenuID',$DependMenuIDs)
							->where ('MenuParent','=',$MenuID)
							->where('MenuLevel','=',++$MenuInfo['MenuLevel']) 
							->groupBy('MenuID')
							->orderBy('MenuPosition','asc')
							->get()
							->toArray();	
		}											
		return Null;	
	}	


	/*
		*Lay  Menu(ke ca free menu) Tu MenuLevel va UserID 
		*Sap xep theo MenuPosition
		*Tra ve Array
		chua xong gio ve mai lam tiep
	*/

	public static function getMenuFromUserIDAndMenuLevel($UserID,$MenuLevel=1){
		if(!empty($UserID) || !empty(User::find($UserID))){
			$GroupIDs = Self::getGroupIDArrayFromUserID($UserID);
			$DependMenuIDs = Self::getDependMenuIDArrayFromGroupIDArray($GroupIDs);
			$MenuIDs= 	Menu::select('MenuID')
						->whereIn('MenuID',$DependMenuIDs)
						->orWhere ('Is_Free','=',1)
						->groupBy('MenuID')
						->orderBy('MenuPosition','asc')
						->get()
						->toArray();
			$menuids = array();
			foreach ($MenuIDs as $key => $MenuID) {
				$menuids[$key] = $MenuID['MenuID'];					
			}
			return Menu::whereIn('MenuID',$menuids)
						->where('MenuLevel','=',$MenuLevel)
						->groupBy('MenuID')
						->orderBy('MenuPosition','asc')
						->get()
						->toArray();					
		}

	}
	/*
		*Lay  Menu(ke ca free menu) 2 cap Tu MenuLevel va UserID 
		*Sap xep theo MenuPosition
		*Tra ve Array
		chua xong gio ve mai lam tiep
	*/

	public static function getTwoLevelMenuFromUserIDAndMenuLevel($UserID,$MenuLevel=1){
		$Menus = Self::getMenuFromUserIDAndMenuLevel($UserID,$MenuLevel);
		$NextMenus = Self::getMenuFromUserIDAndMenuLevel($UserID,++$MenuLevel);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		}
		return $Menus; 

	}

	/*
		* Lay Menu Con Tu MenuID
		* Sap xep theo MenuPosition
		* Tra ve std Array
	*/
	public static function getSubMenuFromMenuID($MenuID){
		return Menu::select('MenuID','MenuPosition','MenuTitle','MenuURL','MenuParent','MenuLevel','Is_Free')
					-> where('MenuParent', '=',$MenuID)
					-> orderBy('MenuPosition','asc')
					-> get()
					-> toArray();
	}

	/*
		*Lay Menu 2 cap lam menu cho phan tren
		*Sap xep theo MenuPosition
		*Tra ve Array
	*/
	public static function getTopMenu(){
		$Menus = Self::getMenuFromMenuLevel(1);
		$NextMenus = Self::getMenuFromMenuLevel(2);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		}
		return $Menus; 
	}
	/*
		*Lay Menu 2 cap(cap 3 va 4) tu MenuID cap 2 lam menu cho phan ben trai
		*Sap xep theo MenuPosition
		*Tra ve Array
	*/
	public static function getLeftMenu($MenuID,$MenuLevel=3){
		$Menus = Self::getMenuFromMenuID($MenuID);
		$NextMenus = Self::getMenuFromMenuLevel(++$MenuLevel);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		} 
		return $Menus;
	}

	/*
		* Lay Free menu  tu MenuLevel
		* Mac dinh MenuLevel=1
		* Tra ve array hai cap
	*/
	public static function getFreeMenuFromMenuLevel($MenuLevel=1)
	{
		return Menu::where('MenuLevel','=',$MenuLevel)
					-> where('Is_Free','=',1)
					-> orderBy('MenuPosition','asc')
					-> get()
					-> toArray();
	}
	/*
		* Lay Free Menu  Hai Cap tu do tu MenuLevel
		* Mac dinh MenuLevel=1
		* Tra ve array hai cap
	*/
	public static function getTwoLevelFreeMenuFromMenuLevel($MenuLevel =1){
		$Menus = Self::getFreeMenuFromMenuLevel($MenuLevel);
		$NextMenus = Self::getFreeMenuFromMenuLevel(++$MenuLevel);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		}
		return $Menus;
	}
	//Khi dang nhap thi phan an hien menu phai theo usergroup
	/*
		*Lay tat ca cac group ma user do thuoc tu UserID
		*Tra ve Array
	*/
	public static function getGroupIDArrayFromUserID($UserID){
		$GroupIDs = GroupUser::select('GroupID')
								-> where('UserID', '=', $UserID)
								-> orderBy('GroupID')
								-> get()
								-> toArray();
		$ret = Array();
		foreach ($GroupIDs as $key => $GroupID) {
			$ret[$key] = $GroupID['GroupID'];
		}
		return $ret;
	}
	/*
		*Lay Menu 2 cap lam menu cho phan tren tu UserID
		*Sap xep theo MenuPosition
		*Tra ve Array
	*/
	public static function getTopMenuFromUserID($UserID){
		$Menus = Self::getMenuFromMenuLevel(1);
		$NextMenus = Self::getMenuFromMenuLevel(2);		
		foreach ($Menus as $key => $Menu) {
			$index = 0;
		 	foreach($NextMenus as $NextMenu){
		 		if($NextMenu['MenuParent']==$Menu['MenuID'])
		 		{
		 			$Menus[$key]['ChildMenu'][$index] = $NextMenu;
		 			$index++;
		 		}	
		 	}
		}
		return $Menus; 
	}	

	public static function getMenuFromUserID($UserID){
        $GroupArray = Self::getGroupIDFromUserID($UserID);
        $Menu  = Self::getMenuFromGroupIDArray($GroupArray);
        return $Menu;
    }

}
