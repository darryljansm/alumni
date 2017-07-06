<?php
require_once('core/init.php');
$dateTime = date("Y-m-d H:i:s");
if(Session::sessionExists('admin-logged')) {
	$addAudit = Db::getInstance()->auditLog('admin', 'Admin Logout', Session::getSession('admin-id'));
	$adminID = Session::getSession('admin-id');
	$lastLogin = Db::getInstance()->updateData('admin', array(
			'admin_last_login' => $dateTime
		), "admin_id = $adminID");
}
session_destroy();
Redirect::to('index');
?>