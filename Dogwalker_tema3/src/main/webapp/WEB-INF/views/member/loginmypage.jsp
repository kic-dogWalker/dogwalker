<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout</title>
<style>
   		ul{
   		list-style:none;
   		}
   		
   		.nav-left-sub1{
   		background:blue;
   		}
   		.nav-left-sub1 > li {
   		background:white;
   		}

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      .form-signin{
        position:relative;
        }
    </style>
<script>
	 function loginsubmit(){
  		if($('input[name=mem_id]').val().length<7){
  			alert('아이디를 확인해주세요');
  			return false;
  		}
  		if($('input[name=mem_password]').val().length<8){
  			alert('비밀번호를 확인해주세요');
  			return false;
  		}
  		loginform.submit();
  	}
</script>
</head>
<body>
<!-- 본문 -->	
<div class="container">
    <div class="container text-center">
  <div class="row">
    <div class="col-md-4">

    </div>
    <div class="col-md-4">

	<main class="form-signin">
  <form name="loginform">
    <img class="mb-4" src="img/loginlogo.png" alt="" width="280" >
    <h1 class="h3 mb-3 fw-normal">댕댕이와 함께해요!</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="mem_id" placeholder="아이디 입력하세요">
      <label for="Id">id</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="mem_password" placeholder="비밀번호를 입력하세요">
      <label for="Password">password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me">아이디 저장
      </label>
    </div>
    <span class="w-100 btn btn-lg btn-primary" onclick="loginsubmit()">Sign in</span>
    <p class="mt-5 mb-3 text-muted">© DogWalker 2023</p>
  </form>
</main>
    </div>
    <div class="col-md-4">
    </div>
  </div>
</div>
</div>
<!-- 본문끝 -->

</body>
</html>