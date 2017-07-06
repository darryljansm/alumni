<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$title = Sanitize::clean(Input::get('title'));
$filename_tmp = $_FILES['file']['tmp_name'];
$filename = $_FILES['file']['name'];
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($filename) || $title == "" || $filename == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::referer();
} else {
	$addBanner = Db::getInstance()->insertData('webbanner', array(
			'banner_title' => $title,
			'banner_image' => $filename,
			'banner_poster_id' => Session::getSession('admin-id'),
			'banner_date_modified' => $dateTime,
			'banner_date_added' => $dateTime
		));
	if($addBanner) {
		move_uploaded_file($filename_tmp, "../resources/images/banner/$filename");
		$addAudit = Db::getInstance()->auditLog('webbanner', 'Add New Banner', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Banner successfully added!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Banner failed to add!');
		Redirect::referer();
	}
}

?>