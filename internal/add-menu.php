<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$title = Sanitize::clean(Input::get('title'));
$link = Sanitize::clean(Input::get('link'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || $title == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::getBack();
} else {
	$checkMenu = Db::getInstance()->selectData('webmenu',"menu_status = 1 AND menu_title = '$title'");
	if(!$checkMenu) {
		$addMenu = Db::getInstance()->insertData('webmenu', array(
				'menu_title' => $title,
				'menu_link' => $link,
				'menu_date_modified' => $dateTime,
				'menu_date_added' => $dateTime
			));
		if($addMenu) {
			$addAudit = Db::getInstance()->auditLog('webmenu', 'Add New Menu', Session::getSession('admin-id'));	
			Session::putSession('alert-success', 'Menu successfully added!');
			Redirect::referer();
		} else {
			Session::putSession('alert-error', 'Menu failed to add!');
			Redirect::getBack();
		}
	}
	Session::putSession('alert-error', 'Menu already exist!');
	Redirect::getBack();
}

?>