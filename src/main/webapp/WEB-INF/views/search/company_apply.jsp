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
                                    <b>매칭 신청 </b><br>
                                    <small></small>
                                </h3>
                                <hr>
                            </div>



                                <div class="col-sm-3 padding-top-25" >

                                    <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                        <label>신청인</label>
                                        <input name="firstname" type="text" class="form-control" placeholder="신청인의 성함을 입력해주세요">
                                    </div>
                                   <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                     <label>원하는 서비스</label>
                                    <div class="form-check">
  										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  										<label class="form-check-label" for="flexCheckDefault">
   											 이동지원
 										 </label>
									</div>
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
									  <label class="form-check-label" for="flexCheckChecked">
									    식사지원
									  </label>
									</div>
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
									  <label class="form-check-label" for="flexCheckChecked">
									    주거편의
									  </label>
									</div>
									</div>
									 <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                        <label>원하는 날짜</label>
                                        <input name="lastname" type="text" class="form-control" placeholder="서비스를 원하는 날짜를 입력해주세요">
                                    </div> 
                                    <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                        <label>원하는 시간대</label>
                                        <input name="lastname" type="text" class="form-control" placeholder="서비스를 원하는 시간대를 입력해주세요">
                                    </div> 
                                     <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                        <label>원하는 지역</label>
                                        <input name="lastname" type="text" class="form-control" placeholder="서비스를 원하는 지역을 입력해주세요">
                                    </div> 
                                    <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0; width: 800px; height: 400px; position: relative; ">
                                        <label>기타 추가사항</label>
                                        <br>
                                       <!--  <input name="text" type="text" class="form-control" placeholder=""   > -->
                                        <textarea cols="100" rows="30" name="content"
                                         style=" resize: horizontal;padding: 10px 0 0; margin: 10px 0 0; width: 800px; height: 300px; overflow: AUTO;" ></textarea>
                                    </div> 
                                    <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                        <label class="input-group-text" for="inputGroupFile01">첨부파일</label>
 										 <input type="file" class="form-control" id="inputGroupFile01">
                                    </div> 
                                    
                                   
                                </div>
                              <!--   <div class="col-sm-3 padding-top-25">
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
                                
                              <!--   <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>Facebook :</label>
                                        <input name="Facebook" type="text" class="form-control" placeholder="https://facebook.com/user">
                                    </div>
                                    <div class="form-group">
                                        <label>Twitter :</label>
                                        <input name="Twitter" type="text" class="form-control" placeholder="https://Twitter.com/@user">
                                    </div>
                                    <div class="form-group">
                                        <label>Website :</label>
                                        <input name="website" type="text" class="form-control" placeholder="https://yoursite.com/">
                                    </div>
                                </div>  

                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label>Public email :</label>
                                        <input name="p-email" type="email" class="form-control" placeholder="p-email@rmail.com">
                                    </div>
                                    <div class="form-group">
                                        <label>Phone :</label>
                                        <input name="Phone" type="text" class="form-control" placeholder="+1 9090909090">
                                    </div>
                                    <div class="form-group">
                                        <label>FAX :</label>
                                        <input name="FAX" type="text" class="form-control" placeholder="+1 9090909090">
                                    </div> -->
                                </div>
 
                           
                           
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='제출하기' />
                                  
                            </div>
                            <br>
                          
                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>
	
</body>
