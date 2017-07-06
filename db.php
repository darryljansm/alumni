<?php
require_once('core/init.php');
require_once('resources/plugins/securimage/securimage.php');
$dateTime = date("Y-m-d H:i:s");

if($_SERVER['REQUEST_METHOD'] === 'POST') {
    
	if(isset($_POST['admin-login-btn'])) {
		if(!Token::check(Input::get('form-token'))) {
			Redirect::referer();
		} else {
			$username = Sanitize::clean(Input::get('admin-username'));
			$password = Sanitize::clean(Input::get('admin-password'));

			$checkLogin = Db::getInstance()->adminLogin($username, $password);
			if($checkLogin) {
				$addAudit = Db::getInstance()->auditLog('admin', 'Admin Login', Session::getSession('admin-id'));
				Redirect::to('admin');
			} else { // incorrect
				Session::putSession('alert-error','Account invalid!');
				Redirect::getBack();
			}
		}
	}

	else if(isset($_POST['activate-account-btn'])) {

		$fname = Sanitize::clean(Input::get('fname'));
		$mname = Sanitize::clean(Input::get('mname'));
		$lname = Sanitize::clean(Input::get('lname'));
		$gender = Sanitize::clean(Input::get('gender'));
		$dob = Sanitize::clean(Input::get('dob-y')).'-'.Sanitize::clean(Input::get('dob-m')).'-'.Sanitize::clean(Input::get('dob-d'))."<br/>";
		$studnum = Sanitize::clean(Input::get('stud-num'));
		$dept = Sanitize::clean(Input::get('department'));
		$course = Sanitize::clean(Input::get('course'));
		$yeargrad = Sanitize::clean(Input::get('year-grad'));

		if(empty($fname) || empty($mname) || empty($lname) || empty($gender) || empty($dob) || empty($studnum) || empty($dept) || empty($course) || empty($yeargrad)) {
			Session::putSession('alert-error','Please fill-in all fields.');
			Redirect::getBack();
		} else {
			$check = Db::getInstance()->selectData('graduates', "grad_fname = '$fname' AND grad_mname = '$mname' AND grad_lname = '$lname' AND grad_gender = $gender AND grad_birthday = '$dob' AND grad_student_id = '$studnum' AND grad_course = '$course' AND grad_dept = '$dept' AND grad_year_graduated = '$yeargrad'");
			if($check) {
				$row = $check->fetch(PDO::FETCH_NUM);
				Session::putSession('grad-id',$row[0]);
				Redirect::to('register');
			} else {
				Session::putSession('alert-error','Account not found. Please check the data you provided before submitting.');
				Redirect::getBack();
			}
		}
	}

	else if(isset($_POST['contact-btn'])) {
		$name = trim(Sanitize::clean(Input::get('name')));
		$email = trim(Sanitize::clean(Input::get('email')));
		$subject = trim(Sanitize::clean(Input::get('subject')));
		$message = trim(Sanitize::clean(Input::get('message')));

		if(empty($name) || empty($email) || empty($subject) || empty($message)) {
			Session::putSession('alert-error','Please fill-in all fields.');
			Redirect::getBack();
		} else {
			$captcha = $captcha = @$_POST['ct_captcha'];
			$securimage = new Securimage();
			if ($securimage->check($captcha) == false) {
				Session::putSession('alert-error','Incorrect CAPTCHA code.');
				Redirect::getBack();
			} else {
				$addFeedback = Db::getInstance()->insertData('feedbacks', array(
						'fb_name' => $name,
						'fb_email' => $email,
						'fb_subject' => $subject,
						'fb_message' => $message,
						'fb_date_added' => $dateTime
					));
				if($addFeedback) {
					Session::putSession('alert-success','Your feedback was successfully sent.');
					Redirect::referer();
				} else {
					Session::putSession('alert-error','There is a problem in sending feedback. Please try again later.');
					Redirect::getBack();
				}
			}
		}
	}

	else if(isset($_POST['register-btn'])) {
		$email = Sanitize::clean(Input::get('email'));
		$address = Sanitize::clean(Input::get('address'));
		$contact = Sanitize::clean(Input::get('contact'));
		$username = Sanitize::clean(Input::get('username'));
		$password = Sanitize::clean(Input::get('password'));
		$password2 = Sanitize::clean(Input::get('password2'));

		if(empty($email) || empty($address) || empty($contact) || empty($username) || empty($password) || empty($password2)) {
			Session::putSession('alert-error','Please fill-in all fields.');
			Redirect::getBack();
		} else if($password !== $password2) {
			Session::putSession('alert-error','Passwords does not match.');
			Redirect::getBack();
		} else {
			$checkUsername = Db::getInstance()->selectData('users', "user_username = '$username'");
			$checkEmail = Db::getInstance()->selectData('users', "user_email = '$email'");
			if($checkUsername) {
				Session::putSession('alert-error','Username already exist. Please choose another.');
				Redirect::getBack();
			} else if($checkEmail) {
				Session::putSession('alert-error','E-mail already exist. Please choose another.');
				Redirect::getBack();
			} else {
				$captcha = $captcha = @$_POST['ct_captcha'];
				$securimage = new Securimage();
				if ($securimage->check($captcha) == false) {
					Session::putSession('alert-error','Incorrect CAPTCHA code.');
					Redirect::getBack();
				} else {
					$salt = Hash::salt(32);
					$pass = Hash::make($password.$salt);
					$addUser = Db::getInstance()->insertData('users', array(
							'user_grad_id' => Session::getSession('grad-id'),
							'user_username' => $username,
							'user_email' => $email,
							'user_salt' => $salt,
							'user_password' => $pass,
							'user_address' => $address,
							'user_contact' => $contact,
							'user_date_modified' => $dateTime,
							'user_date_added' => $dateTime
						));
					if($addUser) {
						Session::putSession('alert-success','Your account was successfully activated.');
						Redirect::referer();
					} else {
						Session::putSession('alert-error','There is a problem in activating your account. Please try again later.');
						Redirect::getBack();
					}
				}
			}
		}
	}

	else if(isset($_POST['login-btn'])) {
		$username = Sanitize::clean(Input::get('username'));
		$password = Sanitize::clean(Input::get('password'));
		
		if(empty($username) || empty($password)) {
			Session::putSession('alert-error','Please fill-in all fields.');
			Redirect::getBack();
		} else {
			$login = Db::getInstance()->userLogin($username, $password);
			if($login) {
				if($login == 1) {
					$addAudit = Db::getInstance()->auditLog('admin', 'Admin Login', Session::getSession('admin-id'));
					Redirect::to('admin');
				} else if($login == 2) {
					Redirect::to('logged');
				}
			} else {
				Session::putSession('alert-error','Failed to login.');
				Redirect::getBack();
			}
		}
	}

	else if(isset($_POST['survey-btn'])) {
		Redirect::getBack();
	}

	else if(isset($_POST['import-graduates-btn'])) {

		$filename = $_FILES['file']['name'];
		$filetmp = $_FILES['file']['tmp_name'];
		$filetmp = $_FILES['file']['tmp_name'];

	}


} // POST




?>