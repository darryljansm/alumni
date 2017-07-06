<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		<ul class="nav side-menu">
			<li><a href="admin"><i class="fa fa-home"></i> Home </a>
			</li>
			<?php
				if(Session::getSession('admin-lvl') == 1) {
				?>
					<li><a href="admin-accounts"><i class="fa fa-user"></i> Admin Accounts </a>
					<li><a href="admin-graduates"><i class="fa fa-graduation-cap"></i> Graduates Record </a>
					<li><a href="admin-user-accounts"><i class="fa fa-users"></i> User Accounts </a>
				<?php
				}
			?>
			</li>
			<li><a><i class="fa fa-edit"></i> Web Content <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="admin-about">About Us</a></li>
					<li><a href="admin-announcements">Announcements</a></li>
					<li><a href="admin-banner">Banner</a></li>
					<li><a href="admin-contact">Contact Us</a></li>
					<li><a href="admin-jobs">Jobs</a></li>
					<?php
						if(Session::getSession('admin-lvl') == 1) {
						?>
							<li><a href="admin-menu">Menu</a></li>
						<?php
						}
					?>
					<li><a href="admin-news">News</a></li>
				</ul>
			</li>
			<li><a href="admin-feedbacks"><i class="fa fa-comment-o"></i> Feedbacks </a>
			<li><a href="admin-reports"><i class="fa fa-bar-chart"></i> Reports </a>
			</li>
			<?php
			if(Session::getSession('admin-lvl') == 1) {
			?>
				<li><a href="admin-audit-log"><i class="fa fa-list"></i> Audit Log </a>
				<li><a href="admin-backup-restore"><i class="fa fa-upload"></i> Backup & Restore </a>
			<?php
			}
			?>
			
		</ul>
	</div>

</div>
<!-- /sidebar menu -->