<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
if(Input::get('newsID') || Input::get('newsID') == '0') {
	$mode = 1;
	if(Input::get('newsID') !== '0') {
		$id = Coding::decodeThis(Coding::decodeThis(Input::get('newsID')));
		if(!is_numeric($id)) {
			Redirect::to('error-404');
		}
	}
} else if(Input::get('announID') || Input::get('announID') == '0') {
	$mode = 2;
	if(Input::get('announID') !== '0') {
		$id = Coding::decodeThis(Coding::decodeThis(Input::get('announID')));
		if(!is_numeric($id)) {
			Redirect::to('error-404');
		}
	}
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
				
				<div class="col-sm-7 col-md-8 main-body">
					<div>
					<?php
						if($mode == 1) { // news
							if(Input::get('newsID') != '0') {
								$getNews = Db::getInstance()->selectData('webnews', "news_id = $id LIMIT 0,1");
								if($getNews) {
									$row = $getNews->fetch();
									?>
										<div class="announcement-single">
											<div class="announcement-title">
												<h1><?php echo ucfirst($row['news_title']); ?></h1>
											</div>
											<div class="announcement-date">
												<span><?php echo date("F d, Y h:iA", strtotime($row['news_date_modified'])); ?></span>
											</div>
											<br />
											<div class="news-image">
												<img src="resources/images/news/<?php echo $row['news_image']; ?>" width="100%">
											</div>
											<br />
											<div class="announcement-description">
												<p><?php echo $row['news_description']; ?></p>
											</div>
										</div>

									<?php
								}
							}
						} else if($mode == 2) { // announcements
							if(Input::get('announID') != '0') {
								$getAnnouncement = Db::getInstance()->selectData('webannouncements', "announ_id = $id LIMIT 0,1");
								if($getAnnouncement) {
									$row = $getAnnouncement->fetch();
									?>
										<div class="announcement-single">
											<div class="announcement-title">
												<h1><?php echo ucfirst($row['announ_title']); ?></h1>
											</div>
											<div class="announcement-date">
												<span><?php echo date("F d, Y h:iA", strtotime($row['announ_date_modified'])); ?></span>
											</div>
											<br />
											<br />
											<div class="announcement-description">
												<p><?php echo $row['announ_description']; ?></p>
											</div>
										</div>

									<?php
								}
							}
						}
					?>
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