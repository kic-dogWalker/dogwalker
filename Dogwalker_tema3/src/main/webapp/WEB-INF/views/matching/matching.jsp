<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<!-- 지도 넣으며 변경 -->
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>예약신청페이지</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<!-- 네이버지도 스크립트 -->
<script type="text/javascript"
	src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3bonmdfkjb"></script>
	<script>
	$(function(){
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");
	})
</script>
	<!-- 부트스트랩 아이콘 cdn -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- CSS only -->
<style>
* {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}
.cm-1{
		margin-top: 50px;
		margin-bottom: 50px;
	}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
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
	<!-- 메인페이지 시작 -->

	<p>
	<div class="container border border-2 cm-1">
		<!-- 주 컨텐츠 컨테이너 시작 -->
			<!-- 페이지 설명 시작 -->
		<p>
		<div class="row">
			<div class="col text-center">
				<h1>예약신청하기</h1>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<p>강아지를 산책 시켜줄 믿음직스러운 산책자에게 산책을 신청해보세요! <br> or 오늘은 어떤 귀여운 강아지를
					산책시켜볼까요?</p>
			</div>
		</div>
		<!-- 페이지 설명 끝 -->
		<br>
		<!-- 날짜 선택 시작 -->
		<div class="row">
			<div class="col-1">
				<img src="../resources/img/n1.png" class="float-end" style="width: 40px;" alt="...">
			</div>
			<div class="col-2">
				<h2>날짜 선택</h2>
			</div>
			<div class="col-6">
				<select class="form-select aria-label=" Default selectexample">
					<option selected>날짜를 선택해주세요</option>
					<option value="1">2023-07-12(오늘)</option>
					<option value="2">2023-07-13(내일)</option>
					<option value="3">2023-07-14(모레)</option>
				</select>
			</div>
			<div class="col-3"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col">
				<p>산책을 진행할 날짜를 먼저 선택해주세요</p>
				<p>
			</div>
		</div>
		<!-- 날짜 선택 끝 -->
		<p>
		<p>
		<!-- 지도 시작 -->
		<div class="row">
			<div class="col-1"><img src="../resources/img/n2.png" class="float-end" style="width: 40px;" alt="..."></div>
			<div class="col-10">
				<div id="map" style="max-width: none; height:500px; border: 0;"></div><!-- 네이버 지도 API 반드시 height 줘야 함 -->
			</div>
			<div class="col-1"></div>
		</div>
		<p>
		<div class="row">
			<div class="col-1"></div>
			<div class="col">
				<p>지도에서 산책자(or 강아지)를 선택해주세요</p>
				<p>
			</div>
		</div>
		<!-- 지도 끝 -->
		<p>
		<p>
		<!-- 산책 시간 설정 시작 -->
		<div class="container">
			<div class="row">
				<div class="col-1"><img src="../resources/img/n3.png" class="float-end" style="width: 40px;" alt="..."></div>
				<div class="col-2">
					<h5>산책 시작 시간</h5>
					<p>
					<h5>산책 종료 시간</h5>
				</div>
				<div class="col-3">
					<form>
						<input type="time" value="13:10" min="13:00" max="15:00">
						<p>
						<p>
						<input type="time" value="13:10" min="13:00" max="15:00">
					</form></div>
				<div class="d-grid gap-3 col-5">
						<button type="button" class="btn btn-primary">신청하기</button>
						<br>
				</div>
				<div class="col-1"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col">
				<p>원하시는 산책 시간을 선택해주세요</p>
				<p>
			</div>
		</div>
		<!-- 산책 시간 설정 끝 -->
	</div><!-- 주 컨텐츠 컨테이너 끝 -->
	<p>
	<p>
	<!-- 메인페이지 끝 -->
</td></tr>
<tr valign="bottom" height="150"  bgcolor="#ffffff">
<td>
	<div id="footer"></div>
