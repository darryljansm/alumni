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

		<title>CCAAA | Graduates </title>

		<!-- Bootstrap -->
		<link href="resources/plugins/gentelella-master/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="resources/plugins/gentelella-master/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="resources/plugins/gentelella-master/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- bootstrap-wysiwyg -->
		<link href="resources/plugins/gentelella-master/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
		
		<!-- NProgress -->
		<link href="resources/plugins/gentelella-master/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="resources/plugins/gentelella-master/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
		<!-- Datatables -->
		<link href="resources/plugins/gentelella-master/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
		<link href="resources/plugins/gentelella-master/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
		<link href="resources/plugins/gentelella-master/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
		<link href="resources/plugins/gentelella-master/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
		<link href="resources/plugins/gentelella-master/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
		<link rel="icon" href="resources/images/alumni_logo.png">

		<!-- Custom styling plus plugins -->
		<link href="resources/plugins/gentelella-master/build/css/custom.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="resources/css/adminmain.css">
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
								<h3>Graduates Records Management</h3>
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
												if(Session::getSession('admin-lvl') != 3) {
												?>
												<div class="row" style="padding-left: 2%; padding-right: 2%;">
													<a href="#" id="import-graduates-btn" class="btn btn-success"><span class="fa fa-upload"></span> Import CSV File</a>
													<hr>
												</div>

												<div class="row import-form" style="display: none;">
													<div class="x_content">
														<form id="import-form" method="post" action="internal/import-graduates.php" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>

															<div class="item form-group">
																<label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">CSV File <span class="required">*</span>
																</label>
																<div class="col-md-6 col-sm-6 col-xs-12">
																	<input id="file" class="form-control col-md-7 col-xs-12" name="file" placeholder="" required="required" type="file" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" />
																</div>
															</div>
															<div class="form-group">
																<div class="col-md-6 col-md-offset-3">
																	<button type="button" class="btn btn-primary form-cancel">Cancel</button>
																	<button name="import-graduates-btn" type="submit" class="btn btn-success">Import</button>
																</div>
															</div>
															<div class="ln_solid"></div>
														</form>
													</div>
												</div>

												<div class="row view" style="display: none;">
													<div class="x_content">
														<div></div>
													</div>
												</div>

												<?php
												}
											?>
											<br />
											<?php include('internal/loadgraduates.php'); ?>
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

		<script src="resources/plugins/gentelella-master/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
		<script src="resources/plugins/gentelella-master/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
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
				var force_url = "";
				var force_data = "";
				$('#datatable').DataTable( {
					"order": [[ 0, "desc" ]],
					"bDestroy": true
				} );
				loadTable($("#announcement-handler"), "loaders/loadannouncements.php");

				$(".form-cancel").click(function() {
					$(".import-form").hide();
				});

				$("#import-graduates-btn").click(function() {
					$(".import-form").show();
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