<?php 
// This class will be used for database related actions for users
require_once('Session.php');
class User {
	private $_db,
			$_data,
			$_sessionName,
			$_cookieName,
			$_isLoggedIn;

	public function __construct($user = null) {
		$this->_db = DB::getInstance();
		$this->_sessionName = Config::get('session/session_name');
		$this->_cookieName = Config::get('remember/cookie_name');
		if(!$user) {
			if(Session::sessionExists($this->_sessionName)) {
				$user = Session::getSession($this->_sessionName);
				if($this->find($user, 'admin')) {
					$this->_isLoggedIn = true;
				}
			}
		} else {
			$this->find($user, 'admin');
		}			
	}
	public function create($fields = array()) {
		if(!$this->_db->insert('admin', $fields)) {
			throw new Exception('Sorry, there was a problem creating your account;');
		}
	}

	public function update($fields = array(), $id = null) {
		if(!$id && $this->isLoggedIn()) {
			$id = $this->data()->id;
		}
		if(!$this->_db->update('admin', $id, $fields)) {
			throw new Exception('There was a problem updating');
		}
	}

	public function find($user = null) {
		if($user) {
			$field = (is_numeric($user)) ? 'admin_id' : 'admin_username';
			$data = $this->_db->get('admin', array($field, '=', $user));
			if($data->count()) {
				$this->_data = $data->first();
				return true;
			}
		}
		return false;
	}
	
	public function adminLogin($username = null, $password = null) {
		if(!$username && !$password && $this->exists()) {
			Session::put($this->_sessionName, $this->data()->admin_id);
		} else {
			$user = $this->find($username);
			if ($user) {
				if ($this->data()->admin_password === Hash::make($password, $this->data()->admin_salt)) {
					Session::putSession($this->_sessionName, $this->data()->admin_id);
					return true;
				}
			}
		}
		return false;
	}

	public function exists() {
		return (!empty($this->_data)) ? true : false;
	}

	public function logout() {
		$this->_db->delete('user_session', array('user_id', '=', $this->data()->id));

		Session::delete($this->_sessionName);
		Cookie::delete($this->_cookieName);
	}

	public function data(){
		return $this->_data;
	}

	public function isLoggedIn() {
		return $this->isLoggedIn;
	}
}
 ?>