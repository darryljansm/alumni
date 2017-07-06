<div class="manager-handler">
	<table id="datatable" class="datatable-desc table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Date Modified</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getAnnouncements = Db::getInstance()->selectData('webannouncements', 'announ_status = 1 ORDER BY announ_id DESC');
			if($getAnnouncements) {
				while ($row = $getAnnouncements->fetch()) {
				?>
				<tr>
					<td><?php echo (int)$row['announ_id']; ?></td>
					<td><?php echo ucwords($row['announ_title']); ?></td>
					<td><?php echo substr($row['announ_description'], 0,100); ?></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['announ_date_modified'])); ?></td>
					<td>
					<?php
						if(Session::getSession('admin-lvl') != 3) {
					?>
						<a class="edit-announcement-btn cursor-pointer" data-id="<?php echo $row['announ_id']; ?>" data-title="<?php echo $row['announ_title']; ?>" data-desc="<?php echo $row['announ_description']; ?>"><span class="fa fa-edit"></span> Edit</a> <br />
						<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row['announ_id'])); ?>" class="cursor-pointer delete-announcement-btn" id="delete-announcement-btn"><span class="fa fa-trash"></span> Delete</a>
					<?php } ?>
					</td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>