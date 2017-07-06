<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Alumni Association</title>
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
				
				<div class=" main-body">
					<div>
						
						<div class="admin-login">
						<?php include('includes/alert.php'); ?>
							<div class="panel panel-default">
								<div class="panel-heading" style="text-align: center;">
									<span class="side-pannel-title">Administrator Login</span>
								</div>
								<div class="panel-body">
									<br />
									<form method="post" action="db.php">
										<div class="input-group input-group-md">
											<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-user"></span></span>
											<input type="text" name="admin-username" maxlength="50" class="form-control" placeholder="Username" title="Please provide your username." aria-describedby="sizing-addon3" required="" autofocus="">
										</div>
										<br />
										<div class="input-group input-group-md">
											<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-lock"></span></span>
											<input type="password" name="admin-password" maxlength="50" class="form-control" placeholder="Password" aria-describedby="sizing-addon3" required="">
										</div>
										<input type="hidden" name="form-token" value="<?php echo Token::generate(); ?>">
									<br />
								</div>
								<div class="panel-footer" style="background-color: #fff;">
									<br />
										<div class="pull-right">
											<button type="submit" name="admin-login-btn" class="btn btn-md btn-success" style="background-color: #056738; padding-right: 20px; padding-left: 20px;">Login</button>
										</div>
										<div>
											<a href="#"><i>Forgot Password?</i></a>
										</div>
										<div class="clearfix"></div>
									</form>
									<br />
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>

		<div class="clearfix"></div>
		<?php include('includes/footer.php'); ?>
		
	</div>


<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>