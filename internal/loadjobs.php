<div class="manager-handler">
	<table id="datatable" class="datatable-desc table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Company</th>
				<th>Position</th>
				<th>Vacancy</th>
				<th>Date Modified</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getJobs = Db::getInstance()->selectData('webjobs', 'job_status = 1 ORDER BY job_id DESC');
			if($getJobs) {
				while ($row = $getJobs->fetch()) {
				?>
				<tr>
					<td><?php echo $row['job_id']; ?></td>
					<td><?php echo ucfirst($row['job_title']); ?></td>
					<td><?php echo $row['job_company']; ?></td>
					<td><?php echo ucfirst($row['job_positions']); ?></td>
					<td><?php echo ucfirst($row['job_vacancy']); ?></td>
					<td><?php echo date("F d, Y h:ia", strtotime($row['job_date_modified'])); ?></td>
					<td>
					<?php
						if(Session::getSession('admin-lvl') != 3) {
					?>
						<a class="edit-job-btn cursor-pointer" data-id="<?php echo Coding::encodeThis(Coding::encodeThis($row['job_id'])); ?>" data-title="<?php echo $row['job_title']; ?>" data-company="<?php echo $row['job_company']; ?>" data-position="<?php echo $row['job_positions']; ?>" data-vacancy="<?php echo $row['job_vacancy']; ?>" data-desc="<?php echo $row['job_description']; ?>"><span class="fa fa-edit"></span> Edit</a> <br />
						<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row['job_id'])); ?>" class="cursor-pointer delete-job-btn" id="delete-job-btn"><span class="fa fa-trash"></span> Delete</a>
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