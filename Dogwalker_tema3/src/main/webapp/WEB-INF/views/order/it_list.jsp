<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="/resources/js/scripts.js"></script>

<script>
	$(function(){
		$("#header").load("/resources/template/head.jsp");
		$("#footer").load("/resources/template/footer.jsp");
		
		document.getElementById('registerButton').addEventListener('click', function() {
            window.location.href = '/it_reg';
        });
	})
</script>
<script>
  $(function(){
    
    $(document).ready(function(){
      console.log("Document ready");
      
      // 상품 데이터 배열
      var products = [
        {image:"/resources/img/치실 장난감(거북이).jpg",name:"[프랑소와펫] 코튼 100% 치실 장난감 - 거북이",price:"4900",num:"1",content:"신나고 즐거운 놀이를 즐기면서 건강한 치아를 유지 할 수 있는 댕댕이들의 기본템인 치실 장난감!",cate:"#장난감"},
        {image:"./img/치실 장난감(기린).jpg",name:"[프랑소와펫] 코튼 100% 치실 장난감 - 기린",price:"7900",num:"2",content:"신나고 즐거운 놀이를 즐기면서 건강한 치아를 유지 할 수 있는 댕댕이들의 기본템인 치실 장난감!",cate:"#장난감"},
        {image:"./img/치실 장난감(테디베어).jpg",name:"[프랑소와펫] 코튼 100% 치실 장난감 - 테디베어(블루)",price:"7900",num:"3",content:"신나고 즐거운 놀이를 즐기면서 건강한 치아를 유지 할 수 있는 댕댕이들의 기본템인 치실 장난감!",cate:"#장난감"},
        {image:"./img/영양가득 말랑간식1.jpg",name:"[네추럴고메] 영양가득 말랑간식 - 새콤달콤 딸기와 망고",price:"8200",num:"4",content:"모든 반려견들이 건강하고 안전한 먹거리를 즐기기 바라는 마음을 담은 프리미엄 식품 브랜드입니다.",cate:"#간식"},
        {image:"./img/쫀득고구마.jpg",name:"[네추럴고메] 100% 국내산 쫀득 고구마",price:"9500",num:"5",content:"모든 반려견들이 건강하고 안전한 먹거리를 즐기기 바라는 마음을 담은 프리미엄 식품 브랜드입니다.",cate:"#간식"},
        {image:"./img/사료1.jpg",name:"[프론티어] 동결건조 사료 포크 300g",price:"	39000",num:"6",content:"",cate:"#사료"},
        {image:"./img/시니어사료1.jpg",name:"[나우] 프레쉬 스몰브리드 시니어 사료 1.36kg",price:"26000",num:"7",content:"",cate:"#사료"},
        {image:"./img/로푸드치킨1.jpg",name:"[스맥] 로푸드 치킨 250g",price:"19800",num:"9",content:"",cate:"#사료"}
      ];
      
      // 상품 카드 생성
      var productContainer = $("#product-list"); 

      for (var i = 0; i < products.length; i++) {
        var product = products[i];
        var cardHtml = '<div class="col mb-5 product-card" data-cate="' + product.cate + '">' +
          '<div class="card h-100">' +
          '<img class="card-img-top" src="' + product.image + '" alt="..." >' +
          '<div class="card-body p-4">' +
          '<div class="text-center">' +
          '<h6 class="fw-bolder">' + product.name + '</h6>' +
          product.price +
          ' 원</div>' +
          '</div>' +
          '<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">' +
          '<div class="text-center">' +
          '<a class="btn btn-outline-dark mt-auto view-options-btn" href="it_detail.jsp" data-name="' + product.name + '" data-price="' + product.price + '" data-num="' + product.num + '" data-image="' + product.image + '" data-content="' + product.content + '" data-cate="' + product.cate +'">View options</a>' +
          '</div>' +
          '</div>' +
          '</div>' +
          '</div>';

        productContainer.append(cardHtml);
      }
    });
	
    // Session에 저장시킬 인수
    function storeProductInfo(name, price, num, image, content, cate) {
      sessionStorage.setItem('productName', name);
      sessionStorage.setItem('productPrice', price);
      sessionStorage.setItem('productNum', num);
      sessionStorage.setItem('productImage', image);
      sessionStorage.setItem('productContent', content);
      sessionStorage.setItem('productCate', cate);
    }
    // It_detail.jsp로 이동하는 클릭 이벤트 핸들러 추가
    $(document).on('click', '.view-options-btn', function(event) {
      event.preventDefault();
      
      var name = $(this).data('name');
      var price = $(this).data('price');
      var num = $(this).data('num');
      var image = $(this).data('image');
      var content = $(this).data('content');
      var cate = $(this).data('cate');

      storeProductInfo(name, price, num, image, content, cate);
      window.location.href = 'it_detail.jsp';
    });
    

    // 카테고리 선택 시 상품 필터링
    $('#category-pills .btn').on('click', function(event) {
        event.preventDefault();

        var selectedCate = $(this).data('cate');

        // 모든 카테고리 버튼에서 active 클래스 제거
        $('#category-pills .btn').removeClass('active');
        // 선택된 카테고리 버튼에 active 클래스 추가
        $(this).addClass('active');

        // 상품 카드 필터링
        $('.product-card').hide();

        if (selectedCate === 'all') {
          $('.product-card').show();
        } else {
          $('.product-card[data-cate="' + selectedCate + '"]').show();
        }
      });
  });
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

  <section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
      <!-- Category Bar -->
      <div class="row mb-5">
		  <div class="col-md-6">
		    <div class="btn-group" id="category-pills" role="group" aria-label="Product Categories">
		      <button type="button" class="btn btn-secondary active" data-cate="all">전체 상품</button>
		      <button type="button" class="btn btn-secondary" data-cate="#장난감">장난감</button>
		      <button type="button" class="btn btn-secondary" data-cate="#사료">사료</button>
		      <button type="button" class="btn btn-secondary" data-cate="#간식">간식</button>
		    </div>
		  </div>
		</div>
		<!-- Product Cards 개수 표시 -->
      <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center" id="product-list">
        <!-- Product Cards -->
      </div>
      <!-- Pagination -->
		<nav aria-label="Product Pagination">
		  <ul class="pagination justify-content-center mt-4">
		    <li class="page-item disabled">
		      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
		        <i class="bi bi-chevron-left"></i> <!-- Bootstrap 5의 아이콘 클래스를 적용한 부분 -->
		      </a>
		    </li>
		    <li class="page-item active"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#">
		        <i class="bi bi-chevron-right"></i> <!-- Bootstrap 5의 아이콘 클래스를 적용한 부분 -->
		      </a>
		    </li>
		  </ul>
		</nav>
		<button type="button" class="btn btn-primary" id="registerButton">상품 등록</button>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
