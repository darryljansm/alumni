<?php

class Sanitize {
	public static function clean($string) {
		return htmlentities($string, ENT_QUOTES, 'UTF-8');
	}
}
?>