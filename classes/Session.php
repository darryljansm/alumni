<?php
require_once('core/init.php');
class Session {
	public static function sessionExists($name) {
		return (isset($_SESSION[$name])) ? true : false;
	}
	public static function putSession($name, $value) {
		return $_SESSION[$name] = $value;
	}
	public static function getSession($name) {
		return $_SESSION[$name];
	}
	public static function deleteSession($name) {
		if(self::SessionExists($name)) {
			unset($_SESSION[$name]);
		}
	}
	public static function flashAlert($name, $string = '') {
		if(self::SessionExists($name)) {
			$session = self::getSession($name);
			self::deleteSession($name);
			return $session;
		} else {
			self::putSession($name, $string);
		}
	}
}
?>