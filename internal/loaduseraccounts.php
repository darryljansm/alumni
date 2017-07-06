<div>
	<table id="datatable" class="table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Department</th>
				<th>Course</th>
				<th>Year Graduated</th>
				<th>Email</th>
				<th>Date Modified</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getUserAccounts = Db::getInstance()->queryString("SELECT * FROM graduates AS g, users AS u WHERE g.grad_id = u.user_grad_id");
			if($getUserAccounts) {
				while ($row = $getUserAccounts->fetch(PDO::FETCH_ASSOC)) {
				?>
				<tr>
					<td><?php echo (int)$row['user_id']; ?></td>
					<td><?php echo ucwords($row['grad_fname']." ".$row['grad_lname']); ?></td>
					<td><?php echo strtoupper($row['grad_dept']); ?></td>
					<td><?php echo strtoupper($row['grad_course']); ?></td>
					<td><?php echo strtoupper($row['grad_year_graduated']); ?></td>
					<td><?php echo $row['user_email']; ?></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['user_date_modified'])); ?></td>
					<td></td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>