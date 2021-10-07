<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />

<body>
	<!-- property area -->
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"> <span class="orange strong"></span></h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header --> 
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="" method="">
                            <div class="profiel-header">
                                <h3>
                                    <br><b>회원 정보 수정 </b>
                                    <small></small>
                                </h3>
                              <!--   <hr> -->
                            </div>

                            <%-- <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture" style="">
                                            <img src="${contextPath}/resources/assets/img/avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                                            <input type="file" id="wizard-picture">
                                        </div>
                                        <h6>사진 첨부</h6>
                                    </div>
                                </div> --%>

                               <!--  <div class="col-sm-3 padding-top-25">
 -->
        						<div class="clear">
                                	<br>
                                	<hr>
                                	<br>
                                	<div class="col-sm-5 col-sm-offset-1">                               
                                 <div class="form-group">
                                        <label>이름 : <small></small></label>
                                        <input name="firstname" type="text" class="form-control" placeholder="홍길동...">
                                    </div>
                                    <div class="form-group">
                                        <label>전화번호 : <small></small></label>
                                        <input name="lastname" type="text" class="form-control" placeholder="000-0000-0000">
                                    </div> 
                                    <div class="form-group">
                                        <label>Email : <small></small></label>
                                        <input name="email" type="email" class="form-control" placeholder="andrew@email@email.com.com">
                                    </div> 
                                </div>
                                </div>
                                
                                <div class="clear">
                                <br>
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>비밀번호 : </label>
                                        <input name="Facebook" type="text" class="form-control" placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label>비밀번호 확인 :</label>
                                        <input name="Twitter" type="text" class="form-control" placeholder="">
                                    </div>
                                    <!-- <div class="form-group">
                                        <label>희망하는 돌봄 서비스 :</label>
                                        <input name="website" type="text" class="form-control" placeholder="식사지원, 이동지원, 주거편의...">
                                    </div> -->
                                </div>  
                               <!--  <div class="col-sm-3 padding-top-25">
                                    <div class="form-group">
                                        <label>비밀번호 <small>(필수입력)</small></label>
                                        <input name="Password" type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>비밀번호 확인 <small>(필수입력)</small></label>
                                        <input type="password" class="form-control">
                                    </div>
                                </div>   -->

                            </div>

                            <div class="clear">
                                <br>
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>주소(우편번호, 도로명주소, 상세주소) : </label>
                                        <input name="Facebook" type="text" class="form-control" placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label>생일 :</label>
                                        <input name="Twitter" type="text" class="form-control" placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label>희망하는 돌봄 서비스 :</label>
                                        <div class="form-check form-check-inline">
									  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
									  <label class="form-check-label" for="inlineCheckbox1">식사지원</label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
									  <label class="form-check-label" for="inlineCheckbox2">이동지원</label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
									  <label class="form-check-label" for="inlineCheckbox3">주거편의</label>
									</div>
                                    </div>
                                </div>  

                                <div class="col-sm-5">
                                    <!-- <div class="form-group">
                                        <label>생일 :</label>
                                        <input name="p-email" type="email" class="form-control" placeholder="p-email@rmail.com">
                                    </div>
                                    <div class="form-group">
                                        <label>전화번호 :</label>
                                        <input name="Phone" type="text" class="form-control" placeholder="+1 9090909090">
                                    </div>
                                    <div class="form-group">
                                        <label>희망하는 돌봄 서비스 :</label>
                                        <input name="FAX" type="text" class="form-control" placeholder="+1 9090909090">
                                    </div> -->
                                </div>
 
                            </div>
                    
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='정보수정' />
                                 <input type='button' class='btn btn-finish btn-primary'  name='secession' value='회원탈퇴' />
                                  
                                   <br>
                           		   <br>
                           		   <br>
                            </div>
                          <!--   <br>
                             <div class="col-sm-5 col-sm-offset-1" style="margin: 0 0 0 0">
                               
                               
                                  
                            </div> -->
                           
                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>
	
</body>
