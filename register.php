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
							<h2>Account Information</h2>
						</div>
						<br />
						<div class="activate-form">
							<form method="post" action="db.php">
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">E-mail Address: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="email" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Permanent Address: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="address" class="form-control" maxlength="500" required="" >
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Contact Number: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="contact" class="form-control" maxlength="500" required="" >
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Username: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="text" name="username" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Password: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="password" name="password" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div class="form-group clearfix">
									<div class="col-offset-sm-2 col-sm-3">
										<label class="">Repeat Password: <span class="required">*</span></label>
									</div>
									<div class="col-sm-9">
										<input type="password" name="password2" class="form-control" maxlength="50" required="">
									</div>
								</div>
								
								<div style="text-align: center;">
									<div class="clearfix" style="max-width: 260px; margin-left: auto; margin-right: auto;">
									<?php
										// show captcha HTML using Securimage::getCaptchaHtml()
										require_once 'resources/plugins/securimage/securimage.php';
										$options = array();
										$options['input_name']             = 'ct_captcha'; // change name of input element for form post
										$options['disable_flash_fallback'] = false; // allow flash fallback

										if (!empty($_SESSION['ctform']['captcha_error'])) {
										// error html to show in captcha output
										$options['error_html'] = $_SESSION['ctform']['captcha_error'];
										}

										echo "<div id='captcha_container_1' class='clearfix'>\n";
										echo Securimage::getCaptchaHtml($options);
										echo "\n</div>\n";
									?>
									</div>
								</div>

								<hr />
								<div class="form-group clearfix">
									<div class="pull-right">
										<button type="submit" name="register-btn" class="btn btn-primary">Regsiter</button>
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