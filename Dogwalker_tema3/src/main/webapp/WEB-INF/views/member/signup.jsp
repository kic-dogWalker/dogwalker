<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
      
      .inputerror{
      	border:1px solid red;
      }
      
      .inputsuccess{
		border:1px solid green;
      }
      
      .signupdiv{
      position:relative;
      	width:700px;
      	margin:0 auto;
      	margin-bottom:50px;
      }
      
      .form-label{
      font-weight:bold;
      color:#4169E1;
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
<div class="signupdiv">
		<h4 class="mb-3">회원가입	</h4>
        <form class="needs-validation" name="signform" novalidate="">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">이름</label>
              <input type="text" class="form-control inputnoempty" name="mem_name" placeholder="이름" >
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">전화번호</label>
              <input type="text" class="form-control inputnoempty" name="mem_phone" placeholder="전화번호" >
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">닉네임</label>
              <div class="input-group has-validation">
			  <input type="text" class="form-control inputnoempty" name="mem_nickname" placeholder="닉네임">
			  <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
              </div>
            </div>
            
             <div class="col-12">
              <label for="id" class="form-label">아이디</label>
              <input type="text" class="form-control" id="memid" name="mem_id" placeholder="아이디">
              <span style="font-size:5px;color:red;display:none" >아이디는 7자 이상 입력해야됩니다.</span>
             </div>
            
            <div class="col-12">
              <label for="password" class="form-label">비밀번호</label>
              <input type="password" class="form-control" id="mempw" name="mem_password" placeholder="비밀번호">
              <span style="font-size:5px;color:red;display:none" >비밀번호는 8자 이상 입력해야됩니다.</span>
             </div>

            <div class="col-12">
              <label for="email" class="form-label">이메일</label>
              <input type="email" class="form-control inputnoempty" id="mem_email" placeholder="이메일@example.com">
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control inputnoempty" id="mem_address" placeholder="주소를 입력하세요" >
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>

            <div class="col-md-5">
              <label for="address" class="form-label">상세주소</label>
              <input type="text" class="form-control inputnoempty" id="mem_address" placeholder="동을 입력하세요" >
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">성별</label>
              <select class="form-select" name="mem_gender" required="">
                <option value="man">남성</option>
                <option value="woman">여성</option>
              </select>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">우편번호</label>
              <input type="text" class="form-control inputnoempty" name="name_zipcode" placeholder="우편번호" required="">
              <span style="font-size:5px;color:red;display:none" >필수입력입니다.</span>
            </div>
     

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" name="sign_agree">
            <label class="form-check-label" for="same-address">회원가입에 동의합니까</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" name="sign_age">
            <label class="form-check-label" for="save-info">14세 이상입니까</label>
          </div>
		  <hr class="my-4">
			
			<div class="col-md-6">
				<span class="w-100 btn btn-primary btn-lg col-md-4" onclick="submitCheck()">회원가입</span>
			</div>
			<div class="col-md-6">
				<button class="w-100 btn btn-danger btn-lg col-md-8" type="reset">초기화</button>
			</div>
        </form>
</div>
</div>
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
    	$(function(){//아이디 7자이상
    		
    		$('#memid').change(function(){
    			if($(this).val().length<7){
    				$(this).addClass('inputerror');
    				$(this).removeClass('inputsuccess');
    				$(this).next().css('display','inline-block');
    			}else{
    				$(this).addClass('inputsuccess');
    				$(this).next().css('display','none');
    			}
    			
    		})
    		
    		$('#mempw').change(function(){//비밀번호 8자이상
    			if($(this).val().length<8){
    				$(this).addClass('inputerror');
    				$(this).removeClass('inputsuccess');
    				$(this).next().css('display','inline-block');
    			}else{
    				$(this).addClass('inputsuccess');
    				$(this).next().css('display','none');
    			}
    			
    		})
    		
    		$('.inputnoempty').change(function(){//이름,전화번호,닉네임,이메일,주소,상세주소,우편번호
    			if($(this).val().length<1){
    				$(this).addClass('inputerror');
    				$(this).removeClass('inputsuccess');
    				$(this).next().css('display','inline-block');
    			}else{
    				$(this).addClass('inputsuccess');
    				$(this).removeClass('inputerror');
    				$(this).next().css('display','none');
    				
    			}
    			
    		})
		$("#header").load("../template/head.jsp");
		$("#footer").load("../template/footer.jsp");
    	}  	

    	)
    	
    	
    	function submitCheck(){

    		if($('.form-control')[0].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[0].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    			
    		}
    		if($('.form-control')[1].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[1].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[2].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[2].parentElement.parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[3].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[3].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[4].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[4].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[5].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[5].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[6].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[6].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[7].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[7].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		if($('.form-control')[8].classList.contains('inputsuccess')){
    		}else{
    			alert($('.form-control')[8].parentElement.firstElementChild.innerHTML+' 칸을 확인해주세요');
    			this.focus();
    			return false;
    		}
    		
    		if($('.form-check-input')[0].checked){
    		}else{
    			alert('회원가입에 동의해주세요');
    			return false;
    		}
    		
    		if($('.form-check-input')[1].checked){
    		}else{
    			alert('14세 이상인지 확인해주세요');
    			return false;
    		}
    		signform.submit();

    	}

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>