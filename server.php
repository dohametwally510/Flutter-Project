
<?php 
	session_start();

	// variable declaration
	$firstname = "";
	$email    = "";
	$pass ="";
	$errors = array(); 
	$_SESSION['success'] = "";

	// connect to database
	$db = mysqli_connect('localhost', 'root', '', 'skindb');

	// REGISTER USER
	if (isset($_POST['reg_user'])) {
		// receive all input values from the form
		$firstname = mysqli_real_escape_string($db, $_POST['firstname']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$pass = mysqli_real_escape_string($db, $_POST['pass']);
		$pass2 = mysqli_real_escape_string($db, $_POST['pass2']);

		// form validation: ensure that the form is correctly filled
		if (empty($firstname)) { array_push($errors, "firstname is required"); }
		if (empty($email)) { array_push($errors, "Email is required"); }
		if (empty($pass)) { array_push($errors, "Password is required"); }
	

		if ($pass != $pass2) {
			array_push($errors, "The two passwords do not match");
		}

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$firstname  = $_POST['firstname'];
		    $lastname  = $_POST['lastname'];
		    $telnum  = $_POST['telnum'];
		    $age  = $_POST['age'];
		    $gender  = $_POST['gender'];
		    $email  = $_POST['email'];
		    $governate  = $_POST['governate'];
		    $pass  = $_POST['pass'];

			$pass = md5($pass);//encrypt the password before saving in the database
			$query = ("INSERT INTO user (firstname,lastname,telnum,age,gender,email,governate,pass) VALUES ('$firstname' , '$lastname' , ' $telnum ','$age', '$gender' , '$email' , '$governate' ,'$pass')");
			mysqli_query($db, $query);

			$_SESSION['email'] = $email;
			$_SESSION['success'] = "You are now logged in";
			header('location: index.php');
		}

	}
	// ... 

	// LOGIN USER
	if (isset($_POST['login_user'])) {
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$pass = mysqli_real_escape_string($db, $_POST['pass']);

		if (empty($email)) {
			array_push($errors, "email is required");
		}
		if (empty($pass)) {
			array_push($errors, "pass is required");
		}

		if (count($errors) == 0) {
			$pass = md5($pass);
			$query = "SELECT * FROM users WHERE email='$email' AND pass='$pass'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 0) {
				$_SESSION['email'] = $email;
				$_SESSION['success'] = "You are now logged in";
				header('location: index.php');
			}else {
				array_push($errors, "Wrong email/password combination");
			}
		}
	}

?>