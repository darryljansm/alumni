<?php
$getNews = Db::getInstance()->selectData('webnews','news_status = 1 ORDER BY news_id DESC LIMIT 0,5');
if($getNews) {
?>
<div class="panel panel-default">
	<div class="panel-heading">
		<span>Recent News</span>
	</div>
	<div class="panel-body" style="padding: 0;">
		<div class="news-carousel">
			<div id="news-carousel" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
				<?php
					$counter = 1;
					while ($row = $getNews->fetch(PDO::FETCH_ASSOC)) {
					?>
						<div class="item <?php if($counter == 1) { echo "active"; } ?>">
							<img src="resources/images/news/<?php echo $row['news_image']; ?>" alt="<?php echo $row['news_title']; ?>">
							<div class="carousel-caption"> <?php echo $row['news_title']; ?><a href="view?newsID=<?php echo Coding::encodeThis(Coding::encodeThis($row['news_id'])); ?>&all=false&token=<?php echo Token::generate(); ?>" style="color: #eee; font-weight: bold;"> <i>Read more...</i></a>
							</div>
						</div>
					<?php
					$counter++;
					}
				?>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#news-carousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color: #056738;"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#news-carousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color: #056738;"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</div>
<?php } ?>