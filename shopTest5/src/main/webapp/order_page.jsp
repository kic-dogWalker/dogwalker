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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!"><img src="img/logo.png" width="100" height="100" alt="..."></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="product_list.jsp">전체 상품</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="product_list_cate1.html">간식</a></li>
                                <li><a class="dropdown-item" href="product_list_cate2.html">장난감</a></li>
                                <li><a class="dropdown-item" href="product_list_cate3.html">사료</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#!">예약</a></li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            <a href="cart.html">장바구니</a>
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
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
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>