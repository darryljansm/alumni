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
					<div>
							<?php
								$getBanner = Db::getInstance()->selectData('webbanner','banner_status = 1 ORDER BY banner_id DESC LIMIT 0,1');
								if($getBanner) {
								$row = $getBanner->fetch();
								?>
								<div class="main-image">
									<div>
										<img src="resources/images/banner/<?php echo $row['banner_image']; ?>" width="">
									</div>
								</div>
								<div class="clearfix"><br /></div>
								<?php
								}
							?>

						<?php include('includes/slider.php'); ?>

					</div>
				</div>

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