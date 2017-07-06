<div class="side-login">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="fa fa-user-o"></span> <span class="side-pannel-title"> &nbsp;&nbsp; Login</span>
		</div>
		<div class="panel-body">
			<form method="post" action="db.php">
				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-user"></span></span>
					<input type="text" name="username" maxlength="50" class="form-control" placeholder="Username" aria-describedby="sizing-addon3" required="">
				</div>
				<br />
				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="sizing-addon3"><span class="fa fa-lock"></span></span>
					<input type="password" name="password" maxlength="50" class="form-control" placeholder="Password" aria-describedby="sizing-addon3" required="">
				</div>
		</div>
		<div class="panel-footer" style="background-color: #fff;">
				<div class="pull-right">
					<button type="submit" name="login-btn" class="btn btn-sm btn-success" style="background-color: #056738; padding-right: 20px; padding-left: 20px;">Login</button>
				</div>
				<div>
					<a href="activate-account" class="green" style="font-size: 13px; text-decoration: none;">Activate Account</a><br />
					<a href="#" class="green" style="font-size: 13px; text-decoration: none;">Forgot Password?</a>
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
	</div>
</div>