<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<body>
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">FAQ</h1>               
                    </div>
                </div>
            </div> 
        </div>
        <!-- End page header -->
        

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">    

                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>자주 묻는 질문</h2>
                    </div>
                </div>
                
                <div class="row" >
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-left page-title">
                        <!-- /.feature title -->
                        <p style="float:left; font-size:24">기업</p>
                        <p  style="float:right; font-size:24">개인</p>
                    </div>
                </div>
                
            <!--     <div class="row">
                    <div class="col-md-5 col-md-offset-1 col-sm-6 text-right page-title">
                        /.feature title
                      
                    </div>
                </div> -->

                <div class="row row-feat"> 
                    <div class="col-md-12">
                        <div class="col-sm-6 feat-list">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa11" >
                                           질문1
                                         </h4> 
                                    </div>
                                    <div id="fqa11" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 답변</li>
                                                                           
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa22" >
                                            질문 2
                                         </h4> 
                                    </div>
                                    <div id="fqa22" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 답변</li>
                                                                                  
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa33" >
                                            질문 3
                                         </h4> 
                                    </div>
                                    <div id="fqa33" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 답변</li>
                                                                                        
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa44" >
                                            질문 4
                                         </h4> 
                                    </div>
                                    <div id="fqa44" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 답변</li>
                                                                                  
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa55" >
                                            질문 5
                                         </h4> 
                                    </div>
                                    <div id="fqa55" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 답변</li>
                                                                                  
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-6 feat-list">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa1" >
                                            회원가입은 어떻게 하나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa1" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 회원 가입은 온라인(PC, 모바일,앱)에서 별도의 비용없이 회원가입이 가능합니다.<br>
													*회원 가입순서<br>
													1.회원가입 클릭<br>
													2.이용약관 및 개인정보 수집 이용에 동의<br>
													3.회원정보 입력 후 가입 완료<br>
													*휴대폰번호 옆 [인증번호발송]을 클릭하셔서 인증번호를 입력하셔야 회원가입이 가능하십니다.
												</li>                                           
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa2" >
                                            아이디와 비밀번호를 잊어버렸어요. 어떻게 해야 하나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa2" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 로그인 하단에 보시면 [아이디/비번찾기] 클릭후 등록하신 핸드폰 번호를 입력하시면
													문자로 아이디와 임시비밀번호를 전송해드립니다.
												</li>
                                                                                      
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa3" >
                                           하루 2시간만 보육 도움을 받고자하는데, 요금은 어떻게 되나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa3" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 보육매니저의 기본적인 소득을 보장하기 위해 기본 이용시간이 규정(종일제 8시간, 시간제 4시간) 되어 있습니다.
학습매니저의 같은 경우에는 단가가 상이하지만 기본 2시간을 정해  활동을 연계하고 진행하고 있습니다.따라서 시간제 2시간을 이용하셔도 기본 4시간 요금이 적용됩니다.

                                                </li>
                                                                                      
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa4" >
                                            장애아동도 서비스를 신청할 수 있나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa4" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 네, 가능합니다. 다만 관계자와 자세한 상담이 필요하오니 고객센터로 연락주시면 상담을 도와드리겠습니다.</li>
                                                                                      
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa5" >
                                          저소득층 이용요금에 대한 혜택이 있나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa5" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ol>
                                                <li> 저소득층인 경우, 거주 지역마다 학습/보육도우미를 지원하는 다양한 제도가 마련되어 있습니다.
													이러한 중복신청에 대해 제한하고자, 저소득의 경우 할인 요금에서 제외하였습니다. 
                                                </li>
                                                                                      
                                            </ol> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                
            </div>
        </div>
</body>
</html>