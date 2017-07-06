<?php
	// This clas is used for redirecting to other pages
	class Redirect {
		public static function to($location = null) {
			if($location) {
				header('Location:'. $location);
				exit();
			}
		}

		public static function referer() {
			header('Location:'. $_SERVER['HTTP_REFERER']);
			exit();
		}

		public static function getBack() {
			echo "<script>history.back(-1);</script>";
		}
	}
?>