<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%
String logincheck="needlogin";
String mypagetask=request.getParameter("mypagetask"); 

%>
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
		font-size:12px;
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
    <nav class="navbar navbar-expand-lg bg-light pb-3">
	  <div class="container"><!-- 주 컨텐츠 컨테이너 시작-->
	    <a class="navbar-brand" href="#"><img src="img/logo2.png" width="200"  alt="..."></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		    <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            산책매칭
		       </a>
		        <ul class="dropdown-menu">
		           <li><a class="dropdown-item" href="#">산책자 찾기</a></li>
		           <li><a class="dropdown-item" href="#">강아지 찾기</a></li>
		           <li><hr class="dropdown-divider"></li>
		           <li><a class="dropdown-item" href="#">산책현황</a></li>
		           <li><a class="dropdown-item" href="#">예약확인</a></li>
		         </ul>
		    </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">채팅</a>
	        </li>
	        <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            커뮤니티
		       </a>
		        <ul class="dropdown-menu">
		           <li><a class="dropdown-item" href="#">공지사항</a></li>
		           <li><a class="dropdown-item" href="#">Q&A</a></li>
		           <li><a class="dropdown-item" href="#">자유게시판</a></li>
		           <li><a class="dropdown-item" href="#">강아지자랑게시판</a></li>
		           <li><a class="dropdown-item" href="#">고민게시판</a></li>
		         </ul>
		    </li>
	        <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            쇼핑
		       </a>
		        <ul class="dropdown-menu">
		           <li><a class="dropdown-item" href="#">전체보기</a></li>
		           <li><hr class="dropdown-divider"></li>
		           <li><a class="dropdown-item" href="#">산책현황</a></li>
		           <li><a class="dropdown-item" href="#">예약확인</a></li>
		           <li><a class="dropdown-item" href="#">예약확인</a></li>
		         </ul>
		    </li>
	      </ul>
	      <ul class="nav justify-content-end">
			  <li class="nav-item">
			    <a class="nav-link" href="#">로그인</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">마이페이지</a>
			  </li>
			</ul>
			<form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="me-1"></i>
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
	    </div>
	  </div>
	</nav>
	<!--  -->
	
	<!-- 본문 -->
	<div class="container">
		<div class="row">
	   		<!-- 왼쪽 메뉴 -->
	   		<div class="col-md-2">
		   		<div class="nav-left">
		   			<ul>
		   				<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#memberupdate-collapse"><a href="#">회원정보</a></li>
		   						<li class="collapse" id="memberupdate-collapse"><a href="myPageTotal.jsp?mypagetask=editmember">-정보수정</a></li>
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
		   						<li class="collapse" id="point-collapse"><a href="myPageTotal.jsp?mypagetask=coincharge">-멍코인 충전하기</a></li>
		   					</ul>
		   				</li>
						<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#mydog-collapse"><a href="#">내강아지정보</a></li>
		   						<li class="collapse" id="mydog-collapse"><a href="#">-강아지정보수정</a></li>
		   						<li class="collapse" id="mydog-collapse"><a href="myPageTotal.jsp?mypagetask=runlog">-산책로그</a></li>
		   					</ul>
		   				</li>
		   				<li>
		   					<ul class="nav-left-sub1">
		   						<li data-bs-toggle="collapse" data-bs-target="#board-collapse"><a href="#">작성글목록</a></li>
		   						<li class="collapse" id="board-collapse"><a href="#">-자유게시판</a></li>
		   						<li class="collapse" id="board-collapse"><a href="#">-Q&A게시판</a></li>
		   					</ul>
		   				</li>
		   			</ul>
		   		</div>
	 		</div>
	   		<!-- 오른쪽 메뉴 -->
	   		<div class="col-md-10">
		   		<div class="nav-right"><!-- 왜 안되는지모르겠음 -->
					<%if(logincheck=="needlogin"){%>
						<jsp:include page="/login.html"/>
					<%}else{ %>
					   		<c:choose>
					   			<c:when test="${param.mypagetask=='editmember'}">
					   				<jsp:include page="/sign.html"/>
					   			</c:when>
					   			<c:when test="${param.mypagetask=='coincharge'}">
					   				<jsp:include page="/payment.html"/>
					   			</c:when>
					   			<c:when test="${param.mypagetask=='runlog'}">
					   				<jsp:include page="/WalkingStatus2.html"/>
					   			</c:when>
					   			<c:otherwise>
					   			</c:otherwise>
					   		</c:choose>
			   		<%} %>
		   		</div>
	   		</div>
	   </div>
   </div>
   <footer class="py-4 bg-dark">
    	<div class="container"><p class="m-0 text-center text-white">Copyright &copy; Dog Walker 2023</p></div>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>