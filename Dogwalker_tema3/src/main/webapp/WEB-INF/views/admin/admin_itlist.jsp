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
     <link href="../resources/admin_resources/css/admin.css" rel="stylesheet">
 
       <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
  


</head>

<!-- Modal -->
<div class="modal fade" id="archiveModal" tabindex="-1" aria-labelledby="archiveModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="archiveModalLabel">게시물 숨기기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        게시물을 숨기시겠습니까 ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-danger">확인</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalLabel">게시물 삭제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        게시물을 삭제하시겠습니까 ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-danger">확인</button>
      </div>
    </div>
  </div>
</div>


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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">상품 관리</h1>
                        <button type="button" class="btn btn-primary" id="registerButton">상품 등록</button>
                    </div>
					<!-- 모달 -->
				    <div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
				        <div class="modal-dialog">
				            <div class="modal-content">
				                <div class="modal-header">
				                    <h5 class="modal-title" id="productModalLabel">상품 등록</h5>
				                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				                </div>
				                <div class="modal-body">
				                    <!-- 여기에 상품 등록에 필요한 입력 폼을 추가하세요 -->
				                    <form>
				                    	<div class="mb-3">
				                            <label for="it_num" class="form-label">상품 번호</label>
				                            <input type="text" class="form-control" id="it_num">
				                        </div>
				                        <div class="mb-3">
				                            <label for="it_name" class="form-label">상품 이름</label>
				                            <input type="text" class="form-control" id="it_name">
				                        </div>
				                        <!-- 다른 필드들도 동일한 방식으로 추가하세요 -->
				                        <div class="mb-3">
										    <div class="mb-3">
										    <label for="it_img" class="form-label">상품 이미지</label>
										    <input type="file" class="form-control" id="it_img" accept="image/*">
											</div>
										</div>

				                        <div class="mb-3">
										    <label for="it_content" class="form-label">상품 내용</label>
										    <input type="text" class="form-control" id="it_content">
										</div>

				                        <div class="row mb-3">
				                        	<div class="col-md-5">
										        <label for="it_price" class="form-label">상품 가격</label>
										        <input type="text" class="form-control" id="it_price" oninput="validateNumberInput(this)">
    											<div id="error-message" class="text-danger" style="display: none;">숫자만 입력해주세요.</div>
										    </div>
										    <div class="col-md-3">
										        <label for="it_cnt" class="form-label">상품 재고</label>
										        <input type="number" class="form-control" id="it_cnt" oninput="limitStockInput()">
										    </div>
										    <div class="col-md-4">
											    <label for="cate_num" class="form-label">상품 카테고리</label>
											    <div class="dropdown" style="position: relative;">
											        <button class="btn btn-secondary dropdown-toggle" type="button" id="catecode" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											            장난감
											        </button>
											        <div class="dropdown-menu" aria-labelledby="categoryDropdown" style="position: absolute; width: 100%;">
											            <a class="dropdown-item" href="#" onclick="selectCategory('장난감')">장난감</a>
											            <a class="dropdown-item" href="#" onclick="selectCategory('사료')">사료</a>
											            <a class="dropdown-item" href="#" onclick="selectCategory('간식')">간식</a>
											        </div>
											        <input type="hidden" id="hidden-catecode" name="catecode" value="${item.catecode}">
											    </div>
											</div>
										</div>
				                    </form>
				                </div>
				                <div class="modal-footer">
				                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				                    <button type="button" class="btn btn-primary" onclick="addProduct()">등록</button>
				                    
				                </div>
				            </div>
				        </div>
				    </div>
                    <div class="alert alert-success d-none" role="alert" >
                      This is a warning alert—check it out!
                        <button type="button" class="close">&times;</button>
                    </div>
                     <form class="d-flex justify-content-end">
                        <input class="form-control col-md-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                      </form>
                      <br>

				<!-- 상품 리스트 -->
				<div class="table-responsive">
				    <table class="table table-bordered">
				        <thead>
				            <tr>
				                <th>상품ID</th>
				                <th>상품이미지</th>
				                <th>상품명</th>
				                <th>가격</th>
				            </tr>
				        </thead>
				        <tbody>
				            <c:forEach var="row" items="${list}">
				                <tr>
				                    <td>${row.productId}</td>
				                    <td>
				                        <a href="${path}/shop/product/detail/${row.productId}">
				                            <img src="${path}/images/${row.productUrl}" width="120ox" height="110px" class="img-fluid">
				                        </a>
				                    </td>
				                    
				                    <td align="center">
				                        <a href="${path}/shop/product/detail/${row.productId}">${row.productName}</a><br>
				                        <a href="${path}/shop/product/edit/${row.productId}">[상품편집]</a>
				                    </td>
				                    <td>
				                        <fmt:formatNumber value="${row.productPrice}" pattern="###,###,###"/>
				                    </td>
				                </tr>
				            </c:forEach>
				        </tbody>
				    </table>
				</div>
            </div>
        </div>
    </div>
    <!-- Bootstrap 5 JavaScript 및 Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <!-- 상품가격 숫자만허용 -->
    <script>
    $(document).ready(function(){
		$("#btnAdd").click(function(){
			location.href="${path}/shop/product/write.do";
		});
		$("#btnEdit").click(function(){
			location.href="${path}/shop/product/edit.do";
		});
	});
    
    function validateNumberInput(inputElement) {
    	// 정규식 패턴: 숫자만 허용 (음수는 허용하지 않음)
        var pattern = /^[0-9]*$/;
        var errorMessage = document.getElementById("error-message");

        if (!pattern.test(inputElement.value)) {
            // 입력값이 숫자가 아닐 경우 에러 메시지를 표시하고 입력값을 공백으로 처리
            errorMessage.style.display = "block";
            inputElement.value = inputElement.value.replace(/[^\d]/g, '');
        } else {
            // 입력값이 유효할 경우 에러 메시지를 숨김
            errorMessage.style.display = "none";
        }
    }
    //상품 개수 
    function limitStockInput() {
        var stockInput = document.getElementById("it_cnt");
        var inputValue = stockInput.value;

        // 입력값이 9999보다 크면 9999로 설정합니다.
        if (parseInt(inputValue) > 9999) {
            stockInput.value = "9999";
        }
    }
    //카테고리
    function selectCategory(category) {
        var categoryInput = document.getElementById("cate_num");
        categoryInput.value = category;
        
    }
    
    function getCurrentDate() {
        var today = new Date();
        var year = today.getFullYear();
        var month = String(today.getMonth() + 1).padStart(2, "0");
        var day = String(today.getDate()).padStart(2, "0");
        return `${year}-${month}-${day}`;
    }
 	
 	
    function selectCategory(category) {
        // 선택된 카테고리를 버튼에 반영합니다.
        document.getElementById('catecode').innerText = category;
        
     // ${item.catecode}에 선택한 카테고리 값을 반영합니다.
        document.getElementById('hidden-catecode').value = category;
    }
    
    function addProduct() {
        // 폼 데이터 가져오기
        const formData = new FormData();
        formData.append("it_num", document.getElementById("it_num").value);
        formData.append("it_name", document.getElementById("it_name").value);
        formData.append("it_price", document.getElementById("it_price").value);
        formData.append("it_img", document.getElementById("it_img").files[0]);
        formData.append("catecode", document.getElementById("catecode").innerText);
        formData.append("it_content", document.getElementById("it_content").value);
        formData.append("it_cnt", document.getElementById("it_cnt").value);

        // 서버로 데이터 전송
        fetch('/save-product', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (response.ok) {
                alert('상품 등록이 완료되었습니다.');
                location.reload(); // 페이지 새로고침하여 등록된 상품 표시
            } else {
                alert('상품 등록에 실패하였습니다. 다시 시도해주세요.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('상품 등록에 실패하였습니다. 다시 시도해주세요.');
        });
    }
    
    // 상품 등록 버튼을 클릭했을 때 실행될 함수를 정의합니다.
    function goToAdminITReg() {
      window.location.href = "admin_itreg.jsp";
    }

    // 상품 등록 버튼에 이벤트 리스너를 추가하여 클릭 시 goToAdminITReg 함수가 실행되도록 합니다.
    document.getElementById("registerButton").addEventListener("click", goToAdminITReg);
	</script>
</body>

</html>