<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script>
$(document).reday(function() {
	
	$('#submit').on("click",function(){
		$('#loginModal').modal('show');
	});
});

</script>

<body>
	<button id="submit">테스트 모달!!</button>
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	      	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	      </div>
	      <form class="login_form" id="login_form" action="login" method="post" role="form">
		      <div class="modal-body">
		      	<div class="row">
		      		<h3 class="col-sm-offset-5" style="text-align:center;">Log In</h3>
		      	</div>
		      	<div class="col-sm-6">
				  <label for="email">이메일 주소</label>
				  <input type="email" class="form-control" id="loginemail" name="email" required="required" placeholder="Email">
				</div>
				<div class="col-sm-6">
				  <label for="password">패스워드</label>
				  <input type="password" class="form-control" id="password" name="password" required="required" placeholder="Password">
				</div>
				<div class="row col-sm-12">
					<div class="col-sm-offset-9">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" id="emailSaveChk"><span style="color: #626262">이메일 저장</span>
					</div>
				</div>
				<div class="row col-sm-12">
					<div class="col-sm-offset-8">
						<a href="memberTerms">회원가입</a>
						&nbsp&nbsp|&nbsp&nbsp
						<a id="passwordfindbtn">비밀번호 찾기</a>
					</div>
				</div>
				<div class="col-sm-12">
			      	<button type="submit" id="loginbtn" class="btn btn-default" style="width:100%">로그인</button>
			      </div>
		      </div>
	      </form>
	      <form class="lost_form" style="display:none;" id="lost_form" method="post" role="form">
	      	<div class="modal-body">
		      	  <div class="row">
		      		<h3 class="col-sm-offset-4" style="text-align:center;">비밀번호 찾기</h3>
		      	  </div>
		      	  <div class="col-sm-6">
				    <label for="email">이메일 주소</label>
				    <input type="email" class="form-control" id="findemail" name="findemail" required="required" placeholder="Email">
				  </div>
				  <div class="col-sm-6">
				    <label for="name">이름</label>
				    <input type="text" class="form-control" id="findname" name="findname" required="required" placeholder="name">
				  </div>
				  <div class="col-sm-12" style="margin-top: 10px;">
			      	<button type="button" id="findbtn" class="btn btn-default" style="width:100%">확인</button>
			      	<button type="submit" id="findsubmt" class="btn btn-default" style="display: none"></button>
			      </div>
		      </div>
	      </form>
	      <div class="modal-footer">
	      </div>
	    </div>
	  </div>
	</div>
	<div id="failpasswordModal" class="modal fade" role="dialog" >
         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
               </div>
               <div class="modal-body">
	               <div id="failpasswordModalMsg" style="color:#626262">some msg</div>
               </div>
               <div class="modal-footer" style="text-align:center">
                  <button type="button"class="btn btn-success" data-dismiss="modal">확인</button>
               </div>
            </div>
         </div>
     </div>
</body>
</html>