<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
 <style>
   .cls1 {text-decoration:none;}
   .cls2{text-align:center; font-size:30px;}
   .noticeList{
   font-family: 'Open Sans', sans-serif; 
   }
  </style>
  <meta charset="UTF-8">
  <title>매칭현황</title>
</head>
<script>
	/* function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  }
	} */
</script>
<body>
<br>

  <div class="section additional-details" style="width: 500px;height:80px;margin: 0 7%;padding: 0 0 0 0px;">
  <h3>
   <b class="s-property-title" style="font-size:15pt;width: 200px;text-align: center;">매칭현황 </b>
   <small></small>
 </h3>
 <!--   <hr> -->
 </div>

	<table align="center" border="1"  class="matchingList" style="width: 80%;height: 7%; text-align: center" >
	
	  <tr >
     <td class="col-xs-3 add-d-title">회원명</td>
     <td class="col-xs-3 add-d-title">기업명</td>
     <td class="col-xs-3 add-d-title">매칭 진행 상황</td>              
     <td class="col-xs-3 add-d-title">서비스 제공일</td>
    
 	 </tr>
<c:choose>
  <c:when test="${articlesList ==null }" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:11pt;" class="col-xs-8 add-d-entry">매칭된 기업이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
  <c:when test="${articlesList !=null }" >
    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
     <tr align="center">
	<td class="col-xs-6 col-sm-3 col-md-3 add-d-entry" width="5%"><a href="property-1.html">${matching.cmp_id}</a></td>
	<td class="col-xs-6 col-sm-3 col-md-3 add-d-entry" width="10%">${matching.mem_email }</td>
	<td class="col-xs-6 col-sm-3 col-md-3 add-d-entry" align='left'  width="35%">
	
	  <span style="padding-right:30px">${matching.state } </span>
	 <%--   <c:choose>
	      <c:when test='${article.level > 1 }'>  
	         <c:forEach begin="1" end="${article.level }" step="1">
	              <span style="padding-left:20px"></span>    
	         </c:forEach>
	         <span style="font-size:12px;">[답변]</span>
                   <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
	       </c:when>
	          <c:otherwise>
	            <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
	          </c:otherwise>
	     </c:choose> --%>
	  </td>
	  <td  width="10%">${matchig.service_date}</td> 
	</tr>
    </c:forEach>
     </c:when>
    </c:choose>
</table>

	

<!-- <a  class="cls1"  href="#"><p class="cls2">글쓰기</p></a> -->
<%-- a  class="cls1"  href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
                                                    '${contextPath}/member/loginForm.do')"><p class="cls2">글쓰기</p></a> --%>

<br>
<br>
</body>
</html>