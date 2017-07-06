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
	$deleteNews = Db::getInstance()->updateData('webnews', array(
			'news_status' => 2,
			'news_date_modified' => $dateTime,
		), "news_id = $id");
	if($deleteNews) {
		$addAudit = Db::getInstance()->auditLog('webnews', 'Deleted Existing News', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'News successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'News failed to delete!');
		Redirect::referer();
	}
}

?>