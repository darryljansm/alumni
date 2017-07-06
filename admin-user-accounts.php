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

		<title>CCAAA | Admin Accounts </title>

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
		<link href="resources/css/adminmain.css" rel="stylesheet">
	</head>

	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<?php include('includes/admin-navigation.php'); ?>

				<!-- page content -->
				<div class="right_col" role="main">
					<div class="">

						<div class="page-title">
							<div class="title_left">
								<h3>Manage Users Accounts</h3>
							</div>
						</div>

						<div class="clearfix"></div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="x_panel">
									<div class="x_content">
										<div class="row">
											
											<?php include('internal/loaduseraccounts.php'); ?>

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
					"lengthChange": false,
					"bDestroy": true
				} );
				loadTable($("#user-accounts-handler"), "loaders/loadaccounts.php");

				$(".form-cancel").click(function() {
					$(".add-form").hide();
					$(".edit-form").hide();
				});

				$("#add-account-btn").click(function() {
					$(".edit-form").hide();
					$(".add-form").show();
				});

				$(".edit-account-btn").click(function() {
					$(".add-form").hide();
					$(".edit-form").show();
				});

				$(".edit-account-btn").click(function() {
					$(".add-form").hide();
					$(".edit-form").show();
					$("#edit-form").children("input[name=id]").val($(event.target).attr("data-id"));
					$("#edit-form > div > div").children("input[name=fname]").val($(event.target).attr("data-fname"));
					$("#edit-form > div > div").children("input[name=mname]").val($(event.target).attr("data-mname"));
					$("#edit-form > div > div").children("input[name=lname]").val($(event.target).attr("data-lname"));
					$("#edit-form > div > div").children("input[name=email]").val($(event.target).attr("data-email"));
					$("#edit-form > div > div").children("input[name=username]").val($(event.target).attr("data-uname"));
				});

				$(".delete-account-btn").click(function() {
					force_url = "internal/delete-accounts.php";
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