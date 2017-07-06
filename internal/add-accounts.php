<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$fname = Sanitize::clean(Input::get('fname'));
$mname = Sanitize::clean(Input::get('mname'));
$lname = Sanitize::clean(Input::get('lname'));
$email = Sanitize::clean(Input::get('email'));
$username = Sanitize::clean(Input::get('username'));
$level = Sanitize::clean((int)Input::get('level'));
$pass1 = Sanitize::clean(Input::get('password1'));
$pass2 = Sanitize::clean(Input::get('password2'));
$salt = Hash::salt(32);
$dateTime = date("Y-m-d H:i:s");

if(empty($fname) || empty($mname) || empty($lname) || empty($email) || empty($username) || empty($level) || empty($pass1) || empty($pass2) || $fname == "" || $mname == "" || $lname == "" || $email == "" || $username == "" || $level == "" || $pass1 == "" || $pass2 == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::goBack();
} else if($pass1 !== $pass2) {
	Session::putSession('alert-error', 'Passwords does not match!');
	Redirect::goBack();
} else {
	$addAccount = Db::getInstance()->insertData('admin', array(
			'admin_fname' => $fname,
			'admin_mname' => $mname,
			'admin_lname' => $lname,
			'admin_email' => $email,
			'admin_username' => $username,
			'admin_level' => $level,
			'admin_salt' => $salt,
			'admin_password' => Hash::make($pass1.$salt),
			'admin_date_modified' => $dateTime,
			'admin_date_added' => $dateTime
		));
	if($addAccount) {
		$addAudit = Db::getInstance()->auditLog('admin', 'Create Admin Account', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Account successfully added!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Account failed to add!');
		Redirect::referer();
	}
}

?>