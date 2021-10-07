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
					<h1 class="page-title">
						<span class="orange strong"></span>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->


	<div class="content-area user-profiel"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">
					<div class="profiel-header">
						<h3>
							<b>매칭 신청 </b><br> <small></small>
						</h3>
						<hr>
					</div>
					<form action="${contextPath }/matching/matchingRequest.do">
						<div class="col-sm-3 padding-top-25">

							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label>신청인 이메일</label> <input name="mem_email" type="text" class=""
									value="${mem_email }" readonly>
							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label>이용하는 회사 아이디</label> <input name="cmp_id" type="text" class=""
									value="${companyVO.cmp_id }" readonly>
							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label>원하는 서비스</label>

								<c:if test="${companyVO.service=='move'}">

									<div class="form-group"
										style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
										<input name="service" type="text" class="form-control"
											value="이동지원" readonly>
									</div>

								</c:if>
								<c:if test="${companyVO.service=='food'}">
									<div class="form-group"
										style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
										<input name="service" type="text" class="form-control"
											value="식사지원" readonly>
									</div>
								</c:if>
								<c:if test="${companyVO.service=='house'}">
									<div class="form-group"
										style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
										<input name="service" type="text" class="form-control"
											value="주거지원" readonly>
									</div>
								</c:if>


							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label>원하는 날짜 &nbsp; (2021-10-13 형식으로 입력하시오)</label> <input id="service_date" name="service_date"  type="text"
									class="form-control" placeholder="서비스를 원하는 날짜를 입력해주세요"
									name="service_date">
							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label>원하는 시간대 &nbsp; (09-13 형식으로 입력하시오)</label> <input  type="text"
									class="form-control" placeholder="서비스를 원하는 시간대를 입력해주세요"
									name="service_time">
							</div>
							
							<div class="form-group">
							<br>
							<label>원하는 장소</label>
							
								<select id="lunchBegins" class="selectpicker" name="service_loc"
									data-live-search="true" data-live-search-style="begins"
									title="시/도를 입력하세요">
									<option>대전</option>
									<option>서울</option>
									<option>경기도</option>
									<option>부산</option>
									<option>울산</option>
									<option>대구</option>
									<option>인천</option>
									<option>광주</option>
									<option>세종</option>
									<option>강원</option>
									<option>충북</option>
									<option>충남</option>
									<option>전북</option>
									<option>전남</option>
									<option>경북</option>
									<option>경남</option>
									<option>제주</option>
								</select>
							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 800px; height: 400px; position: relative;">
								<label>기타 추가사항</label> <br>
								<!--  <input name="text" type="text" class="form-control" placeholder=""   > -->
								<textarea cols="100" rows="30"
									style="resize: horizontal; padding: 10px 0 0; margin: 10px 0 0; width: 800px; height: 300px; overflow: AUTO;"
									name="etc"></textarea>
							</div>
							<div class="form-group"
								style="padding: 10px 0 0; margin: 10px 0 0; width: 500px;">
								<label class="input-group-text" for="inputGroupFile01">첨부파일(미구현)</label>
								<input type="file" class="form-control" id="inputGroupFile01">
							</div>
							<div class="col-sm-5 col-sm-offset-1">
								<input type='submit' class='btn btn-finish btn-primary'
									value='제출하기' />
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
