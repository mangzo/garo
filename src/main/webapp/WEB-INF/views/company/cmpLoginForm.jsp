<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
    <body>
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">기업 회원 로그인</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->
 

        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container" style="width:500px; height:500px; padding:10px; text-align:center; ">


                <div class="col-md-6" style="width:500px; height:500px; display:inline-block;">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>로그인 </h2> 
                            <form action="${contextPath}/company/login" method="post">
                                <div class="form-group">
                                    <label for="email">회사 아이디</label>
                                    <input type="text" class="form-control" id="cmp_id" name ="cmp_id">
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <input type="password" class="form-control" id="pwd" name="pwd">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default"> 로그인</button>
                                </div>
                            </form>
                            <br>
                            
                            <h2>SNS로 로그인하기  </h2> 
                            
                            <p>
                            <a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a> 
                            <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a> 
                            <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>  
                            </p> 
                        </div>
                      
                    </div>
                </div>

            </div>
        </div>      

          <!-- Footer area-->
        </body>
</html>