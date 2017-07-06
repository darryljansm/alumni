<?php
$getMenu = Db::getInstance()->selectData('webmenu', 'menu_status = 1 ORDER BY menu_position ASC');
if($getMenu) {
?>
	<div id="menu-handler">
		<ul class="menu" id="sortable">
		<?php
		while ($row = $getMenu->fetch(PDO::FETCH_ASSOC)) {
		?>
			<li class="menu-item">
				<span class="title"><?php echo ucwords($row['menu_title']); ?></span>
				<span class="buttons pull-right">
					<a class="add-submenu-btn cursor-pointer" data-id="<?php echo Coding::encodeThis(Coding::encodeThis($row['menu_id'])); ?>"><span class="fa fa-plus"></span> Add</a>&nbsp;
					<a class="edit-menu-btn cursor-pointer" data-id="<?php echo Coding::encodeThis(Coding::encodeThis($row['menu_id'])); ?>" data-title="<?php echo $row['menu_title']; ?>" data-link="<?php echo $row['menu_link']; ?>"><span class="fa fa-edit"></span> Edit</a> &nbsp;
					<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row['menu_id'])); ?>" class="cursor-pointer delete-menu-btn"><span class="fa fa-trash"></span> Delete</a>
				</span>
			</li>
				<?php
				$menuID = (int)$row['menu_id'];
				$getSubmenu = Db::getInstance()->selectData('websubmenu', "submenu_status = 1 AND submenu_menu_id = $menuID");
				if($getSubmenu) {
				?>
					<ul class="submenu">
					<?php
					while ($row2 = $getSubmenu->fetch(PDO::FETCH_ASSOC)) {
					?>
						<li class="submenu-item">
							<span class="title"><?php echo ucwords($row2['submenu_title']); ?></span>
							<span class="buttons pull-right">
								<a class="edit-submenu-btn cursor-pointer" data-id="<?php echo Coding::encodeThis(Coding::encodeThis($row2['submenu_id'])); ?>" data-title="<?php echo $row2['submenu_title']; ?>" data-link="<?php echo $row2['submenu_link']; ?>"><span class="fa fa-edit"></span> Edit</a> &nbsp;
								<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row2['submenu_id'])); ?>" class="cursor-pointer delete-submenu-btn"><span class="fa fa-trash"></span> Delete</a>
							</span>
						</li>
					<?php
					}
					?>
					</ul>
				<?php
				}
				?>
		<?php
		}
		?>
		</ul>
	</div>
<?php
} else {
	?>
		<h3 align="center">No records yet!</h3>
	<?php
}
?>
