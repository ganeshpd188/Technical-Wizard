<?php
session_start();
?>
<?php 
  //session_start(); 

  /*remove this comment if required
  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: index1.php');
  }*/
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>

<?php
require 'config.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title>TechWiz organised by CSI DTU</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/style.css" rel="stylesheet" media="screen">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="../../assets/js/html5shiv.js"></script>
		<script src="../../assets/js/respond.min.js"></script>
		<![endif]-->
		<p> <a href="logout.php" style="color: red;">logout</a> </p>
   

	</head>
	<body>
		<header>
			<p class="text-center">
				Welcome to TechWiz Prelims Round <?php if(!empty($_SESSION['name'])){echo $_SESSION['name'];}?>
			</p>
		</header>
		<div class="container">
			<div class="row">
				<div class="col-xs-14 col-sm-7 col-lg-7">
					<<div class='image'>
					<!--	<img src="image/27164919_196202260959977_4832377862647947065_o.jpg" class="img-responsive"/>-->
					<h3><em>Instructions</em></h3>
					<ul>
					<li>You need to <mark>Enter your valid Phone number</mark>(if selected we'll contact you)</li>
					<li>Then Select the Category on which you want to give quiz</li>
					<li>Participant can choose as many categories as they want</li>
					<li>More the categories chosen, more the chances to get selected for Finals :)</li>
					<li>There will be time allotted for every quiz and you need to submit quiz before the timer ends!</li>
					<li>There are 4 options to every question out of which only one is correct</li>
					<li>There is 1point for every correct answer and 0 for unattempted or wrong.</li>
					<li>In case of any problem, directly mail us at <mark>ganeshpd188@gmail.com</mark> or contact us at <mark>9650928518</mark></li>
					<li>Wish you a good luck and hopefully see you in the Finals!!</li>
					</ul>
					</div>>
				</div>
				<div class="col-xs-10 col-sm-5 col-lg-5">
					<div class="intro">
						<p class="text-center">
							Please enter your Contact number
						</p>
						<?php if(empty($_SESSION['name'])){?>
						<form class="form-signin" method="post" id='signin' name="signin" action="questions.php">
							<div class="form-group">
								<input type="text" id='name' name='name' class="form-control" placeholder="Enter your Email Id"/>
								<span class="help-block"></span>
							</div>
							<div class="form-group">
							    <select class="form-control" name="category" id="category">
							        <option value="">Choose your category</option>
                                  <option value="1">Operating System</option>
                                  <option value="2">DBMS</option>
                                  <option value="3">Algorithm Analysis</option>
                                  <option value="5">Computer Networks</option>
								  <option value="4">Other</option>                                
                                </select>
                                <span class="help-block"></span>
							</div>
							
							<br>
							<button class="btn btn-success btn-block" type="submit">
								Submit!!!!
							</button>
						</form>
						
						<?php }else{?>
						    <form class="form-signin" method="post" id='signin' name="signin" action="questions.php">
                            <div class="form-group">
                                <select class="form-control" name="category" id="category">
                                    <option value="">Choose your category</option>
                                  <option value="1">Operating System</option>
                                  <option value="2">DBMS</option>
                                  <option value="3">Algorithm Analysis</option>
                                  <option value="4">Other</option>                                
								  <option value="5">Computer Networks</option>                          
                                </select>
                                <span class="help-block"></span>
                            </div>
                            
                            <br>
                            <button class="btn btn-success btn-block" type="submit">
                                Submit!!!!
                            </button>
                        </form>
						<?php }?>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<p class="text-center" id="foot">
				&copy; <a href="#" target="_blank">TechWiz</a>2018
			</p>
		</footer>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-1.10.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>

		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/jquery.validate.min.js"></script>

		<script>
			$(document).ready(function() {
				$("#signin").validate({
					submitHandler : function() {
					    console.log(form.valid());
						if (form.valid()) {
						    alert("sf");
							return true;
						} else {
							return false;
						}

					},
					rules : {
						name : {
							required : true,
							minlength : 3,
							remote : {
								url : "check_name.php",
								type : "post",
								data : {
									username : function() {
										return $("#name").val();
									}
								}
							}
						},
						category:{
						    required : true
						}
					},
					messages : {
						name : {
							required : "Please enter your Email id For results",
							remote : "Email is already taken "
						},
						category:{
                            required : "Please choose your category to start Quiz"
                        }
					},
					errorPlacement : function(error, element) {
						$(element).closest('.form-group').find('.help-block').html(error.html());
					},
					highlight : function(element) {
						$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
					},
					success : function(element, lab) {
						var messages = new Array("That's Great!", "Looks good!", "You got it!", "Great Job!", "Smart!", "That's it!");
						var num = Math.floor(Math.random() * 6);
						$(lab).closest('.form-group').find('.help-block').text(messages[num]);
						$(lab).addClass('valid').closest('.form-group').removeClass('has-error').addClass('has-success');
					}
				});
			});
		</script>

	</body>
</html>
