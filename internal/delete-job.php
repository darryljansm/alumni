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
	$deleteJob = Db::getInstance()->updateData('webjobs', array(
			'job_status' => 2,
			'job_date_modified' => $dateTime,
		), "job_id = $id");
	if($deleteJob) {
		$addAudit = Db::getInstance()->auditLog('webjobs', 'Deleted Existing Job Post', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Job successfully deleted!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Job failed to delete!');
		Redirect::referer();
	}
}

?>