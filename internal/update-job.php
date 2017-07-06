<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
$id = Coding::decodeThis(Coding::decodeThis($_POST['id']));
$title = Sanitize::clean(Input::get('title'));
$company = Sanitize::clean(Input::get('company'));
$position = Sanitize::clean(Input::get('position'));
$vacancy = Sanitize::clean(Input::get('vacancy'));
$description = Sanitize::clean(Input::get('description'));
$dateTime = date("Y-m-d H:i:s");

if(empty($title) || empty($description) || empty($company) || empty($position) || empty($vacancy) || $title == "" || $description == "" || $company == "" || $position == "" || $vacancy == "") {
	Session::putSession('alert-error', 'Please fill-in all fields!');
	Redirect::referer();
} else {
	$editJob = Db::getInstance()->updateData('webjobs', array(
			'job_title' => $title,
			'job_company' => $company,
			'job_positions' => $position,
			'job_vacancy' => $vacancy,
			'job_description' => $description,
			'job_poster_id' => Session::getSession('admin-id'),
			'job_date_modified' => $dateTime
		), "job_id = $id");
	if($editJob) {
		$addAudit = Db::getInstance()->auditLog('webjobs', 'Updated Existing Job Post', Session::getSession('admin-id'));
		Session::putSession('alert-success', 'Job successfully updated!');
		Redirect::referer();
	} else {
		Session::putSession('alert-error', 'Job failed to update!');
		Redirect::referer();
	}
}

?>