<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}

$filename_tmp = $_FILES['file']['tmp_name'];
$filename = $_FILES['file']['name'];
$filetype = $_FILES['file']['type'];
$fileext = pathinfo($_FILES['file']['name']);

$csv_mimetypes = array(
	'text/csv',
	'text/plain',
	'application/csv',
	'text/comma-separated-values',
	'application/excel',
	'application/vnd.ms-excel',
	'application/vnd.msexcel',
	'text/anytext',
	'application/octet-stream',
	'application/txt',
);

if (in_array($_FILES['file']['type'], $csv_mimetypes)) {
	if($fileext['extension'] == 'csv') {
		if(is_uploaded_file($_FILES['file']['tmp_name'])){
			
			//open uploaded csv file with read only mode
			$csvFile = fopen($_FILES['file']['tmp_name'], 'r');
			
			//skip first line
			fgetcsv($csvFile);

			//parse data from csv file line by line
			while(($line = fgetcsv($csvFile)) !== FALSE){
				//check whether member already exists in database with same email
				$studID = $line[4];
				$prevResult = Db::getInstance()->queryString("SELECT grad_id FROM graduates WHERE grad_student_id = '$studID'");
				if($prevResult->rowCount()) {
					continue;
				} else {
					$addGraduate = Db::getInstance()->insertData('graduates', array(
						'grad_fname' => $line[0],
						'grad_mname' => $line[1],
						'grad_lname' => $line[2],
						'grad_birthday' => date("Y-m-d", strtotime($line[3])),
						'grad_student_id' => $line[4],
						'grad_course' => $line[5],
						'grad_dept' => $line[6],
						'grad_year_graduated' => $line[7]
					));
				}
			}

			//close opened csv file
			fclose($csvFile);
			Session::putSession('alert-success','File successfully imported to database.');
			Redirect::to('../admin-graduates.php');
		}
	} else {
		Session::putSession('alert-error','Invalid file format.');
		Redirect::getBack();
	}
} else {
	Session::putSession('alert-error','Invalid file format.');
	Redirect::getBack();
}
?>