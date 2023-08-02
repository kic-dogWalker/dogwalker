<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="js/scripts.js"></script>
<script>
	$(function(){
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");

		
		
		$(document).ready(function(){
			
			 console.log("Document ready");
			//item_list.jsp 에서 저장한 세션데이터를 불러오기위해 선언.
				var name = sessionStorage.getItem('productName');
				var price = sessionStorage.getItem('productPrice');
				var num = sessionStorage.getItem('productNum');
				var image = sessionStorage.getItem('productImage');
				var content = sessionStorage.getItem('productContent');
				var cate = sessionStorage.getItem('productCate');
			 
			//상품 디테일 폼 생성
			var productsDetail = [
				{ image: image, name: name, price: price, num: num, content: content, cate: cate }
				];
			// 상품 상세페이지 생성
			$.each(productsDetail, function (index, productDetail) {
			    console.log(index, productDetail);
			    var productDetailHTML =
			        '<div class="col-md-6">' +
			        '<img class="card-img-top mb-5 mb-md-0" src="' + productDetail.image + '" alt="..." />' +
			        '</div>' +
			        '<div class="col-md-6">' +
			        '<div class="small mb-1">상품번호 : ' + productDetail.num + '</div>' +
			        '<h3 class="display-3 fw-bolder">' + productDetail.cate + '</h1>' +
			        '<h1 class="display-5 fw-bolder">' + productDetail.name + '</h1>' +
			        '<div class="fs-5 mb-5">' +
			        '<div class="row data">' +
			        '<div class="subdiv">' +
			        '<div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="' + productDetail.price + '"></div>' +
			        '<div class="num">' +
			        '<div class="updown">' +
			        '<input type="text" name="p_num1" id="p_num1" size="1" maxlength="4" class="p_num" value="1" onkeyup="changePNum(1, ' + productDetail.price + ');">' +
			        '<span onclick="changePNum(1, ' + productDetail.price + ');"><i class="fas fa-arrow-alt-circle-up up"></i></span>' +
			        '<span onclick="changePNum(1, ' + productDetail.price + ');"><i class="fas fa-arrow-alt-circle-down down"></i></span>' +
			        '</div>' +
			        '</div>' +
			        '<div class="sum">' + productDetail.price + ' 원</div>' +
			        '</div>' +
			        '</div>' +
			        '<p class="lead">'+ productDetail.content +'</p>' +
			        '<div class="d-flex">' +
			        '<button class="btn btn-outline-dark flex-shrink-0" type="button" href="#" onclick="addToCart()">' +
			        '<i class="bi-cart-fill me-1"></i>' +
			        '장바구니 추가' +
			        '</button>' +
			        '<p>&nbsp;&nbsp;</p>' +
			        '<button class="btn btn-outline-dark flex-shrink-0" type="button" onclick="redirectToOrderPage()">' +
			        '바로구매' +
			        '</button>' +
			        '</div>' +
			        '</div>' +
			        '</div>';

			    $("#product-detail").append(productDetailHTML);
			});
		});
	})
</script>
<style>
    h3.display-3 {
      font-size: 24px; 
    }
  </style>
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
<section class="py-5">
            <div class="container px-4 px-lg-5 my-5" >
                <div class="row gx-4 gx-lg-5 align-items-center" id="product-detail">
                    <!-- productDetail  -->
                </div>
            </div>
        </section>
<!-- 본문끝 -->
<!-- Footer -->
</td></tr>
<tr valign="bottom" height="150"  bgcolor="#ffffff">
<td>
	<div id="footer"></div>
</td>
</tr>
</table>
<script>
function changePNum(pos, productPrice) {
  var item = document.querySelector('input[name=p_num' + pos + ']');
  var p_num = parseInt(item.getAttribute('value'));
  var newval = event.target.classList.contains('up')
    ? p_num + 1
    : event.target.classList.contains('down')
    ? p_num - 1
    : event.target.value;

  if (parseInt(newval) < 1 || parseInt(newval) > 99) {
    return false;
  }

  item.setAttribute('value', newval);
  item.value = newval;

  var productPriceFloat = parseFloat(productPrice);
  item.parentElement.parentElement.nextElementSibling.textContent = (
    newval * productPriceFloat
  ).formatNumber() + '원';
}
function redirectToOrderPage() {
	  window.location.href = 'order_page.jsp';
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>