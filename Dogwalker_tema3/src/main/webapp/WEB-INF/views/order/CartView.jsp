<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="../resources/css/cart3.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<script>
	$(function(){
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");
	})
</script>
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
<body>
		
<div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
            <div class="container">
                <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                    <div class="col-lg-6">
                        <h1 class="h2 text-uppercase mb-0">장바구니</h1>
                    </div>
                    <div class="col-lg-6 text-lg-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                <li class="breadcrumb-item"><a class="text-dark" href="index.html"></a></li>
                                                      </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5">
            <h2 class="h5 text-uppercase mb-4">장바구니 목록</h2>
            <div class="row">
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <!-- CART TABLE-->
                    <div class="table-responsive mb-4">
                        <table class="table text-nowrap">
                            <thead class="bg-light">
                            <tr>
                                <th class="border-0 p-3" scope="col"> <strong class="text-sm text-uppercase" id="pname">상품</strong></th>
                                <th class="border-0 p-3" scope="col"> <strong class="text-sm text-uppercase" id="p_price">가격</strong></th>
                                <th class="border-0 p-3" scope="col"> <strong class="text-sm text-uppercase"id="p_cnt">수량</strong></th>
                                <th class="border-0 p-3" scope="col"> <strong class="text-sm text-uppercase"id="sum">합계</strong></th>
                                <th class="border-0 p-3" scope="col"> <strong class="text-sm text-uppercase"id="del">삭제</strong></th>
                            </tr>
                            </thead>
                            <tbody class="border-0">
                            <!-- 첫번째 상품 -->
                            <tr id="cart1">
                                <th class="ps-0 py-3 border-light" scope="row">
                                    <div class="d-flex align-items-center"><a class="reset-anchor d-block animsition-link" href="detail.html"><img src="https://img.biteme.co.kr/product/750/3fa3e3885078af3dc932bdcfe13cf55c.jpg" alt="..." width="70"/></a>
                                        <div class="ms-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html" id="pname">로얄캐닌 미니 인도어 퍼피1</a></strong></div>
                                    </div>
                                </th>
                                <td class="p-3 align-middle border-0">
                                    <p class="mb-0 small">9,900원</p>
                                </td>
                                <!-- 수량 입력 -->
                                <td class="p-3 align-middle border-0">
                                    <div class="border d-flex align-items-center justify-content-between px-3">
                                        <span class="small text-uppercase text-gray headings-font-family">수량</span>
                                        <div class="quantity">
                                            <button class="dec-btn p-0" onclick="updateQuantity(-1,1)"><i class="fas fa-caret-left"></i></button>
                                            <input class="form-control form-control-sm border-0 shadow-0 p-0" type="text" value="1" id="p_cntInput1"/>
                                            <button class="inc-btn p-0" onclick="updateQuantity(1,1)"><i class="fas fa-caret-right"></i></button>
                                        </div>
                                    </div>
                                </td>
                                <!-- 가격 표시 -->
                                <td class="p-3 align-middle border-light">
                                    <p class="mb-0 small price" id="p_sum1">9,900원</p>
                                </td>
                                <!-- 삭제 버튼 -->
                            <td class="p-3 align-middle border-light">
						        <a class="reset-anchor" href="#!" onclick="deleteRow(1)"><i class="fas fa-trash-alt small text-muted" id="del1"></i></a>
						    </td>
                            </tr>

                            <!-- 두 번째 상품 -->
                            <tr id="cart2">
                                <th class="ps-0 py-3 border-light" scope="row">
                                    <div class="d-flex align-items-center">
                                        <a class="reset-anchor d-block animsition-link" href="detail.html">
                                            <img src="https://img.biteme.co.kr/product/750/3fa3e3885078af3dc932bdcfe13cf55c.jpg" alt="..." width="70"/>
                                        </a>
                                        <div class="ms-3">
                                            <strong class="h6">
                                                <a class="reset-anchor animsition-link" href="detail.html" id="pname2">로얄캐닌 미니 인도어 퍼피2</a>
                                            </strong> 
                                         </div>
                                    </div>
                                </th>
                                <td class="p-3 align-middle border-0">
                                    <p class="mb-0 small">9,900원</p>
                                </td>
                                <!-- 수량 입력 -->
                                <td class="p-3 align-middle border-0">
                                    <div class="border d-flex align-items-center justify-content-between px-3">
                                        <span class="small text-uppercase text-gray headings-font-family">수량</span>
                                        <div class="quantity">
                                            <button class="dec-btn p-0" onclick="updateQuantity(-1, 2)"><i class="fas fa-caret-left"></i></button>
                                            <input class="form-control form-control-sm border-0 shadow-0 p-0" type="text" value="1" id="p_cntInput2"/>
                                            <button class="inc-btn p-0" onclick="updateQuantity(1, 2)"><i class="fas fa-caret-right"></i></button>
                                        </div>
                                    </div>
                                </td>
                                <!-- 가격 표시 -->
                                <td class="p-3 align-middle border-light">
                                    <p class="mb-0 small price" id="p_sum2">9,900원</p>
                                </td>
                                <!-- 삭제 버튼 -->
                                <td class="p-3 align-middle border-light">
							        <a class="reset-anchor" href="#!" onclick="deleteRow(2)"><i class="fas fa-trash-alt small text-muted" id="del2"></i></a>
							    </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- CART NAV-->
                    <div class="bg-light px-4 py-3">
                        <div class="row align-items-center text-center">
                            <div class="col-md-6 mb-3 mb-md-0 text-md-start">
                                <a class="btn btn-link p-0 text-dark btn-sm" href="product_list.jsp"><i class="fas fa-long-arrow-alt-left me-2"></i>쇼핑계속하기</a>
                            </div>
                            <div class="col-md-6 text-md-end">
                                <a class="btn btn-outline-dark btn-sm" href="order_page.jsp">구매하기<i class="fas fa-long-arrow-alt-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ORDER TOTAL-->
                <div class="col-lg-4">
                    <div class="card border-0 rounded-0 p-lg-4 bg-light">
                        <div class="card-body">
                            <h5 class="text-uppercase mb-4">총 구매금액</h5>
                            <ul class="list-unstyled mb-0">
                                <li class="d-flex align-items-center justify-content-between">
                                    <strong class="text-uppercase small font-weight-bold">구매목록</strong>
                                    <span class="text-muted small" id="CartList">로얄캐닌 미니 인도어 퍼피, 로얄캐닌 미니 인도어 퍼피</span>
                                </li>
                                <li class="border-bottom my-2"></li>
                                <li class="d-flex align-items-center justify-content-between">
                                    <strong class="text-uppercase small font-weight-bold">배송비</strong>
                                    <span class="text-muted small" id="beasong">3,000원</span>
                                </li>
                                <li class="border-bottom my-2"></li>
                                <li class="d-flex align-items-center justify-content-between mb-4">
                                    <strong class="text-uppercase small font-weight-bold">총 구매금액</strong>
                                    <span id="totalprice">19,800원</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
		<!-- JavaScript files-->
		<script src="js/cart.js"></script>
		<script>
			//SVG
			function injectSvgSprite(path) {
				var ajax = new XMLHttpRequest();
				ajax.open("GET", path, true);
				ajax.send();
				ajax.onload = function(e) {
					var div = document.createElement("div");
					div.className = 'd-none';
					div.innerHTML = ajax.responseText;
					document.body
							.insertBefore(div, document.body.childNodes[0]);
				}
			}

			injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');
		</script>
		<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
			integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
			crossorigin="anonymous">
	
	
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