<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>예약확인페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
<script>
	$(function(){
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");
	})
</script>
  </head>
  <!-- 자바스크립트 시작 -->
  <script> 
  function btn(sample){  
     alert(sample); 
  } 
 </script> 
  <!-- 자바스크립트 끝 -->
<style>
    ul{
    list-style:none;
    }
    
a{
text-decoration:none;
color:#000;

}

a:hover{
text-decoration:none;
color:#000;
}

.ListBox{
background: #eee;
width: 200px;
}
.ListBox ul{
padding: 0px;
}

.ListBox ul li{
text-align: center;
padding: 3px;
font-size: 15px;
}

.ListLabel{
text-align: center;
border-bottom: 2px solid #000;
font-size: 20px;
padding: 10px;
font-weight: 900;

}

.List{
list-style: none;
}

.List > a{
display:block;
padding: 10px 20px;
text-decoration: none;

}

.List > a:hover{
background: #999;
}

.List > a:hover li {color: #fff;}

.board_wrap_2  {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }

    .board_list_wrap {
        width: calc(100% - 220px);
        
    }
    
    .px-2{
    	margin-right: 40px;
    }
    
    .mt-1{
    	margin-top: 100px;
    }

</style>
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
	<div class="container mt-1">
		<!-- 사이드바, 게시판 리스트 묶는 div -->
		<div class="board_wrap_2">
			<div class="ListBox px-2">
				<div>
					<p class="ListLabel">예약 확인</p>
					<ul>
						<li><a href="#">전체 예약</a></li>
						<li><a href="#">확정 예약</a></li>
						<li><a href="#">보낸 예약신청</a></li>
						<li><a href="#">받은 예약신청</a></li>
					</ul>
				</div>
			</div>

			<table class="table table-hover">
				<thead class="table-light">
					<tr>
						<th>산책자</th>
						<th>강아지</th>
						<th>예약일시</th>
						<th>신청타입</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<tr>
						<td>류석우</td>
						<td>푸푸</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>견주신청(2)</td>
						<td>
							<button type="button" class="btn btn-primary" onclick="javascript:btn('예약이 확정되었습니다.')">확정하기</button>
							<button type="button" class="btn btn-danger">거절하기</button>
						</td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td>
							<button type="button" class="btn btn-secondary" disabled>승인 대기중</button>
						</td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-primary" disabled>확정됨</button>
							<!-- 모달 시작 -->
								<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">취소하기</button>	
								<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h1 class="modal-title fs-5" id="exampleModalLabel">예약취소</h1>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								      	<p>경고 : 정당한 사유없이 산책을 당일에 취소 할 경우 패널티가 부과 됩니다.</p>
								      	<input class="form-control" type="text" placeholder="산책취소 사유를 적어주세요" aria-label="default input example">
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="button" class="btn btn-danger">제출 후 취소하기</button>
								      </div>
								    </div>
								  </div>
								</div>
								<!-- 모달 끝 -->
							</td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-primary" disabled>확정됨</button>
							<!-- 모달 시작 -->
							<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">취소하기</button>	
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">예약취소</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							      	<p>경고 : 정당한 사유없이 산책을 당일에 취소 할 경우 패널티가 부과 됩니다.</p>
							      	<input class="form-control" type="text" placeholder="산책취소 사유를 적어주세요" aria-label="default input example">
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							        <button type="button" class="btn btn-danger">제출 후 취소하기</button>
							      </div>
							    </div>
							  </div>
							</div>
							<!-- 모달 끝 -->
						</td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-danger" disabled>거절됨</button></td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-primary" disabled>산책완료</button></td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-primary" disabled>산책완료</button></td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-danger" disabled>산책취소함</button></td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-danger" disabled>거절함</button></td>
					</tr>
					<tr>
						<td>윤건하</td>
						<td>멍멍이</td>
						<td>2023-07-18 18:30~19:00</td>
						<td>산책자신청(1)</td>
						<td><button type="button" class="btn btn-primary" disabled>산책완료</button></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 사이드바, 리스트 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<!-- 푸터 시작 -->
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