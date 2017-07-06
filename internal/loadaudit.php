<div>
	<table id="datatable" class="table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Table</th>
				<th>Action</th>
				<th>Name</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getFeeds = Db::getInstance()->selectData('auditlog', 'audit_id <> 0');
			if($getFeeds) {
				while ($row = $getFeeds->fetch(PDO::FETCH_ASSOC)) {
				?>
				<tr>
					<td><?php echo (int)$row['audit_id']; ?></td>
					<td><?php echo $row['audit_table_affected']; ?></td>
					<td><?php echo $row['audit_action']; ?></td>
					<td><?php
						$adminID = (int)$row['audit_admin_id'];
						$getAdmin = Db::getInstance()->selectData('admin', "admin_id = $adminID");
						if($getAdmin) {
							$row2 = $getAdmin->fetch(PDO::FETCH_ASSOC);
							echo ucwords($row2['admin_fname']." ".$row2['admin_lname']);
						} else {
							echo "";
						}
					?></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['audit_date_added'])); ?></td>
				</tr>
				<?php
				}
			}
		?>
		</tbody>
	</table>
</div>

<script src="resources/plugins/gentelella-master/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="resources/plugins/gentelella-master/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="resources/plugins/gentelella-master/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="resources/plugins/gentelella-master/vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="resources/plugins/gentelella-master/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="resources/plugins/gentelella-master/vendors/google-code-prettify/src/prettify.js"></script>

<script src="resources/plugins/gentelella-master/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="resources/plugins/gentelella-master/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/jszip/dist/jszip.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="resources/plugins/gentelella-master/vendors/pdfmake/build/vfs_fonts.js"></script>
<!-- validator -->
<script src="resources/plugins/gentelella-master/vendors/validator/validator.js"></script>
<script type="text/javascript">
	$('#datatable').DataTable( {
		"order": [[ 0, "desc" ]]
	});
</script>