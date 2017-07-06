<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
$id = (int)Sanitize::clean(Input::get('id'));
$title = Sanitize::clean(Input::get('title'));
$description = Sanitize::clean(Input::get('description'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($description) || $title == "" || $description == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::referer();
} else {
	$updateAnnouncement = Db::getInstance()->updateData('webannouncements', array(
			'announ_title' => $title,
			'announ_description' => $description,
			'announ_poster_id' => Session::getSession('admin-id'),
			'announ_date_modified' => $dateTime,
		), "announ_id = $id");
	if($updateAnnouncement) {
		$addAudit = Db::getInstance()->auditLog('webannouncements', 'Updated Existing Announcement', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Announcement successfully updated!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Announcement failed to update!');
		Redirect::referer();
	}
}

?>