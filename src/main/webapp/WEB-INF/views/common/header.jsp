<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />

<html>
<body>
	<div id="preloader">
        <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
		<div class="jbMenu">
        <div class="header-connect" style="margin: 0; padding: 0">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                    </div>
                    <div class="col-md-4 col-md-offset-10  col-sm-1 col-sm-offset-1  col-xs-12">
                    <c:choose>
		     			<c:when test="${memberInfo.grade < 4}">
						   	<div class="button navbar-right" style="width: 500px">
								<span>
									<span>일반회원</span>
									<span style="font-weight:bold; color: orange; text-align:center">
									&nbsp;&nbsp;${memberInfo.name}님&nbsp;
									</span>
									<a href="${contextPath}/member/logout" style="color:crimson;"><small>로그아웃</small></a>
								</span>
							</div>
			 			</c:when>
			 			<c:when test="${companyInfo.cmp_id !=  '' && companyInfo.cmp_id != NULL}">
						   	<div class="button navbar-right" style="width: 500px">
								<span>
									<span>기업회원</span>
									<span style="font-weight:bold; color: orange; text-align:center">
									&nbsp;&nbsp;${companyInfo.name}님&nbsp;
									</span>
									<a href="${contextPath}/company/logout" style="color:crimson;"><small>로그아웃</small></a>
								</span>
							</div>
			 			</c:when>
			 			<c:when test="${memberInfo.mem_email == 'admin@admin.com'}">
							<div class="button navbar-right" style="width: 500px">
								<span>
									<span>어서오세요.</span>
									<span style="font-weight:bold; color: orange; text-align:center">
									&nbsp;&nbsp;${memberInfo.name}님&nbsp;
									</span>
									<a href="${contextPath}/member/logout" style="color:crimson;"><small>로그아웃</small></a>
								</span>
							</div>
						</c:when>
						<c:otherwise>
				   			<div class="button navbar-right" style="width: 500px">
		                        <button class="navbar-btn nav-button wow bounceInRight login" style="width:110px" onclick="location.href='${contextPath}/member/memlogin.do'" data-wow-delay="0.45s">개인회원</button>
		                        <button class="navbar-btn nav-button wow bounceInRight login" style="width:110px" onclick="location.href='${contextPath}/company/comlogin.do'" data-wow-delay="0.45s">기업회원</button>
		                        <button class="navbar-btn nav-button wow fadeInRight" style="width:110px" id="submit" onclick="" data-toggle="modal" data-target="#myModal" >회원가입</button>
	                    	</div>
						</c:otherwise>
					</c:choose>
                        
                    </div>
                </div>
            </div>
        </div>        
        <!--End top header -->
		<c:choose>
			<c:when test="${memberInfo.grade == 1}">
				<nav class="navbar navbar-default ">
		            <div class="container">
		                <!-- Brand and toggle get grouped for better mobile display -->
		                <div class="navbar-header">
		                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
		                        <span class="sr-only">Toggle navigation</span>
		                        <span class="icon-bar"></span>
		                        <span class="icon-bar"></span>
		                        <span class="icon-bar"></span>
		                    </button>
		                    <a id="aaaaaaaaaa"class="navbar-brand" href="${contextPath}/home.do"><img src="${contextPath}/resources/assets/img/realimg/logo1.png" alt=""></a>
		                </div>
		
		                <!-- Collect the nav links, forms, and other content for toggling -->
		                <div class="collapse navbar-collapse yamm" id="navigation">
		                    <ul id="mala" class="main-nav nav navbar-nav navbar-right">
		                    	<li id="line"  class="wow fadeInDown" data-wow-delay="0.3s"><a class="dropdown-toggle" href="${contextPath}/home.do">Home</a></li>
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/board/cmp_page.do">사이트 소개</a></li>
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/search/matching.do">기업 검색</a></li>
		                        <li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">마이페이지<b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                                <li>
		                                    <a href="${contextPath}/member/mypage.do">회원 정보 수정</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/search/list.do">매칭 현황</a>
		                                </li>
		                               
		                            </ul>
		                        </li>
								<li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객센터<b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                            	<li>
		                                    <a href="${contextPath}/board/notice.do">공지사항</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/qst_page.do">1:1문의</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/faq.do">자주 묻는 질문</a>
		                                </li>
		                                
		                            </ul>
		                        </li>
		                    </ul>
		                </div><!-- /.navbar-collapse -->
		            </div><!-- /.container-fluid -->
		        </nav>
			</c:when>
			<c:when test="${memberInfo.grade == 3}">
				<nav class="navbar navbar-default ">
			        <div class="container">
			            <!-- Brand and toggle get grouped for better mobile display -->
			            <div class="navbar-header">
			                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
			                    <span class="sr-only">Toggle navigation</span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                </button>
			                <a id="aaaaaaaaaa"class="navbar-brand" href="${contextPath}/home.do"><img src="${contextPath}/resources/assets/img/realimg/logo1.png" alt=""></a>
			            </div>
			            <!-- Collect the nav links, forms, and other content for toggling -->
		                <div class="collapse navbar-collapse yamm" id="navigation">
		                    <ul id="mala" class="main-nav nav navbar-nav navbar-right">
		                    	<li id="line"  class="wow fadeInDown" data-wow-delay="0.3s"><a class="dropdown-toggle" href="${contextPath}/home.do">Home</a></li>
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/board/cmp_page.do">사이트 소개</a></li>
		                        
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/search/matching.do">기업 검색</a></li>
		                        <li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">기업페이지<b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                                <li>
		                                    <a href="${contextPath}/member/cmp_profile.do">회원 정보 수정</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/search/list.do">매칭 현황</a>
		                                </li>
		                                 <li>
		                                    <a href="${contextPath}/search/detail.do">회사 소개글 작성</a>
		                                </li>
		                                
		                            </ul>
		                        </li>
								<li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객센터<b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                            	<li>
		                                    <a href="${contextPath}/board/notice.do">공지사항</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/qst_page.do">1:1문의</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/faq.do">자주 묻는 질문</a>
		                                </li>
		                                
		                            </ul>
		                        </li>
		                    </ul>
		                </div><!-- /.navbar-collapse -->
		                </div><!-- /.container-fluid -->
     			</nav>
			</c:when>
			<c:when test="${memberInfo.mem_email == 'admin@admin.com'}">
				<nav class="navbar navbar-default ">
			        <div class="container">
			            <!-- Brand and toggle get grouped for better mobile display -->
			            <div class="navbar-header">
			                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
			                    <span class="sr-only">Toggle navigation</span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                </button>
			                <a id="aaaaaaaaaa"class="navbar-brand" href="${contextPath}/home.do"><img src="${contextPath}/resources/assets/img/realimg/logo1.png" alt=""></a>
			            </div>
			            <!-- Collect the nav links, forms, and other content for toggling -->
		                <div class="collapse navbar-collapse yamm" id="navigation">
		                    <ul id="mala" class="main-nav nav navbar-nav navbar-right">
		                    	<li id="line"  class="wow fadeInDown" data-wow-delay="0.3s"><a class="dropdown-toggle" href="${contextPath}/home.do">Home</a></li>
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/board/cmp_page.do">사이트 소개</a></li>
		                        
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/search/matching.do">기업 검색</a></li>
		                        <!--         관리자와 기업회원에게만 보이도록 만들기               -->
		                        <li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200"> 관리 <b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                                <li>
		                                    <a href="${contextPath}/search/list.do">개인 회원</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/search/detail.do">기업 회원</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/search/detail.do">매칭 승인</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/search/detail.do">1:1 문의 답변</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/notice.do">공지 사항 작성</a>
		                                </li>
		                            </ul>
		                        </li>
								<li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                            <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객센터<b class="caret"></b></a>
		                            <ul class="dropdown-menu navbar-nav">
		                            	<li>
		                                    <a href="${contextPath}/board/notice.do">공지사항</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/qst_page.do">1:1문의</a>
		                                </li>
		                                <li>
		                                    <a href="${contextPath}/board/faq.do">자주 묻는 질문</a>
		                                </li>
		                                
		                            </ul>
		                        </li>
		                    </ul>
		                </div><!-- /.navbar-collapse -->
		                </div><!-- /.container-fluid -->
	     		</nav>
			</c:when>
			<c:otherwise>
				<nav class="navbar navbar-default ">
			        <div class="container">
			            <!-- Brand and toggle get grouped for better mobile display -->
			            <div class="navbar-header">
			                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
			                    <span class="sr-only">Toggle navigation</span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                </button>
			                <a id="aaaaaaaaaa"class="navbar-brand" href="${contextPath}/home.do"><img src="${contextPath}/resources/assets/img/realimg/logo1.png" alt=""></a>
			            </div>
		        	<!-- Collect the nav links, forms, and other content for toggling -->
		             	<div class="collapse navbar-collapse yamm" id="navigation">
			                 <ul id="mala" class="main-nav nav navbar-nav navbar-right">
			                 	<li id="line"  class="wow fadeInDown" data-wow-delay="0.3s"><a class="dropdown-toggle" href="${contextPath}/home.do">Home</a></li>
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/board/cmp_page.do">사이트 소개</a></li>
			                     
		                        <li id="line"  class="wow fadeInDown" data-wow-delay="0.2s"><a class="dropdown-toggle" href="${contextPath}/search/matching.do">기업 검색</a></li>
								<li id="line"  class="dropdown ymm-sw " data-wow-delay="0.1s">
		                       		<a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객센터<b class="caret"></b></a>
			                        <ul class="dropdown-menu navbar-nav">
			                      		<li>
			                               <a href="${contextPath}/board/notice.do">공지사항</a>
			                           </li>
			                           <li>
			                               <a href="${contextPath}/board/qst_page.do">1:1문의</a>
			                           </li>
			                           <li>
			                               <a href="${contextPath}/board/faq.do">자주 묻는 질문</a>
			                           </li>
			                        </ul>
			                     </li>
			                 </ul>
			             </div><!-- /.navbar-collapse -->
			     	</div><!-- /.container-fluid -->
			     </nav>
			</c:otherwise>
		</c:choose>
		
		</div> 
        <!-- End of nav bar -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
			    	<div class="modal-header">
			    		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			      	</div>
			      		<div class="col-xs-6 m-padding">
	                        <div class="welcome-estate">
	                            <div class="welcome-icon" onclick="location.href='${contextPath}/company/cmpsubmit.do'">
	                                <i class="pe-7s-home pe-4x"></i>
	                            </div>
	                            <h3>기업 회원</h3>
	                        </div>
	                    </div>
	                    <div class="col-xs-6 m-padding">
	                        <div class="welcome-estate">
	                            <div class="welcome-icon" onclick="location.href='${contextPath}/member/memsubmit.do'">
	                                <i class="pe-7s-users pe-4x"></i>
	                            </div>
	                            <h3>일반 회원</h3>
	                        </div>
	                    </div>
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
     	<!-- 상단으로 이동하기 버튼 -->
<a href="#" class="btn_gotop">
  <span class="glyphicon glyphicon-chevron-up">
  </span>
</a>


<script>

$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.btn_gotop').show();
	} else{
		$('.btn_gotop').hide();
	}
});
$('.btn_gotop').click(function(){
	$('html, body').animate({scrollTop:0},400);
	return false;
});

$( document ).ready( function() {
    var jbOffset = $( '.jbMenu' ).offset();
    $( window ).scroll( function() {
      if ( $( document ).scrollTop() > jbOffset.top ) {
        $( '.jbMenu' ).addClass( 'jbFixed' );
      }
      else {
        $( '.jbMenu' ).removeClass( 'jbFixed' );
      }
    });
  } );
</script>
</body>
<style>
.jbMenu {
  text-align: center;
  background-color: #fff;
  width: 100%;
}
.jbFixed {
  position: fixed;
  z-index: 100;
  top:0;
}
.btn_gotop {
	display:none;
	position:fixed;
	bottom:30px;
	right:30px;
	z-index:999;
	border:1px solid #ccc;
	outline:none;
	background-color:white;
	color:#333;
	cursor:pointer;
	padding:15px 20px;
	border-radius:100%;
</style>
</html>