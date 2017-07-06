<?php
	// This class includes generating salt, random password and encrypting password
	class Hash {
		public static function make($string) {
			return hash('sha256', $string);
		}
		public static function makeadmin($string) {
			return hash('md5', $string);
		}
		public static function salt($length) {
			return mcrypt_create_iv($length);
		}
		public static function genPass($length = 8) {
			$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
			$count = mb_strlen($chars);

			for ($i = 0, $result = ''; $i < $length; $i++) {
				$index = rand(0, $count - 1);
				$result .= mb_substr($chars, $index, 1);
			}
			return $result;
		}
		public static function unique() {
			return self::make(uniqid());
		}
	}
?>