<?php
require_once('core/init.php');
if(!Session::sessionExists('admin-logged')) {
	Redirect::to('admin-login');
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>CCAAA | Banner Management </title>

		<!-- Bootstrap -->
		<link href="resources/plugins/gentelella-master/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="resources/plugins/gentelella-master/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="resources/plugins/gentelella-master/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- bootstrap-wysiwyg -->
		<link href="resources/plugins/gentelella-master/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
		<link rel="icon" href="resources/images/alumni_logo.png">

		<!-- Custom styling plus plugins -->
		<link href="resources/plugins/gentelella-master/build/css/custom.min.css" rel="stylesheet">
		<link href="resources/css/adminmain.css" rel="stylesheet">
	</head>

	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<?php include('includes/admin-confirm.php'); ?>
				<?php include('includes/admin-navigation.php'); ?>

				<!-- page content -->
				<div class="right_col" role="main">
					<div class="">

						<div class="page-title">
							<div class="title_left">
								<h3>Manage Banner</h3>
							</div>
						</div>

						<div class="clearfix"></div>

						<div class="row">
							<div class="col-md-12">
								<div class="x_panel">
									<div class="x_content">
										<?php include('includes/alert.php'); ?>
										<div class="row">
										<?php
											$getBanner = Db::getInstance()->selectData('webbanner', 'banner_status = 1 ORDER BY banner_id DESC LIMIT 0,1');
											if($getBanner) {
												$row = $getBanner->fetch(PDO::FETCH_ASSOC);
											?>
												<div class="">
													<button class="btn btn-success" id="change-banner-btn" data-id="<?php echo $row['banner_id']; ?>" data-title="<?php echo $row['banner_title']; ?>"><span class="fa fa-edit"></span> Change Banner</button>
													<hr>
												</div>

												<div class="edit-form" style="display: none;">
													<form id="edit-form" method="post" action="internal/update-banner.php" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
														<div class="item form-group">
															<label class="control-label col-md-3 col-sm-3 col-xs-12" for="file">File <span class="required">*</span>
															</label>
															<div class="col-md-6 col-sm-6 col-xs-12">
																<input id="file" class="form-control col-md-7 col-xs-12" data-validate-length-range="" data-validate-words="" name="file" placeholder="" required="required" type="file" accept="image/*">
															</div>
														</div>

														<div class="item form-group">
															<label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">Title <span class="required">*</span>
															</label>
															<div class="col-md-6 col-sm-6 col-xs-12">
																<input id="title" class="form-control col-md-7 col-xs-12" data-validate-length-range="" data-validate-words="" name="title" placeholder="" required="required" type="text">
															</div>
														</div>
														<input type="hidden" name="id" value="">
														<div class="form-group">
															<div class="col-md-6 col-md-offset-3">
																<button type="button" class="btn btn-primary form-cancel">Cancel</button>
																<button name="edit-banner-btn" type="submit" class="btn btn-success">Update</button>
															</div>
														</div>
														<div class="ln_solid"></div>
													</form>
												</div>

												<div class="manager-handler">
													<div class="banner-image">
														<img src="resources/images/banner/<?php echo $row['banner_image']; ?>" title="<?php echo $row['banner_title']; ?>" width="100%">
													</div>
													<div class="banner-title">
														<h2>Title: <?php echo $row['banner_title']; ?></h2>
													</div>
												</div>
											<?php
											} else {
												if(Session::getSession('admin-lvl') != 3) {
												?>
												<div class="">
													<button class="btn btn-primary" id="add-banner-btn"><span class="fa fa-plus"></span> Add New</button>
													<hr>
												</div>
												<?php } ?>

												<div class="add-form" style="display: none;">
													<form id="add-form" method="post" action="internal/add-banner.php" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
														<div class="item form-group">
															<label class="control-label col-md-3 col-sm-3 col-xs-12" for="file">File <span class="required">*</span>
															</label>
															<div class="col-md-6 col-sm-6 col-xs-12">
																<input id="file" class="form-control col-md-7 col-xs-12" data-validate-length-range="" data-validate-words="" name="file" placeholder="" required="required" type="file" accept="image/*">
															</div>
														</div>

														<div class="item form-group">
															<label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">Title <span class="required">*</span>
															</label>
															<div class="col-md-6 col-sm-6 col-xs-12">
																<input id="title" class="form-control col-md-7 col-xs-12" data-validate-length-range="" data-validate-words="" name="title" placeholder="" required="required" type="text">
															</div>
														</div>
														<div class="form-group">
															<div class="col-md-6 col-md-offset-3">
																<button type="button" class="btn btn-primary form-cancel">Cancel</button>
																<button name="add-banner-btn" type="submit" class="btn btn-success">Add</button>
															</div>
														</div>
														<div class="ln_solid"></div>
													</form>
												</div>

												<div class="manager-handler">
													<div class="banner-image">
														<h4 align="center">No records yet.</h4>
													</div>
												</div>
											<?php
											}
										?>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /page content -->

				<!-- footer content -->
				<footer>
					<div class="pull-right">
						&copy; Copyrights | City College of Angeles Alumni Association | All Rights Reserved 2017
					</div>
					<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->
			</div>
		</div>

		<!-- jQuery -->
		<script src="resources/plugins/gentelella-master/vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="resources/plugins/gentelella-master/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="resources/plugins/gentelella-master/vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script src="resources/plugins/gentelella-master/vendors/nprogress/nprogress.js"></script>
		<!-- bootstrap-wysiwyg -->
		<script src="resources/plugins/gentelella-master/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/google-code-prettify/src/prettify.js"></script>

		<!-- Custom Theme Scripts -->
		<script src="resources/plugins/gentelella-master/build/js/custom.min.js"></script>

		<script src="resources/plugins/gentelella-master/vendors/jszip/dist/jszip.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/pdfmake/build/pdfmake.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/pdfmake/build/vfs_fonts.js"></script>
		<!-- validator -->
		<script src="resources/plugins/gentelella-master/vendors/validator/validator.js"></script>
		<!-- Custom Theme Scripts -->
		<script src="resources/plugins/gentelella-master/build/js/custom.min.js"></script>
		<script type="text/javascript" src="resources/js/main.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$(".form-cancel").click(function() {
					$(".add-form").hide();
					$(".edit-form").hide();
				});

				$("#add-banner-btn").click(function() {
					$(".edit-form").hide();
					$(".add-form").show();
				});

				$("#change-banner-btn").click(function() {
					$(".add-form").hide();
					$(".edit-form").show();
					$("#edit-form input[name=id]").val($(event.target).attr("data-id"));
					$("#edit-form > div > div").children("input[name=title]").val($(event.target).attr("data-title"));
				});

				$(".delete-announcement-btn").click(function() {
					force_url = "internal/delete-announcements.php";
					force_data = "ref=" + escape($(event.target).attr("ref"));
					$("#confirm-handler-content").children("span").html("Do you want to delete the selected record?");
					$("#confirm-handler").animate({"top":"0px"}, "fast");
					$("#confirm-handler").show();
					$("html, body").animate({ scrollTop: 0 }, "fast");
  					return false;
				});

				$(".btn-confirm-cancel").click(function() {
					$("#confirm-handler").animate({"top":"-50px"}, "fast", function() {
						$("#confirm-handler").hide();
					});
				});
				$(".btn-confirm-yes").click(function() {
					forceAjaxCall(force_url, force_data);
					$("#confirm-handler").animate({"bottom":"-45px"}, "fast", function() {
						$("#confirm-handler").hide();
						location.reload();
					});
				});
			});
		</script>
	</body>
</html>