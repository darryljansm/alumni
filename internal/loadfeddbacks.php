<div>
	<table id="datatable" class="table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Subject</th>
				<th>Date</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getFeeds = Db::getInstance()->selectData('feedbacks', 'fb_id <> 0');
			if($getFeeds) {
				while ($row = $getFeeds->fetch(PDO::FETCH_ASSOC)) {
				?>
				<tr>
					<td><?php echo (int)$row['fb_id']; ?></td>
					<td><?php echo ucwords($row['fb_name']); ?></td>
					<td><?php echo $row['fb_email']; ?></td>
					<td><?php echo $row['fb_subject']; ?></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['fb_date_added'])); ?></td>
					<td>
						<a href="#view-message"><span class="fa fa-search"></span> View</a>
					</td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>