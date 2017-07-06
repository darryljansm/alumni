<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Activate Account - Alumni Association</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="resources/plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/main.css">
		<link rel="icon" href="resources/images/alumni_logo.png">
</head>
<body>
	<div class="wrapper">
		
		<div class="header">
			<?php include('includes/header.php'); ?>
		</div>

		<div class="main clearfix">
			<div class="container">
				<?php include('includes/alert.php'); ?>
				<div class="col-sm-7 col-md-8 main-body">
					<div class="row activate-main">
					<br />
						<div style="padding-left: 3%;">
							<h2>Activate Account</h2>
						</div>
						<br />
						<div class="alert alert-danger" role="alert" style="width: 90%; margin-left: auto; margin-right: auto;">
							<span><b>Note: </b> The data you will provide in activation of your account should match the data on the CCA Registrar's record.</span>
						</div>
						<br />
						<div class="activate-form">
							<form method="post" action="db.php">
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">First Name: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="fname" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Middle Name: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="mname" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Last Name: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="lname" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Gender: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<select class="form-control" name="gender">
											<option value="0">Gender</option>
											<option value="2">Female</option>
											<option value="1">Male</option>
										</select>
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Date of Birth: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<div class="col-sm-4">
											<select class="form-control" name="dob-m">
												<option>Month</option>
											<?php
												for ($m=1; $m < 13 ; $m++) { 
												?>
													<option value="<?php echo $m; ?>"><?php echo date("F", strtotime("2000-".$m."-01")); ?></option>
												<?php
												}
											?>
											</select>
										</div>
										<div class="col-sm-4">
											<select class="form-control" name="dob-d">
												<option>Day</option>
											<?php
												for ($d=1; $d < 32 ; $d++) { 
												?>
													<option value="<?php echo $d; ?>"><?php echo date("d", strtotime("2000-01-".$d)); ?></option>
												<?php
												}
											?>
											</select>
										</div>
										<div class="col-sm-4">
											<select class="form-control" name="dob-y">
												<option>Year</option>
											<?php
												for ($y=date("Y"); $y >= (date("Y")-60) ; $y--) { 
												?>
													<option value="<?php echo $y; ?>"><?php echo date("Y", strtotime($y."-01-01")); ?></option>
												<?php
												}
											?>
											</select>
										</div>
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Student Number: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="stud-num" class="form-control" maxlength="10" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Department: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<select name="department" class="form-control">
											<option value="0">Department</option>
											<option value="IBM">Institute of Business Management</option>
											<option value="ICSLIS">Institute of Computing Studies and Library Information Science</option>
											<option value="EDUC">Institute of Education</option>
										</select>
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Course: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<select name="course" class="form-control">
											<option value="0">Course</option>
											<option value="BPE">Bachelor of Physical Education</option>
											<option value="BSA">BS Accounting</option>
											<option value="BTTE">Bachelor of Technical Teacher Education</option>
											<option value="BSCS">BS Computer Science</option>
											<option value="BSIS">BS Information System</option>
											<option value="BSLIS">BS Library Information Science</option>
											<option value="BSTM">BS Tourism Management</option>
										</select>
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Year Graduated: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<select name="year-grad" class="form-control">
										<?php
											for ($i=date("Y"); $i >= 2016 ; $i--) { 
											?>
												<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
											<?php
											}
										?>
										</select>
									</div>
								</div>
								<hr />
								<div class="form-group clearfix">
									<div class="pull-right">
										<button type="submit" name="activate-account-btn" class="btn btn-primary">Activate</button>
									</div>
								</div>

								<br />
								<br />
							</form>
						</div>

					</div>
				</div>
				<br />

				<?php include('includes/sidebar.php'); ?>
			</div>
		</div>

		<div class="clearfix"></div>
		<?php include('includes/footer.php'); ?>
		
	</div>


<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>