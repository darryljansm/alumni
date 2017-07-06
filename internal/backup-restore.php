<?php

if(isset($_REQUEST['backup'])){	
	require_once('../includes/backup_restore.php');
	$db_host ="localhost";
	$db_user = "root";
	$db_pass ="";
	$db_name ="alumni";
	$newImport = new backup_restore($db_host,$db_name,$db_user,$db_pass);
	
	$fileName =  "db_" .$db_name.date("Y-m-d-H-i-s") . ".sql";
	// Header description Taken from http://stackoverflow.com/a/10766725
	header("Content-disposition: attachment; filename=".$fileName);
	header("Content-Type: application/force-download");
	//header("Content-Transfer-Encoding: application/zip;\n");
	header("Pragma: no-cache");
	header("Cache-Control: must-revalidate, post-check=0, pre-check=0, public");
	header("Expires: 0");
	//call of backup function
	echo $newImport -> backup(); die();
	Redirect::referer();
}

if(isset($_REQUEST['restore'])){
	$db_host = 'localhost';
	$db_name = 'alumni';
	$db_user = 'root';
	$db_pass = '';
	$newImport = new backup_restore($db_host,$db_name,$db_user,$db_pass);
	$filetype = $_FILES['rfile']['type'];
	$filename = $_FILES['rfile']['tmp_name'];
	$error = ($_FILES['rfile']['tmp_name'] == 0)? false:true;

	$allowed =  array('sql');
	$filename = $_FILES['rfile']['name'];
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	if(!in_array($ext,$allowed) ) {
		Session::putSession('alert-error', 'Invalid file format.');
		Redirect::getBack();
	} else {
		$ext = pathinfo($_FILES['rfile']['name'], PATHINFO_EXTENSION);
		if($ext == 'sql') {
			//call of restore function
			$message = $newImport -> restore ($filename);
			$adminName = $_SESSION['user-fname']." ".$_SESSION['user-lname'];
			$auditTrail = Db::getInstance()->auditTrail($adminName, 'Restored Database');
			Session::putSession('alert-success', 'Database successfully restored.');
			Redirect::referer();
		} else {
			Session::putSession('alert-error', 'Invalid backup file.');
			Redirect::getBack();
		}
	}
}

?>