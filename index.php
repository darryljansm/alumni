<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
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
				
				<div class="col-sm-4 col-md-3 left-sidebar">
					<div>
						<?php include('includes/navigation.php'); ?>
					</div>

					<br />

					<div class="gallery-banner side-banner box-shadow">
						<a href="gallery"><img src="resources/images/gallery.jpg" width="100%"></a>
					</div>

					<br />

					<div class="fb-like-button box-shadow">
						<div class="fb-like" data-href="https://www.facebook.com/CCAAAUnofficial/" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
					</div>

				</div>
				
				<div class="col-sm-4 col-md-6 main-content">
					<div class="welcome-banner box-shadow">
						<img src="resources/images/welcome-banner.png" style="width: 100%;">
					</div>
					<br />
					<div class="latest-news box-shadow">
						<div class="panel">
							<div class="panel-heading">
								<h4 class="green"><span class="fa fa-newspaper-o"></span> &nbsp;&nbsp; Latest News</h4>
							</div>
							<div class="panel-body">
								<?php
									$getLatestNews = Db::getInstance()->queryString("SELECT * FROM webnews WHERE news_status = 1 ORDER BY news_id DESC LIMIT 0,1");
									if($getLatestNews->rowCount() > 0) {
										$row = $getLatestNews->fetch();
									?>
										<div class="news-image">
											<img src="resources/images/news/<?php echo $row['news_image']; ?>">
										</div>
										<div class="news-content" style="padding: 10px;">
											<div class="news-title">
												<a href="#" class="green" style="text-decoration: none;"><h4><?php echo $row['news_title']; ?></h4></a>
											</div>
											<div class="news-date">
												<span style="font-size: 13px; color: #888;"><span class="fa fa-clock-o"></span> <?php echo date("H:ia F d, Y", strtotime($row['news_date_added'])); ?></span>
											</div>
											<br />
											<div class="news-description">
												<p class="green">
													<?php
														echo substr($row['news_description'], 0,200);
														if(strlen($row['news_description']) > 200) {
														?>
															 <a href="#">[Read more]</a>
														<?php
														}
													?>
												</p>
											</div>
										</div>
									<?php

									} else {

									}
								?>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-sm-4 col-md-3 right-sidebar">
					<div class=" box-shadow">
						<?php include('includes/side-login.php'); ?>
					</div>

					<br />

					<div>
						<?php include('includes/jobs-banner.php'); ?>
					</div>

					<br />

					<div>
						<?php include('includes/yearbook-banner.php'); ?>
					</div>

					<br />

					<div>
						<?php include('includes/tracer-study-banner.php'); ?>
					</div>
				</div>

			</div>
		</div>

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