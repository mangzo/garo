<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<head>
 <meta charset="UTF-8">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
var sss="$memberInfo.grade";
var goNoticeForm="${contextPath }/notice/noticeForm.do";
function formNotice(){
	if(sss = 3){ 
		/* alert('권한이 있습니다.'); */
		location.href= goNoticeForm;
	} else{
		alert('작성 권한이 없습니다.');
	}
	
}
  
</script>
 


</head>
<body>


	<!-- property area -->
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"> <span class="pink"></span></h1>               
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
                                    <b>문의 </b><br><br>
                          
                                </h3>
                                <hr>
                            </div>




<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
   
    </tr>
  </thead>
  <c:choose>
  <c:when test="${noticesList ==null }" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
  <c:when test="${noticesList !=null }" >
    <c:forEach  var="article" items="${noticesList }" varStatus="articleNum" >
  
  <tbody>
    <tr>
      <th scope="row">${article.ntc_seq}</th>
      <td>${article.ntc_name }</td>
      <td><a class='cls1' href="${contextPath}/notice/viewNotice.do?ntc_seq=${article.ntc_seq}">${article.ntc_title }</a></td>
      <td>	<fmt:formatDate value="${article.ntc_date}" pattern="yyyy-MM-dd" /></td>
    
    </tr>
   <!--  <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr> -->
   </c:forEach>
     </c:when>
    </c:choose>
  </tbody>
</table>





<%-- <table align="center" border="1"  width="80%"  >
  <tr height="10" align="center"  bgcolor="#FFECB4">
     <td >글번호</td>
     <td >작성자</td>              
     <td >제목</td>
     <td >작성일</td>
  </tr>
<c:choose>
  <c:when test="${noticesList ==null }" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
  <c:when test="${noticesList !=null }" >
    <c:forEach  var="article" items="${noticesList }" varStatus="articleNum" >
     
	   <tr align="center">
		   <td width="5%">${article.ntc_seq}</td>
		   <td width="10%">${article.ntc_name }</td>
		   <td align='left'  width="35%">
		   <a class='cls1' href="${contextPath}/notice/viewNotice.do?ntc_seq=${article.ntc_seq}">${article.ntc_title }</a>		   	
		   	
		   	
		   </td>
		   <td  width="10%">
		   	<fmt:formatDate value="${article.ntc_date}" pattern="yyyy-MM-dd" />
		   </td> 
	   </tr>
    </c:forEach>
     </c:when>
    </c:choose> --%>
<!-- </table> -->

                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>
	
	
	 <button style="width: 200px; height: 50px; margin: 0 750px 50px 750px;  "
	 type='button' value='새 게시물 작성하기' onClick='formNotice()'>새 질문 등록</button>
	<%-- <input type='button' value='새 게시물 작성하기' onclick="location.href='${contextPath }/notice/noticeForm.do'">
  --%>
  
  <div id="member"></div>
  <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group me-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-outline-secondary">1</button>
    <button type="button" class="btn btn-outline-secondary">2</button>
    <button type="button" class="btn btn-outline-secondary">3</button>
    <button type="button" class="btn btn-outline-secondary">4</button>
  </div>
</body>
