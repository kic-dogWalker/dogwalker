<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
	.nav-mypage-left{
		position:relative;
		margin-left:100px;
		float:left;
		width:250px;
	}
	
	.nav-mypage-left ul{
		list-style:none;
	}
	
	.nav-mypage-left a{
		text-decoration:none;
		color:black;
	}
	
	.mypage-left-list > li {
		height:30px;
		background-color:#f5f5f5;
		display:block;
	}
	
		.mypage-left-list > li > a{
		font-size:5px;
		margin-left:60px;
	}
	
	.mypage-left-list > li:first-child > a {
		font-weight:bold;	
		margin-left:60px;
		font-size:15px;
		
	}
	
	.mypage-right{
		position:relative;
		float:left;
		width:850px;
		margin-left:30px;
	}
</style>
<script>
	$(function(){
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");
	})
</script>
<c:set var="logincheck" value="needlogin0"/>
</head>
<body>
<!-- Header -->
<table border="solid 1px white" cellpadding="0" cellspacing="0" color="#a0a0a0" align="center" width="1536">
<tr valign="top" height="150" >
<td >
	<div id="header"></div>
</td>
</tr>
<tr valign="middle" bgcolor="#ffffff"><td>
<!-- 본문 -->	
<!-- 왼쪽 메뉴 -->
<div class="nav-mypage-left">
	<ul>
		<li>
			<ul class="mypage-left-list">
			   	<li ><a href="#">회원정보</a></li>
			   	<li><a href="${pageContext.request.requestURI}?mypagetask=memedit">-정보수정</a></li>
			   	<li ><a href="#">-배송지목록</a></li>
		   	</ul>
		</li>
		<li>
		   	<ul class="mypage-left-list">
			   	<li><a href="#">쇼핑내역</a></li>
			   	<li><a href="#">-구매상품목록</a></li>
			   	<li><a href="#">-주문취소내역</a></li>
		   	</ul>
		</li>
		<li>
		   <ul class="mypage-left-list">
		   		<li><a href="#">멍코인 (예치금)</a></li>
		   		<li><a href="#">-멍코인 사용내역</a></li>
		  		<li><a href="${pageContext.request.requestURI}?mypagetask=coincharge">-멍코인 충전하기</a></li>
		   	</ul>
		 </li>
		<li>
		   	<ul class="mypage-left-list">
		   		<li><a href="#">내강아지정보</a></li>
		   		<li><a href="#">-강아지정보수정</a></li>
		   		<li><a href="${pageContext.request.requestURI}?mypagetask=runlog">-산책로그</a></li>
		   		<li><a href="#">-내 평점</a></li>
		   	</ul>
		</li>
		<li>
		   	<ul class="mypage-left-list">
		   		<li><a href="#">작성글목록</a></li>
		   		<li><a href="#">-자유게시판</a></li>
		   		<li><a href="#">-Q&A게시판</a></li>
		   	</ul>
		 </li>
	</ul>
</div>
<!-- 오른쪽 메뉴 -->
<div class="mypage-right">
	<c:choose>
		<c:when test="${logincheck=='needlogin'}">
			<jsp:include page="loginmypage.jsp" />
		</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${param.mypagetask=='memedit'}">
				<jsp:include page="memedit.html" />
			</c:when>
			<c:when test="${param.mypagetask=='coincharge'}">
				<jsp:include page="payment.html" />
			</c:when>
			<c:when test="${param.mypagetask=='runlog'}">
				<jsp:include page="WalkingStatus2.html" />
			</c:when>
			<c:otherwise>
			</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
</div> 
<!-- 본문끝 -->
<!-- Footer -->
</td></tr>
<tr valign="bottom" height="150"  bgcolor="#ffffff">
<td>
	<div id="footer"></div>
</td>
</tr>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>