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
	$deleteAnnouncement = Db::getInstance()->updateData('webannouncements', array(
			'announ_status' => 2,
			'announ_date_modified' => $dateTime,
		), "announ_id = $id");
	if($deleteAnnouncement) {
		$addAudit = Db::getInstance()->auditLog('webannouncements', 'Deleted Existing Announcement', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Announcement successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Announcement failed to delete!');
		Redirect::referer();
	}
}

?>