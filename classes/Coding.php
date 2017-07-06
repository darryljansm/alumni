<?php

class Coding {
	public static function encodeThis($string) {
		return bin2hex(gzdeflate(base64_encode($string),9));
	}
	
	public static function decodeThis($string) {
		if(ctype_xdigit($string)) {
			$temp = @gzinflate(pack("H*", $string));
			if($temp != $string && $string !== FALSE) {
				$temp = base64_decode($temp, true);
				if($temp) {
					return $temp;
				}
				else {
					return "";
				}
			}
			else {
				return "";
			}
		}
		else {
			return "";
		}
	}
}

?>