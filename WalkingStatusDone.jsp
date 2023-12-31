<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>산책현황-산책완료</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script>
	$(function(){
		$("#header").load("header.html");
		$("#footer").load("footer.html");
	})
</script>
<style>
	.cm-1{
		margin-top: 50px;
		margin-bottom: 50px;
	}
	/* 별점 CSS 시작 */
	#myform fieldset{
	    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform input[type=radio]{
	    display: none; /* 라디오박스 감춤 */
	}
	#myform label{
	    font-size: 3em; /* 이모지 크기 */
	    color: transparent; /* 기존 이모지 컬러 제거 */
	    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
	    
	}
	#myform label:hover{
	    text-shadow: 0 0 0 #FFDB4C; /* 마우스 호버 */
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 #FFDB4C; /* 마우스 호버 뒤에오는 이모지들 */
	}
	#myform fieldset{
	    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	    direction: rtl; /* 이모지 순서 반전 */
	    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform fieldset legend{
	    text-align: left;
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 #FFDB4C; /* 마우스 클릭 체크 */
	}
	/* 별점 CSS 끝 */
</style>
  </head>
  <body>
  <!-- 상단바 시작-->
	<table border="solid 1px white" cellpadding="0" cellspacing="0" color="#a0a0a0" align="center" width="1536">
<tr valign="top" height="150" >
<td >
	<div id="header"></div>
</td>
</tr>
<tr valign="middle" bgcolor="#ffffff"><td>
	<!-- 상단바 끝 -->
	<p>
	
	<!-- 산책현황 페이지 내용 시작 -->
	<p>
	<div class="container text-center border border-2">
		<p>
		<div class="row">
			<div class="col text-center">
				<h1>산책현황</h1>
			</div>
		</div>
		<p>
		<div class="row">
			<div class="col"><img src="img/SSD.png" alt="..."></div>
		</div><!-- row -->
		<p>
		<div class="row">
			<div class="col"><h2>산책완료!</h2></div>
		</div><!-- row -->
		<div class="row">
			<div class="col"><h3>18:30~19:00</h3></div>
		</div>
		<p>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-4"><img src="img/SU.png" style="width: 300px;" class="rounded-circle" alt="..."></div>
				<div class="col-4"><img src="img/GGO.png" style="width: 300px;" class="rounded-circle" alt="..."></div>
				<div class="col-2"></div>
			</div><!-- row -->
			<div class="row">
				<div class="col-2"></div>
				<div class="col-4"><h3>류석우</h3></div>
				<div class="col-4"><h3>꼬미</h3></div>
				<div class="col-2"></div>
			</div><!-- row -->
			<p>
			<div class="row">
				<div class="col"><h4>꼬미가 신나는 산책을 마쳤어요<br> 만족하셨다면 아래 별점을 매겨주세요!</h4></div>
			</div><!-- row -->
			<p>
			<div class="row">
			<!-- 별점 시작 -->
				<div class="col">
					<form name="myform" id="myform" method="post" action="./save">
						<fieldset>
							<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
							<input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
							<input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
							<input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
							<input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
						</fieldset>
					</form>
				</div>
				<p>
				<!-- 별점 끝 -->
			</div><!-- row -->
			<div class="row">
			<div class="col-2"></div>
				<div class="col-4"><button type="button" class="btn btn-primary">건너뛰기</button></div>
				<div class="col-4"><button type="button" class="btn btn-primary">별점 제출하기</button></div>
				<div class="col-2"></div>
			</div><!-- row -->
			<div class="row">
			<p>
			<p>
	</div>
	</div>
	<!-- 컨테이너 -->
	<!-- 산책현황 페이지 내용 끝 -->
	<p>
</td></tr>
<tr valign="bottom" height="150"  bgcolor="#ffffff">
<td>
	<div id="footer"></div>
</td>
</tr>
</table>
	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>