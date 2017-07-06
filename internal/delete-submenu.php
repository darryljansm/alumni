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
	$deleteSubmenu = Db::getInstance()->updateData('websubmenu', array(
			'submenu_status' => 2,
			'submenu_date_modified' => $dateTime,
		), "submenu_id = $id");
	if($deleteSubmenu) {
		$addAudit = Db::getInstance()->auditLog('websubmenu', 'Deleted Existing Submenu Item', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Submenu successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Submenu failed to delete!');
		Redirect::referer();
	}
}

?>