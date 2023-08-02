<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="../resources/css/css.css">

<script type="text/javascript">
$(function() {
    // 입력 버튼 클릭 이벤트 핸들러
    $('#inputButton').click(function() {
        // 입력 버튼을 누를 때 수행할 동작을 여기에 작성합니다.
        // 예를 들어, 입력 내용을 가져와 서버로 전송하는 등의 동작을 수행할 수 있습니다.
    });
});
</script>
<style type="text/css">
#myform {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}
#myform fieldset {
    display: inline-block;
    direction: rtl;
    border: 0;
}
#myform fieldset legend {
    text-align: right;
}
#myform input[type=radio] {
    display: none;
}
#myform label {
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover {
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label {
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label {
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 300px;
    height: 300px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
#inputButton {
    width: 50px;
    height: 30px;
    font-size: 12px;
    justify-content: right;
    background-color: #e9e9e9;
    border: 1px solid #000;
    color: #000;
}
#inputButtonContainer {
    display: flex;
    flex-direction: row;
    align-items: right;
    justify-content: right;
    margin-top: 20px;
 
}
#inputButtonContainer button {
    margin-right: 10px; /* 버튼 사이의 간격 조정 */
}
#inputButtonContainer p {
    margin-bottom: 10px;
}
</style>
</head>
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
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <!-- Section-->
      <body>
      	
<form class="mb-3" name="myform" id="myform" method="post">
    <h2>산책완료!</h2>
    <h4><span class="text-bold">마음에 드셨다면 리뷰를 남겨주세요!</span></h4>
    <fieldset>
        <input type="radio" name="reviewStar" value="5" id="rate1"><label
            for="rate1">★</label>
        <input type="radio" name="reviewStar" value="4" id="rate2"><label
            for="rate2">★</label>
        <input type="radio" name="reviewStar" value="3" id="rate3"><label
            for="rate3">★</label>
        <input type="radio" name="reviewStar" value="2" id="rate4"><label
            for="rate4">★</label>
        <input type="radio" name="reviewStar" value="1" id="rate5"><label
            for="rate5">★</label>
    </fieldset>
    <div>
        <textarea class="col-auto form-control" type="text" id="reviewContents"
            placeholder="내용을 입력해주세요."></textarea>
    </div>
    <div id="inputButtonContainer">
        <p></p>
        <button class="btn btn-outline-primary" id="inputButton">입력</button>
        <button class="btn btn-outline-primary" id="inputButton">Skip</button>
    </div>
</form>
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