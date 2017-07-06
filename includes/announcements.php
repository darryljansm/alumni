<div class="announcements">
	<div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="side-pannel-title">Announcements</span>
			</div>
			<div class="panel-body">
			<?php
				$getAnnouncements = Db::getInstance()->selectData('webannouncements', 'announ_status = 1 ORDER BY announ_id DESC LIMIT 0,4');
				if($getAnnouncements) {
					while ($row = $getAnnouncements->fetch(PDO::FETCH_ASSOC)) {
					?>
						<div class="announcement">
							<div class="announcement-title">
								<h2><?php echo ucfirst($row['announ_title']); ?></h2>
							</div>
							<div class="announcement-date">
								<span><?php echo date("F d, Y h:iA", strtotime($row['announ_date_modified'])); ?></span>
							</div>
							<div class="announcement-button">
								<a href="view?announID=<?php echo Coding::encodeThis(Coding::encodeThis($row['announ_id'])); ?>&all=false&token=<?php echo Token::generate(); ?>">Read More</a>
							</div>
						</div>
					<?php
					}
				} else {
					echo "No records yet.";
				}
			?>
			</div>
			<div class="panel-footer" style="background-color: #fff; text-align: center;">
				<a href="announcements">See All</a>
			</div>
		</div>
	</div>
</div>