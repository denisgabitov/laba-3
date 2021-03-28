<?php
//if(!empty($_POST['name']) || !empty($_POST['email']) || !empty($_POST['msg'])){
	$dbhost = 'localhost';
	$dbuser = 'f0425256_news';
	$dbpass = '123';
	$dbname = 'f0425256_news';
	$dblink = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
	
	//$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($dblink->connect_errno) {
		printf("Failed to connect to database");
		exit();
	}

	//$sql = "INSERT INTO `messages` (`id`, `name`, `email`, `msg`) VALUES (NULL, '{$_POST['name']}', '{$_POST['email']}', '{$_POST['msg']}";
	$sql = "INSERT INTO `messages` (`id`, `name`, `email`, `msg`) VALUES (NULL, '{$_POST['name']}', '{$_POST['email']}', '{$_POST['msg']}')";
	if ($dblink->query($sql) === TRUE) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $dblink->error;
	}

	$dblink->close();
	/*if ($dblink->connect_errno) {
		printf("Failed to connect to database");
		exit();
	}
	
	$result = $dblink->query("INSERT INTO `messages` (`id`, `name`, `email`, `msg`) VALUES (NULL, '{$_POST['name']}', '{$_POST['email']}', '{$_POST['msg']}');");
	$data = array();
	
	while ( $row = $result->fetch_assoc())  {
		$data[]=$row;
	}
	
	echo json_encode($data);*/
//}
?>