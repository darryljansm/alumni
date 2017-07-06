<div class="manager-handler">
	<table id="datatable" class="datatable-desc table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Student Number</th>
				<th>Department</th>
				<th>Course</th>
				<th>Year Graduated</th>
				<td>Action</td>
			</tr>
		</thead>
		<tbody>
		<?php
			$getGraduates = Db::getInstance()->selectData('graduates', 'grad_id <> 0 ORDER BY grad_lname ASC');
			if($getGraduates) {
				while ($row = $getGraduates->fetch()) {
				?>
				<tr>
					<td><?php echo (int)$row['grad_id']; ?></td>
					<td><?php echo ucwords($row['grad_lname'].", ".$row['grad_fname']." ".$row['grad_mname']); ?></td>
					<td><?php echo $row['grad_student_id']; ?></td>
					<td><?php echo ucwords($row['grad_dept']); ?></td>
					<td><?php echo ucwords($row['grad_course']); ?></td>
					<td><?php echo $row['grad_year_graduated']; ?></td>
					<td><a href="#"><span class="fa fa-search"> View</span></a></td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>