<?php
if(Session::sessionExists('alert-success')) { 
	?>
	<div class="alert alert-success" role="alert">
		<span><b>Success: </b> <?php echo Session::getSession('alert-success'); ?></span>
	</div>
	<?php
	Session::deleteSession('alert-success'); // Delete the message
} else if(Session::sessionExists('alert-error')) {
	?>
	<div class="alert alert-danger" role="alert">
		<span><b>Error: </b> <?php echo Session::getSession('alert-error'); ?></span>
	</div>
	<?php
	Session::deleteSession('alert-error'); // Delete the message
}
?>