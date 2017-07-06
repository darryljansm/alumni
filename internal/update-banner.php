<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$id = (int)Sanitize::clean(Input::get('id'));
$title = Sanitize::clean(Input::get('title'));
$filename_tmp = $_FILES['file']['tmp_name'];
$filename = $_FILES['file']['name'];
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($filename) || $title == "" || $filename == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::referer();
} else {
	$editBanner = Db::getInstance()->updateData('webbanner', array(
			'banner_title' => $title,
			'banner_image' => $filename,
			'banner_poster_id' => Session::getSession('admin-id'),
			'banner_date_modified' => $dateTime
		), "banner_id = $id");
	if($editBanner) {
		move_uploaded_file($filename_tmp, "../resources/images/banner/$filename");
		$addAudit = Db::getInstance()->auditLog('webbanner', 'Updated Existing Banner', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Banner successfully updated!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Banner failed to update!');
		Redirect::referer();
	}
}

?>