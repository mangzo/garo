<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
</head>
<body>
	
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">돌봄 기업 조회</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                     
                <div class="col-md-3 p0 padding-top-40">
                    <div class="blog-asside-right pr0" style="height:80px">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                            <div class="panel-heading" style="height: 80px">
                                <h3 class="panel-title" >빠른 검색</h3>
                            </div>
                            <div class="panel-body search-widget" >
                                <form action="" class=" form-inline"> 
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-12" style="padding: 80px 15px 0">
                                                <input type="text" class="form-control" placeholder="키워드 검색">
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-6">

                                                <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="지역 선택">

                                                    <option>서울특별시</option>
                                                    <option>대전광역시</option>
                                                    <option>인천광역시</option>
                                                    <option>부산광역시</option>
                                                    <option>대구광역시</option>
                                                    <option>울산광역시</option>
                                                    <option>세종특별자치시</option>
                                                    <option>경기도</option>
                                                    <option>강원도</option>
                                                    <option>충청북도</option>
                                                    <option>충청남도</option>
                                                    <option>전라남도</option>
                                                    <option>전라북도</option>
                                                    <option>경상북도</option>
                                                    <option>경상남도</option>
                                                    <option>제주특별자치도</option>
                                                    
                                                    
                                                </select>
                                            </div>
                                            <div class="col-xs-6">

                                                <select id="basic" class="selectpicker show-tick form-control">
                                                    <option> 지원 유형 </option>
                                                    <option>이동지원</option>
                                                    <option>식사지원</option>
                                                    <option>주거편의</option>  

                                                </select>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label for="price-range">가격대별:</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[0,450]" id="price-range" ><br />
                                                <b class="pull-left color">10만원</b> 
                                                <b class="pull-right color">50만원</b>                                                
                                            </div>
                                            <div class="col-xs-6">
                                                <label for="property-geo">거리 순(m) :</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[50,450]" id="property-geo" ><br />
                                                <b class="pull-left color">10m</b> 
                                                <b class="pull-right color">12000m</b>                                                
                                            </div>                                            
                                        </div>
                                    </fieldset>                                

                                   

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> 0~2세</label>
                                                </div> 
                                            </div>

                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 3~4세</label>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> 5~7세</label>
                                                </div>
                                            </div>  
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> 7~8세 </label>
                                                </div>
                                            </div>  
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label><input type="checkbox"> 8~9세 </label>
                                                </div>
                                            </div>  
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 10세 이상</label>
                                                </div>
                                            </div>  
                                        </div>
                                    </fieldset>

                                   

                                    <fieldset >
                                        <div class="row">
                                            <div class="col-xs-12">  
                                                <input class="button btn largesearch-btn" value="Search" type="submit">
                                            </div>  
                                        </div>
                                    </fieldset>                                     
                                </form>
                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                            <div class="panel-heading">
                                <h3 class="panel-title">연계 페이지</h3>
                            </div>
                            <div class="panel-body recent-property-widget" style="padding: 120px 0 0 ">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="${contextPath}/resources/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry" >
                                                <h6> <a href="single.html"> </a></h6>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="${contextPath}/resources/assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker" style="padding-top: 50px">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">지역 맘카페 페이지로 이동 </a></h6>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="${contextPath}/resources/assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">인증 기관 보러 가기 </a></h6>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="${contextPath}/resources/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">우리동네 맘시터 현황 </a></h6>
                                            </div>
                                        </li>

                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-9  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                                <li class="active">
                                    <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                        평점 높은 순 <i class="fa fa-sort-amount-asc"></i>					
                                    </a>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                        최신 순 <i class="fa fa-sort-numeric-desc"></i>						
                                    </a>
                                </li>
                            </ul><!--/ .sort-by-list-->

                            <div class="items-per-page">
                                <label for="items_per_page"><b>한 페이지 당</b></label>
                                <div class="sel">
                                    <select id="items_per_page" name="per_page">
                                        <option value="3">3</option>
                                        <option value="6">6</option>
                                        <option value="9">9</option>
                                        <option selected="selected" value="12">12</option>
                                        <option value="15">15</option>
                                        <option value="30">30</option>
                                        <option value="45">45</option>
                                        <option value="60">60</option>
                                    </select>
                                </div><!--/ .sel-->
                            </div><!--/ .items-per-page-->
                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>

                    <div class="col-md-12 clear"> 
                        <div id="list-type" class="proerty-th">
                            <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/balloon.jpg"></a>
                                         </div>
 											<div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 허그 베이비 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전 서구 탄방동 </span>
                                            <span class="proerty-price pull-right"> 안전요원이 함께해요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                            
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                               <%--  <img src="${contextPath}/resources/assets/img/icon/bed.png">(5)|
                                                <img src="${contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                                <img src="${contextPath}/resources/assets/img/icon/cars.png">(1)   --%>
                                            </div>
                                        </div>



                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/hand.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 은아 어린이집 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전시 서구 둔산동 </span>
                                            <span class="proerty-price pull-right"> 이 선생님 친절해요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
<%--                                                 <img src="${contextPath}/resources/assets/img/icon/bed.png">(5)| --%>
<%--                                                 <img src="${contextPath}/resources/assets/img/icon/shawer.png">(2)| --%>
<%--                                                 <img src="${contextPath}/resources/assets/img/icon/cars.png">(1)   --%>
                                            </div>
                                        </div> 
                                    </div>
                                </div> 


                               <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/sleep.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 중앙능력개발원 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전시 서구 탄방동 </span>
                                            <span class="proerty-price pull-right"> 코딩까지 알려줘요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                               
                                            </div>
                                        </div> 
                                    </div>
                                </div> 


                                 <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/music.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 또아뽀아 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 충남 계룡시 </span>
                                            <span class="proerty-price pull-right"> 간식먹고싶다!!!!!!!!!!!!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                
                                            </div>
                                        </div> 
                                    </div>
                                </div> 


                                    <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/babycare.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 스윗 허니 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전시 중구 선화동 </span>
                                            <span class="proerty-price pull-right"> 우리 집에서 가까워요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                              
                                            </div>
                                        </div>

                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/mother.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 아이노리 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전시 중구 은행동 </span>
                                            <span class="proerty-price pull-right"> 교육을 이수했어요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/father.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 행복한 파파 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b>  </span>
                                            <span class="proerty-price pull-right"> 오늘 저녁 치킨 고~?</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                              
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/landscape.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 아네모네 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 서울시 강남구 </span>
                                            <span class="proerty-price pull-right"> 공부를 잘해요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="${contextPath}/resources/assets/img/realimg/raspberries.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 스마일키즈 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 위치 :</b> 대전시 유성구 </span>
                                            <span class="proerty-price pull-right"> 직접 방문해요!</span>
                                             <div class="col-sm-5 col-sm-offset-1" style="padding: 0px; margin: 0px;width:200px ">
                         
                               					<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/detail.do'" name='finish' value='상세보기' />
                                  				<input type='button' class='btn btn-finish btn-primary' style= "width:80px;margin:5px;padding: 0px 0px;height: 40px"  onclick="location.href='${contextPath}/search/apply.do'" name='finish' value='매칭신청' />
                           					 </div>
                          					  <br>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                 
                                            </div>
                                        </div> 
                                    </div>
                                </div> 
                        </div>
                    </div>

                    
                    <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div>
                </div>  
                </div>              
            </div>
        </div>
</body>
</html>