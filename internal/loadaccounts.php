<div>
	<table id="datatable" class="table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Username</th>
				<th>Level</th>
				<th>Date Modified</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getAccounts = Db::getInstance()->selectData('admin', 'admin_status = 1 AND admin_id <> 1');
			if($getAccounts) {
				while ($row = $getAccounts->fetch()) {
				?>
				<tr>
					<td><?php echo (int)$row['admin_id']; ?></td>
					<td><?php echo ucwords($row['admin_fname']." ".$row['admin_lname']); ?></td>
					<td><?php echo $row['admin_email']; ?></td>
					<td><?php echo $row['admin_username']; ?></td>
					<td><?php
						if($row['admin_level'] == 1) {
							echo "System Admin";
						} else if($row['admin_level'] == 2) {
							echo "Moderator";
						} else {
							echo "Viewing";
						}
					?></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['admin_date_modified'])); ?></td>
					<td>
						<a class="edit-account-btn cursor-pointer" data-id="<?php echo $row['admin_id']; ?>" data-fname="<?php echo $row['admin_fname']; ?>" data-mname="<?php echo $row['admin_mname']; ?>" data-lname="<?php echo $row['admin_lname']; ?>" data-email="<?php echo $row['admin_email']; ?>" data-uname="<?php echo $row['admin_username']; ?>" data-level="<?php echo $row['admin_level']; ?>"><span class="fa fa-edit"></span> Edit</a> 
						<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row['admin_id'])); ?>" class="cursor-pointer delete-account-btn" id="delete-account-btn"><span class="fa fa-trash"></span> Delete</a>
					</td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>