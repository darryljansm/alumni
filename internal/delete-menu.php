<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$id = Coding::decodeThis(Coding::decodeThis(Sanitize::clean(Input::get('ref'))));
$dateTime = date("Y-m-d H:i:s");

if($id == "" || empty($id)) {
	Session::putSession('alert-error', 'Invalid reference!');
	Redirect::referer();
} else {
	$deleteMenu = Db::getInstance()->updateData('webmenu', array(
			'menu_status' => 2,
			'menu_date_modified' => $dateTime,
		), "menu_id = $id");
	if($deleteMenu) {
		$addAudit = Db::getInstance()->auditLog('webmenu', 'Deleted Existing Menu Item', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Menu successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Menu failed to delete!');
		Redirect::referer();
	}
}

?>