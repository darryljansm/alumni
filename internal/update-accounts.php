<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
$id = (int)Sanitize::clean(Input::get('id'));
$fname = Sanitize::clean(Input::get('fname'));
$mname = Sanitize::clean(Input::get('mname'));
$lname = Sanitize::clean(Input::get('lname'));
$email = Sanitize::clean(Input::get('email'));
$username = Sanitize::clean(Input::get('username'));
$level = Sanitize::clean((int)Input::get('level'));
$dateTime = date("Y-m-d H:i:s");

if(empty($fname) || empty($mname) || empty($lname) || empty($email) || empty($username) || $fname == "" || $mname == "" || $lname == "" || $email == "" || $username == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::getBack();
} else {
	if($level != 0) {
		$editAccount = Db::getInstance()->updateData('admin', array(
				'admin_fname' => $fname,
				'admin_mname' => $mname,
				'admin_lname' => $lname,
				'admin_email' => $email,
				'admin_username' => $username,
				'admin_level' => $level,
				'admin_date_modified' => $dateTime,
			), "admin_id = $id");
	} else {
		$editAccount = Db::getInstance()->updateData('admin', array(
				'admin_fname' => $fname,
				'admin_mname' => $mname,
				'admin_lname' => $lname,
				'admin_email' => $email,
				'admin_username' => $username,
				'admin_date_modified' => $dateTime,
			), "admin_id = $id");
	}
	
	if($editAccount) {
		$addAudit = Db::getInstance()->auditLog('admin', 'Updated Existing Admin Account', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Account successfully updated!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Account failed to update!');
		Redirect::referer();
	}
}

?>