<%@ page import = "java.io.*,java.util.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<!-- Header -->
<nav class="navbar bg-dark navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="#">Dairy Company</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Milk</a>

      </ul>
      <form action="logout" method="get" class="mb-0">
							
                        <li><button type="submit" class="btn btn-dark ">LogOut</button></li>
                   
                    </form>
    </div>
  </div>
</nav>

<!-- Header -->




<!-- MAin -->

<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark" data-bs-theme="dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <!--<li class="nav-item">
                          <a href="#" class="nav-link align-middle px-0">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>-->
                                       <li>
                        <a href="dashboard.jsp" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">Dashborad</span></a>
                           
                    </li>
                    <li>
                        <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-speedometer2"></i> <span class="ms-1 d-none d-sm-inline"></span> Farmers Details</a>
                        	 <ul class="collapse nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="AddFarmer.jsp" class="nav-link px-0"> <span><i class="fa-solid fa-plus" style="color: #B197FC;"></i> </span><span class="d-none d-sm-inline">Add</span>  </a>
                            </li>
                            <li>
                                <a href="Manage.jsp" class="nav-link px-0"> <span><i class="fa-solid fa-pen-to-square" style="color: #B197FC;"></i></span><span class="d-none d-sm-inline"> Manage</span> </a>
                            </li>
                        </ul>
                    </li>
 
                    <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Milk Collection</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="MilkCollection.jsp" class="nav-link px-0"><span><i class="fa-solid fa-plus" style="color: #B197FC;"></i> </span> <span class="d-none d-sm-inline">Add</span> </a>
                            </li>
                            <li>
                                <a href="Managemilk.jsp" class="nav-link px-0"><span><i class="fa-solid fa-pen-to-square" style="color: #B197FC;"></i></span> <span class="d-none d-sm-inline"> Manage</span> </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Add Delivery</span> </a>
                            <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="adddelivery.jsp" class="nav-link px-0"><span><i class="fa-solid fa-plus" style="color: #B197FC;"></i> </span> <span class="d-none d-sm-inline">Add</span> </a>
                            </li>
                            <li>
                                <a href="ManageDelivery.jsp" class="nav-link px-0"><span><i class="fa-solid fa-pen-to-square" style="color: #B197FC;"></i></span> <span class="d-none d-sm-inline"> Manage</span> </a>
                            </li>
                           
                        </ul>
                    </li>
                                        <li>
                        <a href="#submenu4" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Reports</span> </a>
                            <ul class="collapse nav flex-column ms-1" id="submenu4" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="FarmerReport.jsp" class="nav-link px-0"><span><i class="fa-solid fa-file" style="color: #B197FC;"></i></span> <span class="d-none d-sm-inline">Farmer Report</span> </a>
                            </li>
                            <li>
                                <a href="MilkCollectionReport.jsp" class="nav-link px-0"><span><i class="fa-solid fa-file" style="color: #B197FC;"></i></span> <span class="d-none d-sm-inline">Milk Collection</span> </a>
                            </li>
                                                       <li>
                                <a href="DeliveryReport.jsp" class="nav-link px-0"><span><i class="fa-solid fa-file" style="color: #B197FC;"></i></span> <span class="d-none d-sm-inline">Delivery Report</span> </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="EnqireManage.jsp" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Enqire </span> </a>
                    </li>
                </ul>
                <ul></ul>
                <hr>
					<%@include file="dropdown.jsp" %>
            </div>
        </div>
        <div class="col md-9 py-3">
                       <% 
        Date date = new Date();
        %>
        <p class="text-dark"><%=date %></p>
           <p class=text-center>DashBoard</p>
           <div class="row ">
           <div class="col-3 bg-success-subtle mx-5">
           
             <%
  try{
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
	  String query=" select count(name)AS total_farmer from farmer;";
	  PreparedStatement pst=con.prepareStatement(query);
	  
	  ResultSet rs=pst.executeQuery();
	  
  
  
  %>
           
           
           <p class="fs-6 text-secondary-emphasis">Total Farmer</p>
           <%
while(rs.next()){
%>
           <p class="text-end text-danger fs-5"><%=rs.getString("total_farmer") %></p>
           <%
	  }
  }catch(ClassNotFoundException e){
	  e.printStackTrace();
  }catch(SQLException e){
	  e.printStackTrace();
  }
  
  %>
           </div>
           <div class="col-3 bg-info mx-4">
           
             <%
  try{
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
	  String query1=" select count(*)AS total_delivery from delivery;";
	  PreparedStatement pst1=con1.prepareStatement(query1);
	  
	  ResultSet rs1=pst1.executeQuery();
	  
  
  
  %>
           
           
           <p class="fs-6">Total Delivery</p>
           <%
while(rs1.next()){
%>
           <p class="text-end text-danger fs-5"><%=rs1.getString("total_delivery") %></p>
           <%
	  }
  }catch(ClassNotFoundException e){
	  e.printStackTrace();
  }catch(SQLException e){
	  e.printStackTrace();
  }
  
  %>
           
           </div>
           <div class="col-3 bg-warning mx-5">
           
                        <%
  try{
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
	  String query1=" select sum(milk_quantity)AS total_milk from milk;;";
	  PreparedStatement pst1=con1.prepareStatement(query1);
	  
	  ResultSet rs1=pst1.executeQuery();
	  
  
  
  %>
           
           
           <p class="fs-6">Total Milk Collections</p>
           <%
while(rs1.next()){
%>
           <p class="text-end text-danger fs-5"><%=rs1.getString("total_milk") %></p>
           <%
	  }
  }catch(ClassNotFoundException e){
	  e.printStackTrace();
  }catch(SQLException e){
	  e.printStackTrace();
  }
  
  %>
           
           
           </div>
           </div>
           <div class="row">
                      <div class="col-3 bg-danger-subtle mx-5 mt-5">
           
                        <%
  try{
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
	  String query1="select count(*)AS total_Enqire from enqire";
	  PreparedStatement pst1=con1.prepareStatement(query1);
	  
	  ResultSet rs1=pst1.executeQuery();
	  
  
  
  %>
           
           
           <p class="fs-6">Total Enqires</p>
           <%
while(rs1.next()){
%>
           <p class="text-end text-danger fs-5"><%=rs1.getString("total_Enqire") %></p>
           <%
	  }
  }catch(ClassNotFoundException e){
	  e.printStackTrace();
  }catch(SQLException e){
	  e.printStackTrace();
  }
  
  %>
           
           
           </div>
           </div>
        </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
