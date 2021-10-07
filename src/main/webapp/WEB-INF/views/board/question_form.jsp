<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
  <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">고객센터 </h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <div class="row">
                            </div>
                            
                           
                            <h2>1 : 1 문의</h2>
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">이름</label>
                                            <input type="text" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">전화번호 (-제외하고 입력하세요)</label>
                                            <input type="text" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">이메일</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">비밀번호</label>
                                            <input type="password" class="form-control" id="password">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message">남기실 말씀</label>
                                            <textarea id="message" class="form-control"></textarea>
                                        </div>
                                    </div>
                                   <div class="button navbar-right" style="width: 500px">
	                        <button class="navbar-btn nav-button wow bounceInRight login" style="width:110px" onclick="location.href='${contextPath}/member/memlogin.do'" data-wow-delay="0.45s">개인회원</button>
	                        <button class="navbar-btn nav-button wow bounceInRight login" style="width:110px" onclick="location.href='${contextPath}/company/cmplogin.do'" data-wow-delay="0.45s">기업회원</button>
	                        <button class="navbar-btn nav-button wow fadeInRight" style="width:110px" id="submit" onclick="" data-toggle="modal" data-target="#myModal" >회원가입</button>
	                    </div>
                                </div>
                                <!-- /.row -->
                            </form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>

<body>
	
</body>
</html> 