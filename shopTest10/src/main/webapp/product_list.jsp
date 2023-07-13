<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<title></title>

</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#!">
				<img src="img/logo2.png" width="100" alt="...">
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="main.html">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="product_list.jsp">전체 상품</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="product_list_cate1.jsp">간식</a></li>
							<li><a class="dropdown-item" href="product_list_cate2.jsp">장난감</a></li>
							<li><a class="dropdown-item" href="product_list_cate3.jsp">사료</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="#!">예약</a></li>
				</ul>
				<form class="d-flex" action="#">
					<button class="btn btn-outline-dark" type="submit">
						<i class="bi-cart-fill me-1"></i>
						장바구니
					</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- Header-->
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center" id="product-list">
				<!-- Product Cards -->
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
		</div>
	</footer>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script>
		$(document).ready(function(){
			 console.log("Document ready");
			// 상품 데이터 배열
			var products = [
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"},
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"00000원"}
				];
			// 상품 카드 생성
			$.each(products,function(index,product){
				console.log(index, product);
				var cardHtml = `
				    <div class="col mb-5">
				        <div class="card h-100">` 
				        + "<img class='card-img-top' src='" + product.image +"' alt='...' />"
							+`<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder">` + product.name + `</h5>
									` + product.price + `
								</div>
							</div>
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto" href="product_detail.jsp">View options</a>
								</div>
							</div>
						</div>
					</div>
				`;
				$("#product-list").append(cardHtml);
			});
		});
</script>
</body>
</html>

