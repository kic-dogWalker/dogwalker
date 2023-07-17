<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>login페이지</title>
    <style>
		    
    
   		ul{
   		list-style:none;
   		}
   		
   		.nav-left-sub1{
   		background:blue;
   		}
   		.nav-left-sub1 > li {
   		background:white;
   		}
   		
   		
   		.nav-left-sub1 {
   		padding:0;
   		margin:0;
   		}
   		.col-md-3{
   		padding:0
   		}
   		.nav-left>ul{
   		padding:0
   		}
   		.nav-left-sub1 > li > a {
   		padding-left:40%;
   		}
   		
		.nav-left > ul > li > ul > li{
		height:75px;
		valign:center;
		background:#eee;
		}
		
		.nav-left > ul > li > ul > li > a{
		position:relative;
		top:30%;
		text-decoration: none;
		font-size:18px;
		color:black;
		}
		
		.form-signin{
        position:relative;
        top:0;
        
        }
    </style>
  </head>
  <body>
   <div class="container">
    <!-- 상단메뉴 header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="#">Navbar</a>
   			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button>
    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="#">Home</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="#">Link</a>
        			</li>
        			<li class="nav-item dropdown">
          				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            				Dropdown
          				</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="#">Action</a></li>
			            <li><a class="dropdown-item" href="#">Another action</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" href="#">Something else here</a></li>
          			</ul>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        			</li>
      			</ul>
		      <form class="d-flex">
		        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">Search</button>
		      </form>
	    </div>
	  </div>
	</nav>
	<!--  -->
	
	<!-- 본문 -->
	<div class="container-fluid">
		<div class="row">
	   		<!-- 왼쪽 메뉴 -->
	   		<div class="col-md-2" style="background:black">
		   		<div class="nav-left">
		   			<ul>
		   				<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#memberupdate-collapse"><a href="#">회원정보</a></li>
		   						<li class="collapse" id="memberupdate-collapse"><a href="#">-정보수정</a></li>
		   						<li class="collapse" id="memberupdate-collapse"><a href="#">-배송지목록</a></li>
		   					</ul>
		   				</li>
		   				<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#shopping-collapse"><a href="#">쇼핑내역</a></li>
		   						<li class="collapse" id="shopping-collapse"><a href="#">-구매상품목록</a></li>
		   						<li class="collapse" id="shopping-collapse"><a href="#">-주문취소내역</a></li>
		   					</ul>
		   				</li>
		   				<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#point-collapse"><a href="#">멍코인 (예치금)</a></li>
		   						<li class="collapse" id="point-collapse"><a href="#">-멍코인 사용내역</a></li>
		   						<li class="collapse" id="point-collapse"><a href="#">-멍코인 충전하기</a></li>
		   					</ul>
		   				</li>
						<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#mydog-collapse"><a href="#">내강아지정보</a></li>
		   						<li class="collapse" id="mydog-collapse"><a href="#">-강아지정보수정</a></li>
		   					</ul>
		   				</li>
		   			</ul>
		   		</div>
	 		</div>
	   		<!-- 오른쪽 메뉴 -->
	   		<div class="col-md-10" style="background:yellow">
		   		<div class="nav-right">
		   		<jsp:include page="/login.html"/>
		   		</div>
	   		</div>
	   </div>
   </div>
   
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>