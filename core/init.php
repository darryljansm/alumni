<?php
	if(session_id() == '') {
		session_start();
	}
	
	date_default_timezone_set('Etc/GMT+8');
	
	spl_autoload_register(function($class) {
		if(is_file('classes/'. $class .'.php')) {
			require_once('classes/'. $class .'.php');
		}
	});
?>