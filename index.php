<?php include "include/db_conn.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="./css/style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css"/>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>

</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="#sectone" class="active">Home</a>
  <a href="#secttwo">About</a>
  <a href="#sectthree">Contact</a>
  <a href="#SignUp" data-toggle="modal" data-target="#SignUp">SignUp</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="container-fluid">
  <section id="sectone">
  <h2>Abous Us</h2>
  <p>We are passionate on making our environment clean</p>
  </section>
  
  <section id="secttwo">
  <h2>Our Services</h2>
  <p>We collect garbage from residential area with the city.</p>
  </section>

  <section id="sectthree">
  <h2>Our Contact</h2>
  <p>Call us on 232700123546</p>
  </section>
  
</div>

<div class="modal fade" id="SignUp" role="dialog">
<div class="modal-dialog">

  <!-- Modal content-->
  <div class="modal-content">
	<div class="modal-header">
	<h3>SignUp Form<h3>
		<button type="button" class="close" data-dismiss="modal">&times;</button>
	</div>
	<div class="modal-body">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="position:static; height:auto;">
			<li class="nav-item active">
				<a href="#login" aria-controls="login" role="tab" data-toggle="tab"><b>Login</b></a>
			</li>
			<li class="nav-item">
				<a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><b>Register</b></a>
			</li>
		</ul>
		   <!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="login">
					<form action="./include/login.php" method="POST">
						<div class="form-group">
							<label for="exampleFormControlInput1">Phone Number:</label>
							<input type="text" class="form-control" id="uname" name="uname" placeholder="Enter your email address" required>
						 </div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Password:</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="Enter your password:" required>
						 </div>
						<button type="submit" name="submit" value="login" class="btn btn-primary">Login</button>			  
					</form>						
				</div>
				
				<div role="tabpanel" class="tab-pane" id="profile">
					<form action="./customer/action.php" method="POST">
						<div class="form-group">
							<label for="exampleFormControlInput1">Your name:</label>
							<input type="text" class="form-control" id="fname" name="fname" placeholder="John White" required>
						 </div>
						 <div class="form-group">
							<label for="exampleFormControlInput1">Phone Number:</label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="Enter your phone Number" required>
						 </div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Email address:</label>
							<input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" required>
						 </div>
						 <div class="form-group">
							<label for="exampleFormControlSelect2">Select Region:</label>
							<select class="form-control" id="region" name="region">
							  <option>Select Region</option>
							  <?php
								$stmt = $conn->query('SELECT * FROM region where status = "Active"');

								while($row = $stmt->fetch()){
								?>
							  <option><?php echo $row['regionname']; ?></option>
								<?php }?>
							</select>
						  </div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Password:</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="8 characters:" required>
						 </div>
						 <div class="form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1" required>
							<label class="form-check-label" for="exampleCheck1">I agree to the terms and conditions.</label>
						  </div>
						<button type="submit" name="submit" value="register" class="btn btn-primary">Register</button>			  
					</form>
				</div>
				
			</div>

		</div>
	 </div>
</div>
<?php if (isset($_GET['error'])) { ?>
	<p color="red"><?php echo $_GET['error']; ?></p>
<?php } ?>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
