<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$id = (int)Coding::decodeThis(Coding::decodeThis(Input::get('id')));
$title = Sanitize::clean(Input::get('title'));
$link = Sanitize::clean(Input::get('link'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || $title == "" || empty($link) || $link == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::getBack();
} else {
	$checkMenu = Db::getInstance()->selectData('websubmenu',"submenu_status = 1 AND submenu_title = '$title' AND submenu_id <> $id");
	if(!$checkMenu) {
		$editSubmenu = Db::getInstance()->updateData('websubmenu', array(
				'submenu_title' => $title,
				'submenu_link' => $link,
				'submenu_date_modified' => $dateTime,
				'submenu_date_added' => $dateTime
			), "submenu_id = $id");
		if($editSubmenu) {
			$addAudit = Db::getInstance()->auditLog('websubmenu', 'Updated Existing Submenu Item', Session::getSession('admin-id'));
			Session::putSession('alert-success', 'Submenu successfully updated!');
			Redirect::referer();
		} else {
			Session::putSession('alert-error', 'Submenu failed to updated!');
			Redirect::getBack();
		}
	}
	Session::putSession('alert-error', 'Submenu already exist!');
	Redirect::getBack();
}

?>