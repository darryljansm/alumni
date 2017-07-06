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
	$deleteAccounts = Db::getInstance()->updateData('admin', array(
			'admin_status' => 2,
			'admin_date_modified' => $dateTime,
		), "admin_id = $id");
	if($deleteAccounts) {
		$addAudit = Db::getInstance()->auditLog('admin', 'Deleted Existing Admin Account', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Account successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Account failed to delete!');
		Redirect::referer();
	}
}

?>