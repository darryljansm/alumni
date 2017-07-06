<?php
require_once('core/init.php');
if(Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>News - Alumni Association</title>
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
						<div class="news-main">
						<?php
						$getNews = Db::getInstance()->selectData('webnews','news_status = 1 ORDER BY news_id DESC LIMIT 0,10');
						if($getNews) {
							while ($row = $getNews->fetch(PDO::FETCH_ASSOC)) {
							?>
								<div class="news-item clearfix">
									<div class="col-sm-4 news-image">
										<img src="resources/images/news/<?php echo $row['news_image']; ?>">
									</div>
									<div class="col-sm-8 news-details clearfix">
										<div class="news-title">
											<h2><?php echo ucfirst($row['news_title']); ?></h2>
										</div>
										<div class="news-date">
											<span><?php echo date("F d, Y h:ia", strtotime($row['news_date_modified'])); ?></span>
										</div>
										<div class="news-description">
											<p><?php echo ucfirst(substr($row['news_description'], 0,100)); if(strlen($row['news_description']) > 100) { echo "..."; } ?> <a href="view?newsID=<?php echo Coding::encodeThis(Coding::encodeThis($row['news_id'])); ?>&all=false&token=<?php echo Token::generate(); ?>"><i>Read more...</i></a></p>
										</div>
									</div>
								</div>
							<?php
							}
						} else {
						?>
							<h2>No records yet!</h2>
						<?php
						}
						?>
						</div>
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