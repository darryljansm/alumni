<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="admin" class="site_title"><i class="fa fa-user"></i> <span>
				<?php
					if(Session::getSession('admin-lvl') == 1) {
						echo "Administrator";
					} else if(Session::getSession('admin-lvl') == 2) {
						echo "Moderator";
					} else if(Session::getSession('admin-lvl') == 3) {
						echo "Viewing";
					}
				?>
			</span></a>
		</div>

		<div class="clearfix"></div>

		<br />

		<?php include('includes/admin-sidebar-menu.php'); ?>

	</div>
</div>

<?php include('includes/admin-top-navigation.php'); ?>