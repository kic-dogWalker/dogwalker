<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>장바구니 수정중</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="css/styles2.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
</head>
<body>
<div class="page-holder">
    <!-- navbar-->
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
                                <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Login</li>
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

    <jsp:include page="./view/footer.jsp"></jsp:include>

    <!-- JavaScript files-->
    <script src="js/cart.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/glightbox/js/glightbox.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/swiper/swiper-bundle.min.js"></script>
    <script src="vendor/choices.js/public/assets/scripts/choices.min.js"></script>
    <script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite -
        //   see more here
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
                var div = document.createElement("div");
                div.className = 'd-none';
                div.innerHTML = ajax.responseText;
                document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }

        // this is set to BootstrapTemple website as you cannot
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');
    </script>
    <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</div>
</body>
</html>
                                            
