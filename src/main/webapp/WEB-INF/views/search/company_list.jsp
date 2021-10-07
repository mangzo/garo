<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<script>

function submit(){
	
	console.log("ASDFDSAFSA")
	
	frm.action ="${contextPath}/search/apply"
	
	frm.submit;
}



</script>




</head>
<body>
	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">기업 리스트</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<div class="content-area blog-page padding-top-40"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div class="blog-lst col-md-9">

					<c:if test="${companyVOList == '[]'}">
						데이터가 없습니다.
					</c:if>
					
					
					
					<form action="${contextPath }/search/apply" method="get">


						<c:forEach var="companyVO" items="${companyVOList}"
							varStatus="status">

							<table>
								<tr >
								<td>회사명</td>
									<td><input type="text" name="name" value="${companyVO.name }" readonly></td>



								</tr>
								
								<tr>
								<td>회사아이디</td>
									<td><input type="text" name="cmp_id" value="${companyVO.cmp_id }" readonly></td>
								</tr>
								
								<tr>
								<td>주소 </td>
									<td><input type="text" value="${companyVO.addr }" readonly></td>


								</tr>
								<tr>
								<td>사무실</td>
									<td><input type="text"  value="${companyVO.office_no1 }" readonly></td>
									
								</tr>
								<tr>
									<td>주소 상세</td>
									<td><input type="text"  value="${companyVO.addr_detail }" readonly></td>

								</tr>
								
								<tr>
								<td>지원되는 서비스 </td>
								<td><input type="text" name="service" value="${companyVO.service }" readonly></td>
								
								</tr>
								
								
								
								<tr>
								<td><input type="hidden" name="mem_email" value="${memberInfo.mem_email}"></td>
								
									<td><input type="submit" value="신청"></td>
									
								</tr>


							</table>


						</c:forEach>



					</form>


				</div>







				<div class="blog-asside-right col-md-3">
					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">기업 검색</h3>
						</div>
						<div class="panel-body text-widget"
							style="padding: 0px 0 0; margin: 0 0 0">
							<p>찾으시는 기업이 있으면 검색해보세요!</p>
						</div>
					</div>

					<div
						class="panel panel-default sidebar-menu wow  fadeInRight animated"
						style="padding: 10px 0 10px">
						<div class="panel-heading"
							style="padding: 80px 0 0; margin: 0px 0 0; height: 100px">
							<h3 class="panel-title">추천 기업</h3>
						</div>
						<div class="panel-body">
							<form role="search">
								<div class="input-group" style="padding: 00px 0 0">
									<input class="form-control" placeholder="Search" type="text">
									<span class="input-group-btn">
										<button type="submit" class="btn btn-smal">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</form>
						</div>
					</div>



					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated"
						style="padding: 60px 0 0">

						<div class="panel-heading">

							<!--   <h3 class="panel-title" style="">최근에 본 기업</h3> -->
						</div>
						<div class="panel-body recent-property-widget"
							style="padding: 0px 0 0; margin: 0px 0 0">
							<ul>
								<li>

									<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
										<a href="single.html"><img
											src="${contextPath}/resources/assets/img/demo/small-property-2.jpg"></a>
										<span class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
										<h6>
											<a href="single.html"> 하치카페 </a>
										</h6>
										<span class="property-price"></span>
									</div>
								</li>
								<li>
									<div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
										<a href="single.html"><img
											src="${contextPath}/resources/assets/img/demo/small-property-1.jpg"></a>
										<span class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
										<h6>
											<a href="single.html">허그 베이비 </a>
										</h6>
										<span class="property-price">대전 월평동</span>
									</div>
								</li>
								<li>
									<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
										<a href="single.html"><img
											src="${contextPath}/resources/assets/img/demo/small-property-3.jpg"></a>
										<span class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
										<h6>
											<a href="single.html"> 해피 트리 </a>
										</h6>
										<span class="property-price">대전 반석동</span>
									</div>



								</li>

								<li>
									<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
										<a href="single.html"><img
											src="${contextPath}/resources/assets/img/demo/small-property-2.jpg"></a>
										<span class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
										<h6>
											<a href="single.html">인생은 나그네길</a>
										</h6>
										<span class="property-price">대전 탄방동</span>
									</div>

								</li>

							</ul>

						</div>
					</div>


					<div class="panel sidebar-menu wow  fadeInRight animated"
						style="padding: 50px 0 0">
						<div class="panel-heading">
							<h3 class="panel-title">태그</h3>
						</div>
						<div class="panel-body" style="padding: 100px 0 0">
							<ul class="tag-cloud" style="padding: 30px 0 0">
								<li><a href="#"><i class="fa fa-tags"></i> #우리아이</a></li>
								<li><a href="#"><i class="fa fa-tags"></i> #돌봄 서비스</a></li>
								<li><a href="#"><i class="fa fa-tags"></i> #아이 돌보미</a></li>
								<li><a href="#"><i class="fa fa-tags"></i> #믿을만한 곳</a></li>
								<li><a href="#"><i class="fa fa-tags"></i> #후기 좋은 곳</a></li>
								<li><a href="#"><i class="fa fa-tags"></i> #돌봄</a></li>

							</ul>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
</body>
