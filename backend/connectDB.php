<?php
header('Content-Type: application/json');
class db_connect {
	private $hostname;
	private $database;
	private $username;
	private $password;
	
	function _construct(){
		$this->hostname = "localhost";
		$this->password = "";
		$this->username = "root";
		$this->database = "androidexamdb";
	}
	
	public function db_connect() {
		$conn = mysqli_connect("localhost", "root", "", "androidexamdb");
		if (!$conn) {
			echo mysqli_connect_error();
		}

		return $conn;
	}	
}