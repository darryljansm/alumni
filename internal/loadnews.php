<div>
	<table id="datatable" class="table table-striped table-bordered bulk_action">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Image</th>
				<th>Date Modified</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$getNews = Db::getInstance()->selectData('webnews', 'news_status = 1');
			if($getNews) {
				while ($row = $getNews->fetch()) {
				?>
				<tr>
					<td><?php echo (int)$row['news_id']; ?></td>
					<td><?php echo ucwords($row['news_title']); ?></td>
					<td><?php echo substr($row['news_description'], 0,100); ?></td>
					<td><img src="resources/images/news/<?php echo $row['news_image']; ?>" height="100"></td>
					<td><?php echo date("F d, Y h:iA", strtotime($row['news_date_modified'])); ?></td>
					<td>
					<?php
						if(Session::getSession('admin-lvl') != 3) {
					?>
						<a href="#" id="edit-news-btn" class="edit-news-btn" data-id="<?php echo $row['news_id']; ?>" data-title="<?php echo $row['news_title']; ?>" data-desc="<?php echo $row['news_description']; ?>"><span class="fa fa-edit"></span> Edit</a> <br />
						<a ref="<?php echo Coding::encodeThis(Coding::encodeThis($row['news_id'])); ?>" class="cursor-pointer delete-news-btn" id="delete-news-btn"><span class="fa fa-trash"></span> Delete</a>
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