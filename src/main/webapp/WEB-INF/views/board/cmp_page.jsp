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
                        <h1 class="page-title">사이트 소개</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-2">
                        <div class="">
                            <div class="row">
                                <div class="light-slide-item">            
                                    <div class="clearfix">
                                        <div class="favorite-and-print">
                                            <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                                <i class="fa fa-star-o"></i>
                                            </a>
                                            <a class="printer-icon " href="javascript:window.print()">
                                                <i class="fa fa-print"></i> 
                                            </a>
                                        </div> 

                                        <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                            <li data-thumb="${contextPath}/resources/assets/img/property-1/property1.jpg"> 
                                                <img src="${contextPath}/resources/assets/img/realimg/yellow.jpg" />
                                            <%-- </li>
                                            <li data-thumb="${contextPath}/resources/assets/img/property-1/property2.jpg"> 
                                                <img src="${contextPath}/resources/assets/img/property-1/property3.jpg" />
                                            </li>
                                            <li data-thumb="${contextPath}/resources/assets/img/property-1/property3.jpg"> 
                                                <img src="${contextPath}/resources/assets/img/property-1/property3.jpg" />
                                            </li>
                                            <li data-thumb="${contextPath}/resources/assets/img/property-1/property4.jpg"> 
                                                <img src="${contextPath}/resources/assets/img/property-1/property4.jpg" />
                                            </li>                        --%>                  
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-property-wrapper">

                                <div class="section">
                                    <br><br><br><h2 class="s-property-title">소개글</h2>
                                    <div class="s-property-content">
                                        <p> <h3 style="font-family: 'KoPub Batang', serif;">우리아이 돌보미는, </h3><br><br> <h7 style="font-maily: 'KoPub Batang', serif;">
                                        바빠지는 현대 부모님들을 위해 부모님들이 원하는 시간에 아이들 돌봐주는 서비스 입니다. 우리아이 돌보미는 전부 믿을 만한 선생님들로 구성 되어 있습니다.
                                        <br>
                                         신생아부터 6~7세의 영유아까지 전부 경험있고 아이들을 사랑하는 선생님들이십니다. 부모님들이 원하는 시간에 서비스를 요하는 지역과 유형을 선택하시면,
                                         추천 기업을 알려드립니다. 추천 기업을 찾아 매칭 신청을 요청하실 수 있습니다.</h7> </p>
                                    </div>
                                </div>
                                <!-- End description area  -->

                                <!-- <div class="section additional-details">

                                    <h4 class="s-property-title">Additional Details</h4>

                                    <ul class="additional-details-list clearfix">
                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Built In</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2003</span>
                                        </li>
                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Parking</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or More Spaces,Covered Parking,Valet Parking</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">View</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal View,Direct ew</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront Description:</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal Front,Ocean Access</span>
                                        </li> 

                                    </ul>
                                </div>   -->
                                <!-- End additional-details area  -->

                              
                                <!-- End features area  -->

                           
                                <!-- End video area  -->
                            </div>
                        </div>
