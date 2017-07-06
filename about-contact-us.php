<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact Us - Alumni Association</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="resources/plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/full-slider.css">
		<link rel="stylesheet" type="text/css" href="resources/css/main2.css">
		<link rel="icon" href="resources/images/alumni_logo.png">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=757066451167176";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

	<div class="wrapper">
		<?php include('includes/header.php'); ?>

		<div class="main-container">
			<div class="container">

				<?php include('includes/alert.php'); ?>
				<div class="col-sm-4 col-md-3 left-sidebar">
					<div>
						<?php include('includes/navigation.php'); ?>
					</div>

					<br />

					<div>
						<?php include('includes/gallery-banner.php'); ?>
					</div>

					<br />

					<div class="fb-like-button box-shadow">
						<div class="fb-like" data-href="https://www.facebook.com/CCAAAUnofficial/" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
					</div>

				</div>

				<div class="col-sm-4 col-md-6 main-content contact-us box-shadow">
					<div>
						<div class="contact-header">
							<h2 class="green"><span></span>Contact Us</h2>
						</div>
						<br />
						<div class="contact-content">
							<div>
								<h4><span class="fa fa-home"></span> Office Address:</h4>
								<p>123 Arayat Blvd., Pampang, Angeles City, Pampanga</p>
							</div>
							<br />
							<div>
								<h4><span class="fa fa-phone"></span> Telephone Number:</h4>
								<p>(045) 888-88-88</p>
							</div>
							<br />
							<div>
								<h4><span class="fa fa-mobile"></span> Mobile Number:</h4>
								<p>+63905050505</p>
							</div>
						</div>

					</div>
				</div>

				<div class="col-sm-4 col-md-3 side-contact">
					<div class=" box-shadow">
						<?php include('includes/side-login.php'); ?>
					</div>
					<?php include('includes/contact-form.php'); ?>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<?php include('includes/footer.php'); ?>
		
	</div>


<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.tracer-study-banner').click(function() {
			$('.side-login input[name=username]').focus();
		});
		$('.jobs-banner').click(function() {
			$('.side-login input[name=username]').focus();
		});
		$('.yearbook-banner').click(function() {
			$('.side-login input[name=username]').focus();
		});
	});
</script>
</body>
</html>