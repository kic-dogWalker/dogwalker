<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/cart2.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!"><img src="img/logo2.png" width="100" alt="..."></a>
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
                   <form class="d-flex" action="#">
                        <button class="btn btn-outline-dark" type="submit" >
                            <i class="bi-cart-fill me-1"></i>
                            장바구니
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5" >
                <div class="row gx-4 gx-lg-5 align-items-center" id="product-detail">
                    <!-- productDetail  -->
                </div>
            </div>
        </section>
        <!-- Related items section-->
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/cart.js"></script>
        <script>
		$(document).ready(function(){
			 console.log("Document ready");
			// 상품 데이터 배열
			var productsDetail = [
				{image:"https://dummyimage.com/450x300/dee2e6/6c757d.jpg",name:"간식2",price:"20000원",num:"12345"}
				];
			// 상품 카드 생성
			$.each(productsDetail,function(index,productDetail){
				console.log(index, productDetail);
				var productDetail = `
					<div class="col-md-6">`+ "<img class='card-img-top mb-5 mb-md-0' src='" + productDetail.image +"' alt='...' />"+`</div>
                    <div class="col-md-6">
                        <div class="small mb-1">` + productDetail.num + `</div>
                        <h1 class="display-5 fw-bolder">` + productDetail.name + `</h1>
                        <div class="fs-5 mb-5">
                            <div class="row data">
			                    <div class="subdiv">
			                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="20000"></div>
			                        <div class="num">
			                            <div class="updown">
			                                <input type="text" name="p_num1" id="p_num1" size="1" maxlength="4" class="p_num" value="1" onkeyup="javascript:basket.changePNum(1);">
			                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
			                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
			                            </div>
			                        </div>
			                        <div class="sum">` + productDetail.price + `</div>
			                    </div>
                        	</div>
                        <p class="lead">제품설명</p>
                        <div class="d-flex">
                            <button class="btn btn-outline-dark flex-shrink-0" type="button" href="cart.html" onclick="addToCart()">
                                <i class="bi-cart-fill me-1"></i>
                                장바구니 추가
                            </button>
                         <p>&nbsp;&nbsp;</p>
                         <button class="btn btn-outline-dark flex-shrink-0" type="button" href="#">
                                바로구매
                            </button>
                        </div>
                		</div>
                    </div>
				`;
				$("#product-detail").append(productDetail);
			});
		});
</script>
    </body>
</html>