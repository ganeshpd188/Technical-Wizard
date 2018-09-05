<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Kuch bhi</title>
  <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
  <div class="header">
  	<h2>Event name</h2>
  </div>
	 
  <form method="post" action="login.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  		<label>Adhaar number</label>
  		<input type="text" name="username" >
  	</div>
	<div class="input-group">
  		<label>Email Id</label>
  		<input type="text" name="username" >
  	</div>
  	<div class="input-group">
  		<label>Enter the OTP</label>
  		<input type="password" name="password">
  	</div>
  	<div class="input-group">
  		<button type="submit" class="btn" name="login_user"><a href="#">Login </a></button>
  	</div>
  	<p>
  <!--		Not yet a member? <a href="register.php">Sign up</a> -->
  	</p>
  </form>
</body>
</html>