<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>강아지 산첵 관리자페이지</title>

 

    <!-- Custom styles for this template-->
     <link href="/resources/css/admin.css" rel="stylesheet">
 
       <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
  


</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-text mx-3">관리자 페이지</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">



				<!-- Nav Item - Dashboard -->
		<li class="nav-item active">
		    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
		        aria-expanded="true" aria-controls="collapseBoard">
		        <i class="fa-solid fa-chalkboard"></i>
		        <span>게시판 관리</span>
		        <span class="caret"></span>
		    </a>
		    <div id="collapseBoard" class="collapse" data-parent="#accordionSidebar">
		        <div class="bg-white py-2 collapse-inner rounded">
		            <h6 class="collapse-header">게시판 목록</h6>
		            <a class="collapse-item" href="adminPage.jsp">자유게시판</a>
		            <a class="collapse-item" href="adminNoticePage.jsp">공지게시판</a>
		            <a class="collapse-item" href="adminPuppy_board.jsp">강아지자랑게시판</a>
		        </div>
		    </div>
		</li>
		
		<li class="nav-item active">
		    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReservation"
		        aria-expanded="true" aria-controls="collapseReservation">
		        <i class="fa-solid fa-user"></i>
		        <span>예약 관리</span>
		        <span class="caret"></span>
		    </a>
		    <div id="collapseReservation" class="collapse" data-parent="#accordionSidebar">
		        <div class="bg-white py-2 collapse-inner rounded">
		            <!-- 예약 관련 항목을 여기에 추가 -->
		               <h6 class="collapse-header">예약 목록</h6>
		            <a class="collapse-item" href="admin_rv_list.jsp">예약 현황</a>
		            <a class="collapse-item" href="admin_rv_application.jsp">예약 신청</a>
		            <a class="collapse-item" href="admin_rv_inquiry.jsp">신고 및 취소</a>
		        </div>
		    </div>
		</li>
		
		<li class="nav-item active">
		    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGoods"
		        aria-expanded="true" aria-controls="collapseGoods">
		        <i class="fa-solid fa-box"></i>
		        <span>물품 관리</span>
		        <span class="caret"></span>
		    </a>
		    <div id="collapseGoods" class="collapse" data-parent="#accordionSidebar">
		        <div class="bg-white py-2 collapse-inner rounded">
		            <!-- 물품 관련 항목을 여기에 추가 -->
		               <h6 class="collapse-header">쇼핑몰 목록</h6>
		            <a class="collapse-item" href="admin_itlist.jsp">상품관리</a>
		            <a class="collapse-item" href="admin_itreview.jsp">구매평관리</a>
		            <a class="collapse-item" href="admin_inquiry.jsp">문의관리</a>
		            <a class="collapse-item" href="admin_cancel.jsp">취소관리</a>
		        </div>
		    </div>
		</li>





            <!-- Divider -->
            <hr class="sidebar-divider">

        </ul>

        <!-- Content -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- admin status -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자1</span>
                                <img class="img-profile rounded-circle" src="./resources/img/logo.png">
                            </a>
                                                        <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>

                <!-- Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="container mt-4">
					  <h1 class="h3 mb-4 text-gray-800">상품 등록</h1>
					  <form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
					    <div class="mb-3">
					      <label for="productName" class="form-label">상품번호</label>
					      <input type="text" class="form-control" name="productNum" id="productNum">
					      <label for="productName" class="form-label">상품명</label>
					      <input type="text" class="form-control" name="productName" id="productName">
					    </div>
					    <div class="mb-3">
					      <label for="productPrice" class="form-label">가격</label>
					      <input type="text" class="form-control" name="productPrice" id="productPrice">
					    </div>
					    <div class="mb-3">
					      <label for="productDesc" class="form-label">상품설명</label>
					      <textarea class="form-control" rows="5" name="productDesc" id="productDesc"></textarea>
					    </div>
					    <div class="mb-3">
					      <label for="productPhoto" class="form-label">상품이미지</label>
					      <input class="form-control" type="file" name="productPhoto" id="productPhoto">
					    </div>
					    <div class="mb-3">
						  <label for="category" class="form-label">카테고리</label>
						  <select class="form-control" name="category" id="category">
						    <option value="장난감">장난감</option>
						    <option value="간식">간식</option>
						    <option value="사료">사료</option>
						  </select>
						</div>
					    <div class="text-center">
					      <button type="button" class="btn btn-primary" id="addBtn">등록</button>
					      <button type="button" class="btn btn-secondary" onclick="location.href='/admin_itlist'">목록</button>
					    </div>
					    
					  </form>
					</div>
                    <div class="alert alert-success d-none" role="alert" >
                      This is a warning alert—check it out!
                        <button type="button" class="close">&times;</button>
                    </div>
                      <br>
	            </div>
	        </div>
	    </div>
    <!-- Bootstrap 5 JavaScript 및 Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <!-- 상품등록 -->
    <script>
	$(document).ready(function(){
		$("#addBtn").click(function(){
			var productName = $("#productName").val();
			var productPrice = $("#productPrice").val();
			var productDesc = $("#productDesc").val();
			var productPhoto = $("#productPhoto").val();
			
			if(productName == "") {
				alert("상품명을 입력해주세요");
				productName.foucs();
			} else if (productPrice == "") {
				alert("상품 가격을 입력해주세요");
				productPrice.focus();
			} else if (productDesc == "") {
				alert("상품 설명을 입력해주세요");
				productDesc.focus();
			} else if (productPhoto == "") {
				alert("상품 사진을 입력해주세요");
				productPhoto.focus();
			}
			document.form1.action = "${path}/shop/product/insert.do";
			document.form1.submit();
		});
	});
	
</script>
</body>

</html>