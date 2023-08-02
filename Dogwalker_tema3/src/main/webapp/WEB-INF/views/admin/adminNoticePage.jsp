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
                                <img class="img-profile rounded-circle" src="img/logo.png">
                            </a>
                        </li>
                    </ul>
                </nav>

                <!-- Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">공지 게시판 관리</h1>
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
         
                    <!-- Table -->
                    <div class="row">

                        <table class="table table-hover">

                          <thead>
                            <tr>
                              <th scope="col">번호</th>
                              <th scope="col">제목</th>
                              <th scope="col">작성자</th>
                              <th scope="col">날짜</th>
                              <th scope="col">조회수</th>
                               <th scope="col">수정 및 삭제</th>
                            </tr>
                          </thead>  

                          <tbody>
                            <tr>
                              <td >1</td>
                              <td>제목1</td>
                              <td>작성자1</td>
                              <td>2023-07-07</td>

                              <td>123</td>
                              <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                            <tr>
                              <td scope="row">2</td>
                              <td>제목2</td>
                              <td>작성자2</td>
                              <td>2023-07-07</td>
                              <td>321</td>
                                                            <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                                <tr>
                              <td scope="row">2</td>
                              <td>제목2</td>
                              <td>작성자2</td>
                              <td>2023-07-07</td>
                              <td>321</td>
                              <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                            <tr>
                              <td scope="row">2</td>
                              <td>제목2</td>
                              <td>작성자2</td>
                              <td>2023-07-07</td>
                              <td>321</td>
                              <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                            <tr>
                              <td scope="row">2</td>
                              <td>제목2</td>
                              <td>작성자2</td>
                              <td>2023-07-07</td>
                              <td>321</td>
                              <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                            <tr>
                              <td scope="row">2</td>
                              <td>제목2</td>
                              <td>작성자2</td>
                              <td>2023-07-07</td>
                              <td>321</td>
                              <td>
                                <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#archiveModal">숨기기</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                    <!-- 글쓰기 버튼 넣기 -->
                    <a class="btn btn-primary pull-right" href="write-notice.jsp" role="button">글쓰기</a>

                                    
                    </div>
                               <!--페이지네이션 시작 -->
                            <nav aria-label="Page navigation example">
                          <ul class="pagination justify-content-center">
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    <!-- 페이지네이션 끝 -->
                </div>
            </div>
        </div>
    </div>
</body>

</html>