</td>
</tr>
</table>
	<!-- 네이버 지도 스크립트 시작 -->
	<script>
		
		/* var mapOptions = {
		    center: new naver.maps.LatLng(37.4989458, 127.0281476),
		    zoom: 15
		};
		
		var map = new naver.maps.Map('map', mapOptions);
		
		지도만 보여주는 예제
		*/
		
		var HOME_PATH = window.HOME_PATH || '.';
		
		var kic = new naver.maps.LatLng(37.4989458, 127.0281476),
		    map = new naver.maps.Map('map', {
		        center: kic,
		        zoom: 16
		    }),
		    marker = new naver.maps.Marker({ /* kic캠퍼스 */
		        map: map,
		        position: kic
		    }),
		   	marker2 = new naver.maps.Marker({ /* 서브웨이 */
			   	map: map,
			    position: new naver.maps.LatLng(37.4997477, 127.0280235)
		   	}),
		   	marker3 = new naver.maps.Marker({ /* 싸다김밥 */
		        map: map,
		        position: new naver.maps.LatLng(37.4976322, 127.0295946)
			});
		
		var contentString = [ /* 자바스크립트에서 html에 구현 될 내용을 적을 때는 전부 문자기 때문에 앞뒤에 콤마를 붙여야 된다. */
		    '<div class="iw_inner">',
		    '   <h3>반려견 이름: 석우</h3>',
		    '   반려견 나이: 27살<br />',
		    '   반려견 견종: 진돗개<br />',
		    '   반려견 성향: 상<br />',
		    '   <p>주소: 서울 관악구<br />',
		    '       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="55" height="55" alt="사진" class="thumb" /><br />',
		    '       <a href="http://www.seoul.go.kr" target="_blank">예약하기</a>',
		    '       <a href="http://www.seoul.go.kr" target="_blank">채팅하기</a>',
		    '   </p>',
		    '</div>'
		    ].join('');
		    
		var contentString2 = [ /* 자바스크립트에서 html에 구현 될 내용을 적을 때는 전부 문자기 때문에 앞뒤에 콤마를 붙여야 된다. */
		    '<div class="iw_inner">',
		    '   <h3>반려견 이름: 수원96대장윤건하</h3>',
		    '   반려견 나이: 4살<br />',
		    '   반려견 견종: 말티즈<br />',
		    '   반려견 성향: 상<br />',
		    '   <p>주소: 서울 강남구 강남대로96길 12<br />',
		    '       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="55" height="55" alt="사진" class="thumb" /><br />',
		    '       <a href="http://www.seoul.go.kr" target="_blank">예약하기</a>',
		    '       <a href="http://www.seoul.go.kr" target="_blank">채팅하기</a>',
		    '   </p>',
		    '</div>'
		].join('');
		
		var contentString3 = [ /* 자바스크립트에서 html에 구현 될 내용을 적을 때는 전부 문자기 때문에 앞뒤에 콤마를 붙여야 된다. */
		    '<div class="iw_inner">',
		    '   <table class="table">',
		    '   <tr><img src="img/GGO.png" style="width: 150px;" class="rounded-circle mx-auto d-block" alt="..."></tr>',
		    '   <tr><td>반려견 이름</td><td>푸푸</td></tr>',
		    '   <tr><td>반려견 나이</td><td>7살</td></tr>',
		    '   <tr><td>견주 별점</td><td>4.5점</td></tr>',
		    '   <tr><td>주소</td><td>서울 강남구 테헤란로4길 6</td></tr>',
		    '       <tr><td><button type="button" class="btn btn-primary">선택하기</button></td><td><button type="button" class="btn btn-success">채팅하기</button></td></tr>',
		    '   </table>',
		    '</div>'
		].join('');
		
		var infowindow = new naver.maps.InfoWindow({
		    content: contentString,
		    maxWidth: 400,
		    backgroundColor: "#eee",
		    borderColor: "#2db400",
		    borderWidth: 5,
		    anchorSize: new naver.maps.Size(30, 30),
		    anchorSkew: true,
		    anchorColor: "#eee",
		    pixelOffset: new naver.maps.Point(20, -20)
		});
		
		var infowindow2 = new naver.maps.InfoWindow({
		    content: contentString2,
		    maxWidth: 400,
		    backgroundColor: "#eee",
		    borderColor: "#2db400",
		    borderWidth: 5,
		    anchorSize: new naver.maps.Size(30, 30),
		    anchorSkew: true,
		    anchorColor: "#eee",
		    pixelOffset: new naver.maps.Point(20, -20)
		});
		
		var infowindow3 = new naver.maps.InfoWindow({
		    content: contentString3,
		    maxWidth: 400,
		    backgroundColor: "#eee",
		    borderColor: "#000000",
		    borderWidth: 2,
		    anchorSize: new naver.maps.Size(30, 30),
		    anchorSkew: true,
		    anchorColor: "#eee",
		    pixelOffset: new naver.maps.Point(20, -20)
		});
		
		naver.maps.Event.addListener(marker, "click", function(e) {
		    if (infowindow.getMap()) {
		        infowindow.close();
		    } else {
		        infowindow.open(map, marker);
		    }
		});
		
		naver.maps.Event.addListener(marker2, "click", function(e) {
		    if (infowindow2.getMap()) {
		        infowindow2.close();
		    } else {
		        infowindow2.open(map, marker2);
		    }
		});
		
		naver.maps.Event.addListener(marker3, "click", function(e) {
		    if (infowindow3.getMap()) {
		        infowindow3.close();
		    } else {
		        infowindow3.open(map, marker3);
		    }
		});
		
		infowindow.open(map, marker);
		
		infowindow2.open(map, marker2);
		
		infowindow3.open(map, marker3);
	</script>
	<!-- 네이버 지도 스크립트 끝 -->
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>