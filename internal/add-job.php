<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$title = Sanitize::clean(Input::get('title'));
$company = Sanitize::clean(Input::get('company'));
$position = Sanitize::clean(Input::get('position'));
$vacancy = Sanitize::clean(Input::get('vacancy'));
$description = Sanitize::clean(Input::get('description'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($description) || $title == "" || $description == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::referer();
} else {
	$addJob = Db::getInstance()->insertData('webjobs', array(
			'job_title' => $title,
			'job_company' => $company,
			'job_positions' => $position,
			'job_vacancy' => $vacancy,
			'job_description' => $description,
			'job_poster_id' => Session::getSession('admin-id'),
			'job_date_modified' => $dateTime,
			'job_date_added' => $dateTime
		));
	if($addJob) {
		$addAudit = Db::getInstance()->auditLog('webjobs', 'Add New Job', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Job successfully added!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Job failed to add!');
		Redirect::referer();
	}
}

?>