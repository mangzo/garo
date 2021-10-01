<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("utf-8");
%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="GARO is a real-estate template">
    <meta name="author" content="Kimarotec">
    <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/fontello.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" >
    <link rel="stylesheet" href="${contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" >
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/animate.css"  media="screen">    
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/bootstrap-select.min.css"> 
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/icheck.min_all.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/price-range.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/owl.carousel.css">  
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/owl.theme.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/owl.transitions.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/responsive.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/wizard.css">
    <link rel="stylesheet" href="${contextPath}/resources/assets/css/lightslider.min.css">
    
<!-- 스크립트 -->
    <script src="${contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
<%--     <script src="${contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script> --%>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
    <script src="${contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
    <script src="${contextPath}/resources/assets/js/easypiechart.min.js"></script>
    <script src="${contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
    <script src="${contextPath}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/assets/js/wow.js"></script>
    <script src="${contextPath}/resources/assets/js/icheck.min.js"></script>
	<script src="${contextPath}/resources/assets/js/price-range.js"></script>
    <script src="${contextPath}/resources/assets/js/jquery.validate.min.js"></script>   
	<script src="${contextPath}/resources/assets/js/jquery.bootstrap.wizard.js"></script>    
	<script src="${contextPath}/resources/assets/js/wizard.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/assets/js/lightslider.min.js"></script>
    
    </head>
    
	<title><tiles:insertAttribute name="title" /></title>
	
</head>
<body>
	<div id="outer_wrap">
		<div id="wrap">
			<header>
				   <tiles:insertAttribute name="header" />
			</header>
			
			<article>
			 	<tiles:insertAttribute name="body" />
			</article>
			<footer>
        		<tiles:insertAttribute name="footer" />
        	</footer>
        	
		</div>
    </div>
    
    	
</body>      
        
        