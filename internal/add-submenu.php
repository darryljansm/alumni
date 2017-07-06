<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
$id = Coding::decodeThis(Coding::decodeThis(Input::get('id')));
$title = Sanitize::clean(Input::get('title'));
$link = Sanitize::clean(Input::get('link'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || $title == "" || empty($link) || $link == "" || empty($id) || $id == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::getBack();
} else {
	$checkMenu = Db::getInstance()->selectData('websubmenu',"submenu_status = 1 AND submenu_title = '$title'");
	if(!$checkMenu) {
		$addSubmenu = Db::getInstance()->insertData('websubmenu', array(
				'submenu_menu_id' => $id,
				'submenu_title' => $title,
				'submenu_link' => $link,
				'submenu_date_modified' => $dateTime,
				'submenu_date_added' => $dateTime
			));
		if($addSubmenu) {
			$addAudit = Db::getInstance()->auditLog('websubmenu', 'Add New Submenu', Session::getSession('admin-id'));
			Session::putSession('alert-success', 'Submenu successfully added!');
			Redirect::referer();
		} else {
			Session::putSession('alert-error', 'Submenu failed to add!');
			Redirect::getBack();
		}
	}
	Session::putSession('alert-error', 'Submenu already exist!');
	Redirect::getBack();
}

?>