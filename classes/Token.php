<?php 
require_once('Session.php');
class Token {
	public static function generate() {
		return Session::putSession('tokenString', md5(uniqid()));
	}

	public static function check($token) {
		$tokenName = 'tokenString';
		if(Session::SessionExists($tokenName) && $token === Session::getSession($tokenName)) {
			Session::deleteSession($tokenName);
			return true;
		}
		return false;
	}
}

?>