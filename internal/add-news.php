<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$title = Sanitize::clean(Input::get('title'));
$description = Sanitize::clean(Input::get('description'));
$filename_tmp = $_FILES['file']['tmp_name'];
$filename = $_FILES['file']['name'];
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($description) || $title == "" || $description == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::getBack();
} else {
	$allowed =  array('gif','png' ,'jpg');
	$filename = $_FILES['file']['name'];
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	if(!in_array($ext,$allowed) ) {
		Session::putSession('alert-error', 'Invalid image format.');
		Redirect::getBack();
	} else {
		$addNews = Db::getInstance()->insertData('webnews', array(
				'news_title' => $title,
				'news_description' => $description,
				'news_image' => $filename,
				'news_poster_id' => Session::getSession('admin-id'),
				'news_date_modified' => $dateTime,
				'news_date_added' => $dateTime
			));
		if($addNews) {
			move_uploaded_file($filename_tmp, "../resources/images/news/$filename");
			$addAudit = Db::getInstance()->auditLog('webnews', 'Add New News', Session::getSession('admin-id'));
			Session::putSession('alert-success', 'News successfully added!');
			Redirect::referer();
		} else {
			Session::putSession('alert-error', 'News failed to add!');
			Redirect::getBack();
		}
	}
}

?>