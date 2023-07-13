<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles2.css" rel="stylesheet" />
    </head>
<style>
        .form-control {
            width: 300px;
            height: 30px;
            padding: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .container3 {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
  
        }
        .col-sm-2{
        width: 100px;
        height: 50px;
        }
        
        .col-sm-4{
         width: 400px;
        height: 20px;
        padding: 20px;
        }
    </style>
    <body>
 
        <!-- Navigation-->
  <jsp:include page="/view/header.jsp" />
        <!-- Product section-->
        	<div class="jumbotron"> 
		<div class="container">
			<h1 class="display-3 container3">배송 정보</h1>
		</div>
	</div>
	
	<div class="container3">
		<form method="post" class="form-horizontal" 
			action="processShippingInfo.jsp">
			<input type="hidden" name="cartId" value="${param.cartId}">
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" placeholder="성명을 입력해주세요." />
				</div>
			</div>
			

			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input type="tel" name="country" class="form-control"  placeholder="전화번호를 입력해주세요."/>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input type="text" name="zipCode" class="form-control"  pattern="[0-9]{5}" placeholder="우편번호를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressName" class="form-control" placeholder="주소를 입력해주세요."/>
				</div>
			</div>
					<div class="form-group row">
				<label class="col-sm-2">상세주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressName" class="form-control"  />
				</div>
			</div>
			<div class="form-group row">
			  <label class="col-sm-2">요청사항</label>
			  <div class="col-sm-3">
			    <textarea name="addressName" class="form-control" placeholder="요청사항을 입력해주세요." rows="4"></textarea>
			  </div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset2 col-sm-10">
					<button class="btn btn-outline-primary" id="inputButton"> 이전</button>
					<button class="btn btn-outline-primary" id="inputButton"> 확인</button>
        			<button class="btn btn-outline-primary" id="inputButton">다시 작성</button>				
				</div>
			</div>
	<div class="form-group row">
    	<label class="col-sm-2">결제방식</label>
		    <div class="col-sm-4">
		        <label class="form-check-label">
		            <input type="radio" name="paymentMethod" value="card" class="form-check-input" /> 카드
		        </label>
		        <label class="form-check-label">
		            <input type="radio" name="paymentMethod" value="cash" class="form-check-input" /> 현금
		        </label>
		        <label class="form-check-label">
		            <input type="radio" name="paymentMethod" value="point" class="form-check-input" /> 포인트
		        </label>
		    </div>
	 </div>
	 <div class="form-group row">
				<div class="col-sm-offset2 col-sm-10">
					<button class="btn btn-outline-primary" id="inputButton"> 결제하기</button>
							
				</div>
			</div>
		</form>
	</div>
        <!-- Related items section-->
        <!-- Footer-->
          <jsp:include page="/view/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>