<div class="contact-form box-shadow">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="green"><span class="fa fa-commenting-o"></span> &nbsp;&nbsp; Send Us Feedback</span>
		</div>
		<div class="panel-body">
			<form method="post" action="db.php">
				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-user"></span></span>
					<input type="text" name="name" maxlength="150" class="form-control" placeholder="Full name" aria-describedby="sizing-addon3" required="">
				</div>
				<br />
				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="sizing-addon3">@</span>
					<input type="email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" maxlength="100" class="form-control" placeholder="Email Address" aria-describedby="sizing-addon3" required="">
				</div>
				<br />
				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-envelope"></span></span>
					<input type="text" name="subject" maxlength="150" class="form-control" placeholder="Subject" aria-describedby="sizing-addon3" required="">
				</div>
				<br />
				<div class="form-group">
					<textarea class="form-control" name="message" rows="3" style="resize: none;" placeholder="Message" required=""></textarea>
				</div>

				<div style="text-align: center;">
					<div class="clearfix" style="max-width: 260px; margin-left: auto; margin-right: auto;">
					<?php
						// show captcha HTML using Securimage::getCaptchaHtml()
						require_once 'resources/plugins/securimage/securimage.php';
						$options = array();
						$options['input_name']             = 'ct_captcha'; // change name of input element for form post
						$options['disable_flash_fallback'] = false; // allow flash fallback

						if (!empty($_SESSION['ctform']['captcha_error'])) {
						// error html to show in captcha output
						$options['error_html'] = $_SESSION['ctform']['captcha_error'];
						}

						echo "<div id='captcha_container_1' class='clearfix'>\n";
						echo Securimage::getCaptchaHtml($options);
						echo "\n</div>\n";
					?>
					</div>
				</div>
		</div>
		<div class="panel-footer" style="background-color: #fff;">
				<div class="pull-right">
					<button type="submit" name="contact-btn" class="btn btn-success btn-block" style="background-color: #056738; padding-right: 20px; padding-left: 20px;">Submit</button>
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
	</div>
</div>