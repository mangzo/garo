<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="notice"  value="${noticeMap.article}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
   <meta charset="UTF-8">
   <title>공지사항 상세창</title>
   
   
   
   
   <style>
     #tr_btn_modify{
       display:none;
     }
   	 #back{
   	 font-family:바탕;
   	 color: #B1B1B1;
   	 border:1px solid #B1B1B1;
   	 background-color:rgba(0,0,0,0);
	 width: 30%;
	 height: 30%;
     padding:5px;
   	 border-radius:5px;
   	 }
   	 
   	 #back:hover{
   	 color:white;
   	 background-color:#B1B1B1;
   	 }
   
  
   
   </style>
   
   
   
   
   
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
   function backToList(obj){
	   obj.action="${contextPath}/notice/listNotice.do";
	   obj.submit();
   }
  
   
 	function fn_update(){
		 updateTitle = document.getElementById('ntc_title');
		 updateTitle.disabled=false;
		 
		 updateName= document.getElementById('ntc_name');
		 updateName.disabled=false;
		 
		 updateContent = document.getElementById('ntc_content')
		 updateContent.disabled=false;
		 
		 document.getElementById('tr_btn').style.display="none";
		 document.getElementById('tr_btn_modify').style.display="block";
	 }
	 
	
	  
	 
 </script>
</head>
<body>
<%--   <form name="noticeForm" method="post"  action=""  enctype="multipart/form-data">
  <table  border=0  align="center">
  <tr>
   <td width=150 align="center" bgcolor=#FFECB3>
      글번호
   </td>
   <td >
    <input type="text"  id="ntc_seq" name="ntc_seq" value="${noticeVO.ntc_seq }"  disabled />
    <input type="hidden" name="ntc_seq" value="${noticeVO.ntc_seq }"  />
   </td>
  </tr>
  
  
  <tr><td>  </td></tr>
  
  <tr>
    <td width="150" align="center" bgcolor="#FFECB3">
      작성자
   </td>
   <td >
    <input type=text id="ntc_name" name="ntc_name" value="${noticeVO.ntc_name }" disabled />
   </td>
  </tr>
  
  
   
  
  <tr>
    <td width="150" align="center" bgcolor="#FFECB3">
      제목 
   </td>
   <td>
    <input type=text id="ntc_title" name="ntc_title" value="${noticeVO.ntc_title}" disabled />
   </td>   
  </tr>
  
  <br>
  <br>
  
  <tr>
    <td width="150" align="center" bgcolor="#FFECB3">
      내용
   </td>
   <td>
    <textarea rows="20" cols="60"  name="ntc_content"  id="ntc_content"  disabled >${noticeVO.ntc_content}</textarea>
   </td>  
  </tr>
 	 
  
  <tr>
	   <td width="150" align="center" bgcolor="#FFECB3">
	      등록일자
	   </td>
	   <td>
	    <input type=text value="<fmt:formatDate value="${noticeVO.ntc_date}" />" disabled />
	   </td>   
  </tr>
  <tr   id="tr_btn_modify"  align="center"  >
	   <td colspan="2">
	       <input type="submit" value="수정반영하기" onClick="javascript:form.action='${contextPath}/notice/modNotice.do'"  >
           <input type="button" value="취소"  onClick="location.href='${contextPath }/notice/viewNotice.do'">
	   </td>   
  </tr>
    
  <tr  id="tr_btn"    >
   <td colspan="2" align="center">
      
      <c:if test="${noticeVO.ntc_name == '관리자' }">
	      <input type="button" value="수정하기" onClick=fn_update()>
	      <input type="submit" id="delete_btn" value="삭제하기" onClick="javascript:form.action='${contextPath}/notice/removeNotice.do'" >
	   
	   </c:if>
	   <br><br>
	   <button type="button" class="btn btn-secondary" value="리스트로 돌아가기" onclick="location.href='${contextPath }/notice/listNotice.do'">◀이전</button>
	    <input type="button" id="back" value="리스트로 돌아가기" onclick="location.href='${contextPath }/notice/listNotice.do'">
   </td>
  </tr>
 </table>
  --%>
 
 
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

                        <form name="noticeForm" method="post"  action=""  enctype="multipart/form-data">
                            <div class="profiel-header">
                            <input type="hidden" id="ntc_seq" name="ntc_seq" value="${noticeVO.ntc_seq }"  />
                                <h3>
                                    <b><input type=text id="ntc_title" style="background: none; color:orange; font-size:24px; text-align:center" name="ntc_title" value="${noticeVO.ntc_title}" disabled /> </b><br>
                                    
                                </h3>
                                  <input type=text id="ntc_name" style="background: none" name="ntc_name" value="${noticeVO.ntc_name }" disabled /><br>
                                 <input type=text style="background: none;font-size:15px" value="<fmt:formatDate value="${noticeVO.ntc_date}" />" disabled />
 								
                                <hr>
                            </div>
 
 
							 <div>
							  <textarea style="width:900px; margin:0 15px 0 25px;resize: both;"rows="20" cols="60"  name="ntc_content"  id="ntc_content"   disabled >${noticeVO.ntc_content}</textarea>
							 </div>
							 
							<div id="tr_btn_modify"> 
							 <input type="submit" value="수정반영하기" onClick="javascript:form.action='${contextPath}/notice/modNotice.do'"  >
           					<input type="button" value="취소"  onClick="location.href='${contextPath }/notice/viewNotice.do'">
							</div>
							
							<div id="tr_btn">
						      <c:if test="${noticeVO.ntc_name == '관리자' }">
							      <input type="button" value="수정하기" style="width:100px; margin: 0 5%;" onClick=fn_update()>
							      <input type="submit" id="delete_btn" value="삭제하기" style="width:100px; margin:0 5%;" onClick="javascript:form.action='${contextPath}/notice/removeNotice.do'" >
							   
							   </c:if>
							 </div>
							   <br><br>
 							<button type="button" style="width:30px; margin: 0 50%;"class="btn btn-secondary" value="리스트로 돌아가기" onclick="location.href='${contextPath }/notice/noticeList.do'">◀이전</button>
 
 </form>
 </div>
 </div>
 </div>
 </div>
 <!-- </form> -->
 <br><br>
</body>
</html>