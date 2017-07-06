<nav class="navbar navbar-inverse box-shadow">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			<?php
				$getMenu = Db::getInstance()->selectData('webmenu', 'menu_status = 1 ORDER BY menu_position ASC');
				if($getMenu) {
					while ($row = $getMenu->fetch(PDO::FETCH_ASSOC)) {
						$menuID = (int)$row['menu_id'];
						$getSubmenu = Db::getInstance()->selectData('websubmenu', "submenu_status = 1 AND submenu_menu_id = $menuID");
						if($getSubmenu) {
						?>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $row['menu_title']; ?> <span class="caret"></span></a>
								<ul class="dropdown-menu">
								<?php
									while ($row2 = $getSubmenu->fetch(PDO::FETCH_ASSOC)) {
									?>
										<li><a href="<?php echo $row2['submenu_link']; ?>"><?php echo $row2['submenu_title']; ?></a></li>
									<?php
									}
								?>
								</ul>
							</li>
						<?php
						} else {
						?>
							<li><a href="<?php echo $row['menu_link']; ?>"><?php echo $row['menu_title']; ?></a></li>
						<?php
						}
					}
				}
				if(Session::sessionExists('user-logged')) {
				?>
					<li><a href="user-survey">Graduates Survey</a></li>
					<li><a href="logout">Logout</a></li>
				<?php
				}
			?>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>