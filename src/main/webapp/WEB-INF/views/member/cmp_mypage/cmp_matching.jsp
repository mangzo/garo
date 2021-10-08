<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<body>


	<!-- property area -->
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"></h1>               
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
                                    <b style="color:orange;">매칭 접수 현황 </b><br><br>
                                    
                                </h3>
                                <hr>
                            </div>


<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">고객명</th>
      <th scope="col">업체명</th>
      <th scope="col">신청일</th>
      <th scope="col">매칭현황</th>
    </tr>
  </thead>
  <c:choose>
	  <c:when test="${matchingsList ==null }" >
	    <tr  height="10">
	      <td colspan="4">
	         <p align="center">
	            <b><span style="font-size:9pt;">매칭 중인 기업이 없습니다.</span></b>
	        </p>
	      </td>  
	    </tr>
	  </c:when>
	  <c:when test="${matchingsList !=null }" >
		    <c:forEach  var="articles" items="${matchingsList}" varStatus="articlesNum" >
		  
			  <tbody>
			    <tr>
			      <th scope="row">${articles.mch_code}</th>
			     <td><a class='cls1' href="${contextPath}/matching/listMatching.do?mch_code=${articles.mch_code}">${articles.cus_name }</a></td>
			      <td>${articles.cmp_id }</td>
			      <td><fmt:formatDate value="${articles.service_date}" pattern="yyyy-MM-dd" /></td>
			      <td>${articles.state}</td>
			   
			      
			    </tr>
		   </c:forEach>
	     </c:when>
    </c:choose>
  </tbody>
</table>




<!-- </table> -->

                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>
	
	
	<!--  <button style="width: 200px; height: 50px; margin: 0 750px 50px 750px;  "
	 type='button' value='새 게시물 작성하기' onClick='formNotice()'>새 공지사항 등록</button> -->
	<%-- <input type='button' value='새 게시물 작성하기' onclick="location.href='${contextPath }/notice/noticeForm.do'">
  --%>
  
 <!--  <div id="member"></div>
  <div class="btn-toolbar mb-3" role="toolbar" ; aria-label="Toolbar with button groups">
  <div class="btn-group me-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-outline-secondary">1</button>
    <button type="button" class="btn btn-outline-secondary">2</button>
    <button type="button" class="btn btn-outline-secondary">3</button>
    <button type="button" class="btn btn-outline-secondary">4</button>
  </div> -->
</body>
