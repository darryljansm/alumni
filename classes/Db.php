<?php
require_once('core/init.php');

class Db {
	private static $_instance = null;
	private $_conn,
			$_host = 'localhost',
			$_db = 'alumni',
			$_user = 'root',
			$_pass = '';

	public function __construct(){ // PDO connection for mysql database 
		$this->_conn = new PDO("mysql:host=".$this->_host.";dbname=".$this->_db,$this->_user,$this->_pass);
	}

	public static function getInstance() {
		if(!isset(self::$_instance)) {
			self::$_instance = new Db();
		}
		return self::$_instance;
	}


	public function selectData($table, $where) { 
		$sql = "SELECT * FROM $table WHERE $where"; // Query string
		$q = $this->_conn->query($sql); // Run query
		if($q->rowCount()) { // If query result is not false
			return $q;
		}
		return false;
	}


	public function selectDataJoin($table, $where) { 
		$sql = "SELECT * FROM $table ON $where"; // Query string
		$q = $this->_conn->query($sql); // Run query
		if($q->rowCount()) { // If query result is not false
			return $q;
		}
		return false;
	}


	public function insertData($table, $data = array()) {
		$fields = '';
		$values = '';
		$counter = 1;
		foreach ($data as $field => $value) {
			if($counter != count($data)) {
				$fields .= $field.", ";
				$values .= "'".$value."', ";
				$counter++;
			} else {
				$fields .= $field;
				$values .= "'".$value."'";
			}
		}
		$sql = "INSERT INTO $table ($fields) VALUES ($values)"; // Query string
		try {
			$q = $this->_conn->query($sql); // Run query
			if($q->rowCount()) {
				return true;
			}
			return false;
		} catch (PDOException $e) {
			return false; // Return false if there's and Exception in executing the query
		}
	}


	public function updateData($table, $data = array(), $where) {
		$datas = '';
		$counter = 1;
		foreach ($data as $field => $value) {
			if ($counter != count($data)) {
				$datas .= $field." = '".$value."', ";
				$counter++;
			} else {
				$datas .= $field." = '".$value."'";
			}
		}
		$sql = "UPDATE $table SET $datas WHERE $where"; // Query string
		$q = $this->_conn->query($sql); 	// Run query
		if($q->rowCount()) {
			return true;
		}
		return false;
	}


	public function deleteData($table, $where) {
		$sql = "DELETE FROM $table WHERE $where"; // Query string
		$q = $this->_conn->query($sql); // Run query
		if($q->rowCount()) {
			return true;
		}
		return false;
	}

	public function queryString($query) {
		$q = $this->_conn->query($query);
		return $q;
	}

	public function adminLogin($username, $password) {
		$check = "SELECT * FROM admin WHERE admin_username = '$username' AND admin_status = 1 LIMIT 0,1"; // Query string
		$q = $this->_conn->query($check); // Run query
		if($q->rowCount()) { // Check if Username exist
			$row = $q->fetch();
			if($row['admin_status'] == 1) {
				if(Hash::make($password.$row['admin_salt']) == $row['admin_password']) {
					Session::putSession('admin-id', $row['admin_id']);
					Session::putSession('admin-fname', $row['admin_fname']);
					Session::putSession('admin-lname', $row['admin_lname']);
					Session::putSession('admin-lvl', $row['admin_level']);
					Session::putSession('admin-logged', 1);
					return true;
				}
				return false;
			}
			return false;
		} else { // If Username does not exist
			return false;
		}
	}

	public function userLogin($username, $password) {
		$check = "SELECT * FROM users WHERE user_username = '$username' AND user_status = 1 LIMIT 0,1"; // Query string
		$q = $this->_conn->query($check); 
		if($q->rowCount()) {
			$row = $q->fetch();
			if(Hash::make($password.$row['user_salt']) == $row['user_password']) {
				Session::putSession('user-id', $row['user_id']);
				//Session::putSession('user-fname', $row['user_fname']);
				//Session::putSession('user-lname', $row['user_lname']);
				Session::putSession('user-logged', 1);
				return 2;
			}
			return false;
		} else { 
			$check = "SELECT * FROM admin WHERE admin_username = '$username' AND admin_status = 1 LIMIT 0,1"; // Query string
			$q = $this->_conn->query($check); // Run query
			if($q->rowCount()) {
				$row = $q->fetch();
				if(Hash::make($password.$row['admin_salt']) == $row['admin_password']) {
					Session::putSession('admin-id', $row['admin_id']);
					Session::putSession('admin-fname', $row['admin_fname']);
					Session::putSession('admin-lname', $row['admin_lname']);
					Session::putSession('admin-lvl', $row['admin_level']);
					Session::putSession('admin-logged', 1);
					return true;
				}
				return false;
			}
			return false;
		}
	}

	public function auditLog($table, $action, $adminID) {
		$dateTime = date("Y-m-d H:i:s");
		$sql = "INSERT INTO auditlog (audit_table_affected, audit_action, audit_admin_id,audit_date_added) VALUES ('$table', '$action', '$adminID', '$dateTime')";
		$q = $this->_conn->query($sql);
		if($q->rowCount()) {
			return true;
		}
		return false;
	}
}
?>