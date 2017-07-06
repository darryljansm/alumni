<?php
require_once('core/init.php');
if(!Session::sessionExists('user-logged')) {
	Redirect::to('index');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home - Alumni Association</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="resources/plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/main2.css">
		<link rel="stylesheet" type="text/css" href="resources/css/full-slider.css">
		<link rel="icon" href="resources/images/alumni_logo.png">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div class="wrapper">
		<header id="myCarousel" class="carousel slide">
	
			<div class="main-logo">
				<img src="resources/images/alumni_logo.png">
			</div>

			<!-- Wrapper for Slides -->
			<div class="carousel-inner">
				<div class="item active">
					<!-- Set the first background image using inline CSS below. -->
					<!--<div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>-->
					<div class="fill" style="background-image:url('resources/images/slider/1.jpg');"></div>
					<div class="carousel-caption">
						<!--<h2>Caption 1</h2>-->
					</div>
				</div>
				<div class="item">
					<!-- Set the second background image using inline CSS below. -->
					<div class="fill" style="background-image:url('resources/images/slider/2.jpg');"></div>
					<div class="carousel-caption">
						<!--<h2>Caption 2</h2>-->
					</div>
				</div>
				<div class="item">
					<!-- Set the third background image using inline CSS below. -->
					<div class="fill" style="background-image:url('resources/images/slider/3.jpg');"></div>
					<div class="carousel-caption">
						<!--<h2>Caption 3</h2>-->
					</div>
				</div>
				<div class="item">
					<!-- Set the third background image using inline CSS below. -->
					<div class="fill" style="background-image:url('resources/images/slider/4.jpg');"></div>
					<div class="carousel-caption">
						<!--<h2>Caption 3</h2>-->
					</div>
				</div>
				<div class="item">
					<!-- Set the third background image using inline CSS below. -->
					<div class="fill" style="background-image:url('resources/images/slider/5.jpg');"></div>
					<div class="carousel-caption">
						<!--<h2>Caption 3</h2>-->
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="icon-next"></span>
			</a>
		</header>
		<!-- HEADER END -->

		<div class="main-container">
			<div class="container">
				
				<div class="col-sm-4 col-md-3 left-sidebar">
					<div>
						<?php include('includes/navigation.php'); ?>
					</div>
					<br />
				</div>
				
				<div class="col-sm-8 col-md-9 main-content survey-form">
					<div class="-survey-header">
						<h3>Dear Graduate,</h3>
						<h4 style="padding: 0 4%;">Please complete this questionnaire accurately and truthfully. The information provided will assist the college in planning future educational needs. The result of this study will be presendted in summary form and individually responses will be treated with utmost confidentiality.</h4>
					</div>
					<hr />
					<br />

					<div class="survey-content">
						<form method="post" action="db.php" class="survey-form">

							<div class="survey-item one clearfix">
								<h4>Are you currently employed? <span class="required">*</span></h4>
								<div class="form-group options clear">				
									<input type="radio" name="survey-presentlyEmployed" id="survey-presentlyEmployed-yes" class="survey-presentlyEmployed" value="yes" required> <label for="survey-presentlyEmployed-yes"> Yes</label> <br />
									<input type="radio" name="survey-presentlyEmployed" id="survey-presentlyEmployed-no" class="survey-presentlyEmployed" value="no" required> <label for="survey-presentlyEmployed-no"> No</label> <br />
									<input type="radio" name="survey-presentlyEmployed" id="survey-presentlyEmployed-never" class="survey-presentlyEmployed" value="never" required> <label for="survey-presentlyEmployed-never"> Never been employed</label>
								</div>
								<hr />
							</div>

							<!-- IF NOT EMPLOYED -->
							<div class="survey-item two clearfix" style="display: none;">
								<h4>State the reasons why you are not employed. (You may select more than one answer)  <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed1" value="Advance or further studies"> <label for="survey-ifNotEmployed1">Advance or further studies</label> <br />
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed2" value="Family concerns"> <label for="survey-ifNotEmployed2">Family concerns</label> <br />
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed3" value="No job opportunity"> <label for="survey-ifNotEmployed3">No job opportunity</label> <br />
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed4" value="Did not look for a job"> <label for="survey-ifNotEmployed4">Did not look for a job</label> <br />
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed5" value="Health related reason"> <label for="survey-ifNotEmployed5">Health related reason</label> <br />
									<input type="checkbox" name="survey-reasonsWhyNotEmployed[]" id="survey-ifNotEmployed6" value="Lack of work experience"> <label for="survey-ifNotEmployed6">Lack of work experience</label> <br />
									<label for="" class="col-sm-5 control-label">Other reasons, please specify:</label> <br />
									<div class="">
										<input type="text" name="survey-reasonsWhyNotEmployed[]" id="" class="form-control" placeholder="Other reasons">
									</div>
								</div>
								<hr />
							</div>
							<!-- IF NOT EMPLOYED -->

							<!-- IF EMPLOYED -->
							<div class="survey-item three clearfix" style="display: none;">
								<h4>Is it your first job after obtaining your degree in City College of Angeles? <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="radio" name="survey-firstJobafterCCA" id="survey-firstJob-yes" class="firstJob" value="Yes"> <label for="survey-firstJob-yes">Yes</label> <br />
									<input type="radio" name="survey-firstJobafterCCA" id="survey-firstJob-no" class="firstJob" value="No"> <label for="survey-firstJob-no">No</label>
								</div>
								<hr />
							</div>

							<div class="survey-item four clearfix" style="display: none;">
								<h4>How long did you stay in your first job? <span class="required">*</span></h4>
								<div class="form-group options clear">								
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-6" value="<6" required> <label for="survey-howLongStayedFirstJob-6">Less than 6 months</label>	<br />
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-6-12" value="6-12" required> <label for="survey-howLongStayedFirstJob-6-12">6 to 12 months</label><br />
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-1-2" value="1-2" required> <label for="survey-howLongStayedFirstJob-1-2">1 to 2 years</label><br />
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-2-3" value="2-3" required> <label for="survey-howLongStayedFirstJob-2-3">2 to 3 years</label><br />
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-3-4" value="3-4" required> <label for="survey-howLongStayedFirstJob-3-4">3 to 4 years</label><br />
									<input type="radio" name="survey-howLongStayedFirstJob" id="survey-howLongStayedFirstJob-4" value=">4" required> <label for="survey-howLongStayedFirstJob-4">More than 4 years</label>
								</div>
								<hr />
							</div>

							<div class="survey-item five clearfix" style="display: none;">
								<h4>Is your first job related to the degree you took up in City College of Angeles? <span class="required">*</span></h4>
								<div class="form-group options clear">							
									<input type="radio" name="survey-firstJobRelated" id="survey-firstJobRelated-yes" value="yes" required> <label for="survey-firstJobRelated-yes">Yes</label> <br />
									<input type="radio" name="survey-firstJobRelated" id="survey-firstJobRelated-no" value="no" required> <label for="survey-firstJobRelated-no">No</label>
								</div>
								<hr />
							</div>

							<div class="survey-item six clearfix" style="display: none;">
								<h4>How long did it take you to find your first job after graduating in City College of Angeles? <span class="required">*</span></h4>
								<div class="form-group options clear">				
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-6" value="<6"> <label for="survey-howLongFindFirstJob-6">Less than 6 months</label><br />
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-6-12" value="6-12"> <label for="survey-howLongFindFirstJob-6-12">6 to 12 months</label><br />
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-1-2" value="1-2"> <label for="survey-howLongFindFirstJob-1-2">1 to 2 years</label><br />
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-2-3" value="2-3"> <label for="survey-howLongFindFirstJob-2-3">2 to 3 years</label><br />
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-3-4" value="3-4"> <label for="survey-howLongFindFirstJob-3-4">3 to 4 years</label><br />
									<input type="radio" name="survey-howLongFindFirstJob" id="survey-howLongFindFirstJob-4" value=">4"> <label for="survey-howLongFindFirstJob-4">More than 4 years</label>
								</div>
								<hr />
							</div>

							<div class="survey-item seven clearfix" style="display: none;">
								<h4>How did you find your first job? <span class="required">*</span></h4>
								<div class="form-group options clear">			
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-walkIn" value="walk-in"> <label for="survey-howFindFirstJob-walkIn">Walk-in applicant</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-ads" value="ads"> <label for="survey-howFindFirstJob-ads">Advertisements</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-friends" value="friends"> <label for="survey-howFindFirstJob-friends">Through friends</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-relatives" value="relatives"> <label for="survey-howFindFirstJob-relatives">Through relatives</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-business" value="family business"> <label for="survey-howFindFirstJob-business">Family business</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-jobFair" value="job fair"> <label for="survey-howFindFirstJob-jobFair">Job fair</label><br />
									<input type="radio" name="survey-howFindFirstJob" id="survey-howFindFirstJob-college" value="college"> <label for="survey-howFindFirstJob-college">Arranged by the College</label>
								</div>
								<hr />
							</div>

							<div class="survey-item eight clearfix" style="display: none;">
								<h4>Reasons why you accepted your first job.  <span class="required">*</span></h4>
								<span><i>You may select more than one answer</i></span> <br /><br />
								<div class="form-group options clear">						
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-salBen" value="Salaries and Benefits"> <label for="survey-reasonsAcceptFirstJob-salBen">Salaries and Benefits</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-carChal" value="Career Challenge"> <label for="survey-reasonsAcceptFirstJob-carChal">Career Challenge</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-relatedSS" value="Related to Special Skills"> <label for="survey-reasonsAcceptFirstJob-relatedSS">Related to my special skills</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-peer" value="Peer Influence"> <label for="survey-reasonsAcceptFirstJob-peer">Peer Influence</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-family" value="Family Influence"> <label for="survey-reasonsAcceptFirstJob-family">Family Influence</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-relatedCourse" value="Related to Course"> <label for="survey-reasonsAcceptFirstJob-relatedCourse">Related to the course taken</label><br />
									<input type="checkbox" name="survey-reasonsAcceptFirstJob[]" id="survey-reasonsAcceptFirstJob-proximity" value="Proximity to Residence"> <label for="survey-reasonsAcceptFirstJob-proximity">Proximity to residence</label><br />
									<label for="" class="col-sm-5 control-label">Other reasons, please specify:</label><br />
									<div class="">
										<input type="text" name="survey-reasonsAcceptFirstJob[]" id="" class="form-control" placeholder="Other reasons">
									</div>
								</div>
								<hr />
							</div>

							<div class="survey-item nine clearfix" style="display: none;">
								<h4>What is your first jobs's type of organization? <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="radio" name="survey-firstOrgType" id="survey-firstOrgType-government" value="government"> <label for="survey-firstOrgType-government">Government</label>
									<input type="radio" name="survey-firstOrgType" id="survey-firstOrgType-ngo" value="ngo"> <label for="survey-firstOrgType-ngo">NGO (Non-Government Organization)</label><br />
									<input type="radio" name="survey-firstOrgType" id="survey-firstOrgType-private" value="private"> <label for="survey-firstOrgType-private">Private</label><br />
									<input type="radio" name="survey-firstOrgType" id="survey-firstOrgType-public" value="public"> <label for="survey-firstOrgType-public">Public</label><br />
								</div>
								<hr />
							</div>

							<div class="survey-item ten clearfix" style="display: none;">
								<h4>How much is your monthly income <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="radio" name="survey-income" id="survey-income-10" value="<10,000"> <label for="survey-income-10">Less than 10,000 Pesos</label><br />
									<input type="radio" name="survey-income" id="survey-income-10-20" value="10,000-20,000"> <label for="survey-income-10-20">10,000-20,000</label><br />
									<input type="radio" name="survey-income" id="survey-income-20-30" value="20,000-30,000"> <label for="survey-income-20-30">20,000-30,000</label><br />
									<input type="radio" name="survey-income" id="survey-income-30-40" value="30,000-40,000"> <label for="survey-income-30-40">30,000-40,000</label><br />
									<input type="radio" name="survey-income" id="survey-income-40-50" value="40,000-50,000"> <label for="survey-income-40-50">40,000-50,000</label><br />
									<input type="radio" name="survey-income" id="survey-income-50" value=">50,000"> <label for="survey-income-50">More than 50,000</label>
								</div>
								<hr />
							</div>

							<div class="survey-item eleven clearfix" style="display: none;">
								<h4>How satisfied are you in your current job? <span class="required">*</span></h4>
								<div class="form-group options clear">
									<label for="survey-satisfaction1" style="margin-right: 10px;"><input type="radio" name="survey-satisfaction" id="survey-satisfaction1" value="yes">  Satisfied</label>
									<label for="survey-satisfaction2" style="margin-right: 10px;"><input type="radio" name="survey-satisfaction" id="survey-satisfaction2" value="no"> Not Satisfied</label>
								</div>
								<hr />
							</div>

							<div class="survey-item twelve clearfix" style="display: none;">
								<h4>Place of work <span class="required">*</span></h4>
								<div class="form-group options clear">						
									<input type="radio" name="survey-workPlace" id="survey-workPlace-local" value="local"> <label for="survey-workPlace-local">Local</label>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="survey-workPlace" id="survey-workPlace-abroad" value="abroad"> <label for="survey-workPlace-abroad">Abroad</label>
								</div>
								<hr />
							</div>

							<div class="survey-item thirteen clearfix" style="display: none;">
								<h4>Your current jobs's type of organization? <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="radio" name="survey-currentJobOrgType" id="survey-currentJobOrgType-ngo" value="ngo"> <label for="survey-currentJobOrgType-ngo">NGO (Non-Government Organization)</label><br />
									<input type="radio" name="survey-currentJobOrgType" id="survey-currentJobOrgType-private" value="private"> <label for="survey-currentJobOrgType-private">Private</label><br />
									<input type="radio" name="survey-currentJobOrgType" id="survey-currentJobOrgType-public" value="public"> <label for="survey-currentJobOrgType-public">Public</label><br />
									<input type="radio" name="survey-currentJobOrgType" id="survey-currentJobOrgType-government" value="government"> <label for="survey-currentJobOrgType-government">Government</label>
								</div>
								<hr />
							</div>

							<div class="survey-item fourteen clearfix" style="display: none;">
								<h4>What is your current job status? <span class="required">*</span></h4>
								<div class="form-group options clear">			
									<input type="radio" name="survey-currentJobStatus" id="survey-jobStatus1" value="Regular/Permanent"> <label for="survey-jobStatus1">Regular/Permanent</label><br />
									<input type="radio" name="survey-currentJobStatus" id="survey-jobStatus2" value="Part-time/Temporary"> <label for="survey-jobStatus2">Part-time/Temporary</label><br />
									<input type="radio" name="survey-currentJobStatus" id="survey-jobStatus3" value="Casual"> <label for="survey-jobStatus3">Casual</label><br />
									<input type="radio" name="survey-currentJobStatus" id="survey-jobStatus4" value="Contractual"> <label for="survey-jobStatus4">Contractual</label>
								</div>
								<hr />
							</div>

							<div class="survey-item fifteen clearfix" style="display: none;">
								<h4>Current Job level <span class="required">*</span></h4>
								<div class="form-group options clear">
									<input type="radio" name="survey-presentJobLevel" id="survey-presentJobLevel-senior" value="senior"> <label for="survey-presentJobLevel-senior">Senior Level</label><br />
									<input type="radio" name="survey-presentJobLevel" id="survey-presentJobLevel-mid" value="mid"> <label for="survey-presentJobLevel-mid">Mid Level</label><br />
									<input type="radio" name="survey-presentJobLevel" id="survey-presentJobLevel-operational" value="operational"> <label for="survey-presentJobLevel-operational">Operational Level</label><br />
									<input type="radio" name="survey-presentJobLevel" id="survey-presentJobLevel-assistant" value="assistant"> <label for="survey-presentJobLevel-assistant">Assistant Level</label>
								</div>
								<hr />
							</div>

							<div class="survey-item sixteen clearfix" style="display: none;">
								<h4>What are the reasons of staying on your current job?  <span class="required">*</span></h4>
								<span><i>You may select more than one answer</i></span> <br /><br />
								<div class="form-group options clear">
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-salBen" value="salaries and benefits"> <label for="survey-reasonsStayPresentJob-salBen">Salaries and Benefits</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob" id="survey-reasonsStayPresentJob-carChal" value="career challenge"> <label for="survey-reasonsStayPresentJob-carChal">Career Challenge</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-relatedSS" value="related to special skills"> <label for="survey-reasonsStayPresentJob-relatedSS">Related to my special skills</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-peer" value="peer influence" required> <label for="survey-reasonsStayPresentJob-peer">Peer Influence</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-family" value="family influence"> <label for="survey-reasonsStayPresentJob-family">Family Influence</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-relatedCourse" value="related to course"> <label for="survey-reasonsStayPresentJob-relatedCourse">Related to the course taken</label><br />
									<input type="checkbox" name="survey-reasonsStayPresentJob[]" id="survey-reasonsStayPresentJob-proximity" value="proximity to residence"> <label for="survey-reasonsStayPresentJob-proximity">Proximity to residence</label><br />
									<label for="" class="col-sm-5 control-label">Other reasons, please specify:</label><br />
									<div class="">
										<input type="text" name="survey-reasonsStayPresentJob[]" id="" class="form-control" placeholder="Other reasons">
									</div>
								</div>
								<hr />
							</div>

							<div class="survey-item seventeen clearfix" style="display: none;">
								<h4>What core values learned in the college did you find useful/applicable in your first job? <span style="font-size: 14px; font-style: italic;">(Rank your answer using 5 as the most useful/applicable)  <span class="required">*</span></span></h4>
								<br />
								<div class="form-group clear">
									<table class="table table-striped" border="2">
									<thead>
										<tr>
											<td width="50%" rowspan="2" align="center"><h4>Particulars</h4></td>
											<td width="50%" colspan="5" align="center">Please check under the number that suits your answer</td>
										</tr>	
										<tr>
											<td align="center">1</td>
											<td align="center">2</td>
											<td align="center">3</td>
											<td align="center">4</td>
											<td align="center">5</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Excellence</td>
											<td align="center"><input type="radio" name="survey-corval-ex" value="1" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-ex" value="2" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-ex" value="3" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-ex" value="4" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-ex" value="5" id="evaluate" required></td>
										</tr>
										<tr>
											<td>Stewardship</td>
											<td align="center"><input type="radio" name="survey-corval-stew" value="1" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-stew" value="2" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-stew" value="3" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-stew" value="4" id="evaluate" required></td>
											<td align="center"><input type="radio" name="survey-corval-stew" value="5" id="evaluate" required></td>
										</tr>
										<tr>
											<td>Resiliency</td>
											<td align="center"><input type="radio" name="survey-corval-res" value="1" id="evaluate-res" required></td>
											<td align="center"><input type="radio" name="survey-corval-res" value="2" id="evaluate-res" required></td>
											<td align="center"><input type="radio" name="survey-corval-res" value="3" id="evaluate-res" required></td>
											<td align="center"><input type="radio" name="survey-corval-res" value="4" id="evaluate-res" required></td>
											<td align="center"><input type="radio" name="survey-corval-res" value="5" id="evaluate-res" required></td>
										</tr>
									</tbody>
									</table>
								</div>
								<hr />
							</div>

							<div class="survey-item eighteen clearfix" style="display: none;">
								<h4>How would you rate the contribution of the program of your study at the institution to your personal knowledge, skills and attitudes? <span style="font-size: 14px; font-style: italic;">(Rank your answer using 5 as the highest)  <span class="required">*</span></span></h4>
								<br />
								<div class="form-group clear">
									<table class="table table-striped" border="2">
										<thead>
											<tr>
												<td width="50%" rowspan="2" align="center"><h4>Particulars</h4></td>
												<td width="50%" colspan="5" align="center">Please check under the number that suits your answer</td>
											</tr>	
											<tr>
												<td align="center">1</td>
												<td align="center">2</td>
												<td align="center">3</td>
												<td align="center">4</td>
												<td align="center">5</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Enhanced academic knowledge</td>
												<td align="center"><input type="radio" name="survey-contPersonal-eak" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-eak" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-eak" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-eak" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-eak" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved problem solving skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-ipss" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ipss" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ipss" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ipss" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ipss" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved research skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-irs" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-irs" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-irs" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-irs" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-irs" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved learning efficiency</td>
												<td align="center"><input type="radio" name="survey-contPersonal-ile" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ile" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ile" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ile" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ile" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved communication skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-ics" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ics" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ics" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ics" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ics" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved information technology skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-iits" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-iits" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-iits" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-iits" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-iits" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved team spirit</td>
												<td align="center"><input type="radio" name="survey-contPersonal-its" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-its" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-its" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-its" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-its" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved critical thinking skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-icts" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-icts" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-icts" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-icts" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-icts" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved entrepreneurial skills</td>
												<td align="center"><input type="radio" name="survey-contPersonal-ies" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ies" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ies" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ies" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPersonal-ies" value="5" id="evaluate" required></td>
											</tr>
										</tbody>
									</table>
								</div>
								<hr />
							</div>

							<div class="survey-item nineteen clearfix" style="display: none;">
								<h4>How would you rate the contribution of the program of your study at the institution to your current job? <span style="font-size: 14px; font-style: italic;">(Rank your answer using 5 as the highest)  <span class="required">*</span></span></h4>
								<br />
								<div class="form-group clear">
									<table class="table table-striped" border="2">
										<thead>
											<tr>
												<td width="50%" rowspan="2" align="center"><h4>Particulars</h4></td>
												<td width="50%" colspan="5" align="center">Please check under the number that suits your answer</td>
											</tr>	
											<tr>
												<td align="center">1</td>
												<td align="center">2</td>
												<td align="center">3</td>
												<td align="center">4</td>
												<td align="center">5</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Enhanced academic knowledge</td>
												<td align="center"><input type="radio" name="survey-contPresent-eak" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-eak" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-eak" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-eak" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-eak" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved problem solving skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-ipss" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ipss" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ipss" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ipss" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ipss" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved research skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-irs" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-irs" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-irs" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-irs" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-irs" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved learning efficiency</td>
												<td align="center"><input type="radio" name="survey-contPresent-ile" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ile" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ile" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ile" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ile" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved communication skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-ics" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ics" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ics" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ics" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ics" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved information technology skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-iits" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-iits" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-iits" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-iits" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-iits" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved team spirit</td>
												<td align="center"><input type="radio" name="survey-contPresent-its" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-its" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-its" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-its" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-its" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved critical thinking skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-icts" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-icts" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-icts" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-icts" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-icts" value="5" id="evaluate" required></td>
											</tr>
											<tr>
												<td>Improved entrepreneurial skills</td>
												<td align="center"><input type="radio" name="survey-contPresent-ies" value="1" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ies" value="2" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ies" value="3" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ies" value="4" id="evaluate" required></td>
												<td align="center"><input type="radio" name="survey-contPresent-ies" value="5" id="evaluate" required></td>
											</tr>
										</tbody>
									</table>
								</div>
								<hr />
							</div>

							<div class="survey-item button clearfix">
								<button class="btn btn-success btn-block btn-lg">Submit</button>
							</div>

						</form>
					</div>


							
				</div>

			</div>
		</div>

		<div class="clearfix"></div>
		<footer>
			<div class="container">
				
				<section class="col-md-4">
					<div class="header">
						<h4><a href="#" style="color: #fff; text-decoration: none; font-size: 16px;"> &bullet; Announcements</a></h4>
						<h4><a href="#" style="color: #fff; text-decoration: none; font-size: 16px;"> &bullet; Gallery</a></h4>
						<h4><a href="#" style="color: #fff; text-decoration: none; font-size: 16px;"> &bullet; News</a></h4>
						<h4><a href="#" style="color: #fff; text-decoration: none; font-size: 16px;"> &bullet; Yearbook</a></h4>
					</div>
				</section>
				
				<section class="col-md-4">
					<div class="header">
						<h4>Services</h4>
					</div>
					<div>
						<ul>
							<li><h5><a href="#" style="color: #fff; text-decoration: none; font-size: 13px;"> &bullet; Job Opportunities</a></h5></li>
							<li><h5><a href="#" style="color: #fff; text-decoration: none; font-size: 13px;"> &bullet; Tracer Study</a></h5></li>
							<li><h5><a href="#" style="color: #fff; text-decoration: none; font-size: 13px;"> &bullet; Request for Records</a></h5></li>
						</ul>
					</div>
				</section>
				
				<section class="col-md-4">
					<div class="contact-telephone">
						<h3 style="color: #fff; text-decoration: none; font-size: 15px;"><span class="fa fa-home"></span> 123 Arayat Blvd., Pampang, Angeles City</h3>
						<h3 style="color: #fff; text-decoration: none; font-size: 15px;"><span class="fa fa-phone"></span> (045) 888-8888</h3>
						<h3 style="color: #fff; text-decoration: none; font-size: 15px;"><span class="fa fa-mobile"></span> +63905050505</h3>
					</div>
				</section>

				<div class="clearfix"> </div>
				<br />

				<div style="text-align: center;">
					<span style="color: #fff; text-decoration: none; font-size: 13px;">&copy; Copyrights 2017 | City College of Angeles Alumni Association | All Rights Reserved</span>
				</div>
			</div>
		</footer>
	</div>


<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#survey-presentlyEmployed-no').click(function() {
			$('.survey-item.two').show();
			$('.survey-item.four').show();
			$('.survey-item.five').show();
			$('.survey-item.six').show();
			$('.survey-item.seven').show();
			$('.survey-item.eight').show();
			$('.survey-item.nine').show();
			$('.survey-item.seventeen').show();
			$('.survey-item.eighteen').show();

			$('.survey-item.three').hide();
			$('.survey-item.ten').hide();
			$('.survey-item.eleven').hide();
			$('.survey-item.twelve').hide();
			$('.survey-item.thirteen').hide();
			$('.survey-item.fourteen').hide();
			$('.survey-item.fifteen').hide();
			$('.survey-item.sixteen').hide();
			$('.survey-item.nineteen').hide();
		});

		$('#survey-presentlyEmployed-yes').click(function() {
			$('.survey-item.two').hide();

			$('.survey-item.three').show();
			$('.survey-item.four').show();
			$('.survey-item.five').show();
			$('.survey-item.six').show();
			$('.survey-item.seven').show();
			$('.survey-item.eight').show();
			$('.survey-item.nine').show();
			$('.survey-item.ten').show();
			$('.survey-item.eleven').show();
			$('.survey-item.twelve').show();
			$('.survey-item.thirteen').show();
			$('.survey-item.fourteen').show();
			$('.survey-item.fifteen').show();
			$('.survey-item.sixteen').show();
			$('.survey-item.seventeen').show();
			$('.survey-item.eighteen').show();
			$('.survey-item.nineteen').show();
		});

		$('#survey-presentlyEmployed-never').click(function() {
			$('.survey-item.two').show();
			$('.survey-item.eighteen').show();

			$('.survey-item.three').hide();
			$('.survey-item.four').hide();
			$('.survey-item.five').hide();
			$('.survey-item.six').hide();
			$('.survey-item.seven').hide();
			$('.survey-item.eight').hide();
			$('.survey-item.nine').hide();
			$('.survey-item.ten').hide();
			$('.survey-item.eleven').hide();
			$('.survey-item.twelve').hide();
			$('.survey-item.thirteen').hide();
			$('.survey-item.fourteen').hide();
			$('.survey-item.fifteen').hide();
			$('.survey-item.sixteen').hide();
			$('.survey-item.seventeen').hide();
			$('.survey-item.nineteen').hide();
		});
	});
</script>
</body>
</html>