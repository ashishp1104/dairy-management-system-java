<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container h-50">


</div>
<div class="container-fluid mt-5">
<div class="row">
<div class="col-md-6 mt-5">
	<img alt="" src="img/admin_img.1.jpg" class="w-100 h-100 mt-4  img-thumbnail " >

</div>
<div class="col-md-6 mt-5">
	<div class="container h-25">


</div>

	
	  <div class="container text-center mt-4">
  <button type="submit" class="btn btn-primary" name="admin">Admin</button>
  
  </div>
	
	<form action="admin" method="post">
	   <div class="Container"  >
  <div class="col md-6 mb-3">
    
   <center> <input placeholder="Enter Username here" name="username" type="text" class="form-control w-50 align-centre mt-3" id="exampleInputEmail1" aria-describedby="emailHelp"  required ></center>
    </div>
  </div>
  <div class="Container"  >
    <div class="col md-6 mb-3">
    
    <center> <input placeholder="Enter Password here" name="password" type="password" class="form-control w-50" id="exampleInputEmail1" aria-describedby="emailHelp" required></center>
    
  </div>
  
  </div>
  <div class="Container "  >
  	  <div class="container text-center d-grid gap-2 col-6 mx-auto">
  <button type="submit" class="btn btn-primary" name="admin">Login</button>
  
  </div>
  </div>
</form>
</div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>