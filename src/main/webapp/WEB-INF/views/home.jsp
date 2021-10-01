<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<div class="slider-area">
		<div class="slider">
			<div id="bg-slider" class="owl-carousel owl-theme">
				<div class="item">
					<img src="${contextPath}/resources/assets/img/realimg/color.jpg"
						alt="GTA V">
				</div>
				<div class="item">
					<img
						src="${contextPath}/resources/assets/img/realimg/sunflower 2.jpg"
						alt="The Last of us">
				</div>
				<div class="item">
					<img src="${contextPath}/resources/assets/img/realimg/yellow.jpg"
						alt="GTA V">
				</div>
			</div>
		</div>
		<div class="slider-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<h2 style="font-size: 40px; color: white; font-family: '바탕'">
						우리들을 키워냈던 어른들의 손맛 그대로, <br>우리아이 '돌보미'
					</h2>
					<p></p>
					<div class="search-form wow pulse" data-wow-delay="0.8s">

						<form action="${contextPath }/search/list" class=" form-inline">
							<button class="btn  toggle-btn" type="button">
								<i class="fa fa-bars"></i>
							</button>

							<div class="form-group">
								<input type="text" class="form-control" name="name"
									placeholder="찾으시는 기업이 있나요?">
							</div>
							<div class="form-group">
								<select id="lunchBegins" class="selectpicker" name="addr"
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
							<div class="form-group">
								<select id="basic" name="service" class="selectpicker show-tick form-control">
									<option>서비스 유형을 선택하세요</option>
									<option value="move">이동지원</option>
									<option value="food">식사지원</option>
									<option value="house">주거편의</option>

								</select>
							</div>
							<div class="form-group"></div>
							<button class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>





						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- property area -->
	<div class="content-area home-area-1 recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title"
					style="height: 130px; margin: 30px 0 30px; padding: 50px 0 0">
					<!-- /.feature title -->
					<h2>우리동네 추천기업</h2>
					<p style="font-family: '굴림'">내 주변 사람들이 믿고 맡기는 만족도 후기 100%의 보증
						기관들!</p>
				</div>
			</div>

			<div class="row">
				<div class="proerty-th">
					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">

							<div class="item-thumb">
								<a href="property-1.html"><img
									src="${contextPath}/resources/assets/img/realimg/hand.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.html">허그 베이비 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 300m 이내 </span> <span
									class="proerty-price pull-right">월 32~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-2.html"><img
									src="${contextPath}/resources/assets/img/realimg/block.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-2.html">양호 돌보미센터 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 500m 이내 </span> <span
									class="proerty-price pull-right">월 30~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-3.html"><img
									src="${contextPath}/resources/assets/img/realimg/gun.jpg"></a>

							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-3.html">귀여운 건이 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 1km 이내 </span> <span
									class="proerty-price pull-right">월 35~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.html"><img
									src="${contextPath}/resources/assets/img/realimg/conan.jpg"></a>

							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.html">명탐정 도난 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 1.2km 이내 </span> <span
									class="proerty-price pull-right">주 8~</span>
							</div>
						</div>
					</div>


					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-3.html"><img
									src="${contextPath}/resources/assets/img/realimg/bluebaby.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-3.html">스윗 허니 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 500m 이내 </span> <span
									class="proerty-price pull-right">월 33~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-2.html"><img
									src="${contextPath}/resources/assets/img/realimg/study.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-2.html">중앙능력개발원 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 300m 이내 </span> <span
									class="proerty-price pull-right">주 7~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.html"><img
									src="${contextPath}/resources/assets/img/realimg/bus.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.html">생갈치 1호 </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>위치 :</b> 1km 이내 </span> <span
									class="proerty-price pull-right">월 40~</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-tree more-proerty text-center">
							<div class="item-tree-icon">
								<i class="fa fa-th"></i>
							</div>
							<div class="more-entry overflow">
								<h5>
									<a href="property-1.html">더 많은 기업을<br> 보고 싶으신가요?
									</a>
								</h5>
								<h5 class="tree-sub-ttl">더 많은 기업 보러 가기▶</h5>
								<button class="btn border-btn more-black" value="여기를 클릭 !">여기를
									클릭 !</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!--Welcome area -->
	<div class="Welcome-area"
		style="background: #F3F3F3 url(http://localhost:8090/sitter/resources/assets/img/realimg/yellow.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-md-12 Welcome-entry  col-sm-12"
					style="padding: 10px 0 10px">
					<div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
						<div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s"
							data-wow-offset="100">
							<div class="row">
								<div
									class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
									<!-- /.feature title -->
									<h2
										style="font-size: 30px; color: red; font-family: 궁서체; padding: 50px 0 70px;">우리아이
										돌보미</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 col-sm-6 col-xs-12">
						<div class="welcome_services wow fadeInRight"
							data-wow-delay="0.3s" data-wow-offset="100">
							<div class="row">
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate" style="height: 200px;">
										<div class="welcome-icon">
											<i class="pe-7s-home pe-4x"></i>
										</div>
										<h3>우리집에서 가까운 센터</h3>
									</div>
								</div>
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate" style="height: 200px;">
										<div class="welcome-icon">
											<i class="pe-7s-users pe-4x"></i>
										</div>
										<h3>기업 리스트 보러 가기</h3>
									</div>
								</div>


								<div class="col-xs-12 text-center">
									<i class="welcome-circle"></i>
								</div>

								<div class="col-xs-6 m-padding">
									<div class="welcome-estate" style="height: 200px;">
										<div class="welcome-icon">
											<i class="pe-7s-notebook pe-4x"></i>
										</div>
										<h3>사용 방법이 궁금하신가요?</h3>
									</div>
								</div>
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate" style="height: 200px;">
										<div class="welcome-icon">
											<i class="pe-7s-help2 pe-4x"></i>
										</div>
										<h3>도움말</h3>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--TESTIMONIALS -->
	<div class="testimonial-area recent-property"
		style="background-color: #FCFCFC; padding-bottom: 15px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>소중한 고객님들의 찐 후기</h2>
				</div>
			</div>

			<div class="row">
				<div class="row testimonial">
					<div class="col-md-12">
						<div id="testimonial-slider">
							<div class="item">
								<div class="client-text" style="height: 250px; weight: 150px">
									<p>
										갑자기 일을 하게 되어서 아이 맡길 기관이 필요했는데,, 선생님 짱 친절하시고 진짜 최고에요 아이도 선생님을
										너무 좋아하네요 ㅠㅠ 최고예요!<br>★★★★★
									</p>
									<h4>
										<strong>김*은 </strong><i>배우</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="${contextPath}/resources/assets/img/client-face1.png"
										alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text" style="height: 250px; weight: 150px">
									<p>
										친절하시고 간식도 주셔서 완전 만족합니다 ^_^ 급하게 구했는데도 금방 와주셨어요. 다음에도 이용할게요!<br>★★★★★
									</p>
									<h4>
										<strong>나*진 </strong><i>마카롱 가게 주인</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="${contextPath}/resources/assets/img/client-face2.png"
										alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text" style="height: 250px; weight: 150px">
									<p>
										아이엄마도 만족한다네요. 잘 놀아주셔서 감사합니다.<br>★★★★★
									</p>
									<h4>
										<strong>이*구 </strong><i>웹 개발자</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="${contextPath}/resources/assets/img/client-face1.png"
										alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text" style="height: 250px; weight: 150px">
									<p>
										어머, 거기 당신... 이것까지 발견해버린 거야?<br> 후훗,,
									</p>
									<h4>
										<strong>이*재 </strong><i>신발가게 사장</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="${contextPath}/resources/assets/img/client-face2.png"
										alt="">
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Count area -->
	<div class="count-area">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>믿을 수 있는 고객님들의 선택</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-xs-12 percent-blocks m-main"
					data-waypoint-scroll="true" style="padding: 40px 0">
					<div class="row">
						<div class="col-sm-3 col-xs-6">
							<div class="count-item" style="padding: 20px">
								<div class="count-item-circle">
									<span class="pe-7s-users"></span>
								</div>
								<div class="chart" data-percent="5000">
									<h2 class="percent" id="counter">0</h2>
									<h5>분의 회원님들이 가입 하셨습니다.</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item" style="padding: 20px">
								<div class="count-item-circle">
									<span class="pe-7s-home"></span>
								</div>
								<div class="chart" data-percent="12000">
									<h2 class="percent" id="counter1">0</h2>
									<h5>세대에 선생님이 배치되었습니다.</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item" style="padding: 20px">
								<div class="count-item-circle">
									<span class="pe-7s-flag"></span>
								</div>
								<div class="chart" data-percent="120">
									<h2 class="percent" id="counter2">0</h2>
									<h5>개의 국가에서 이용 중입니다.</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item" style="padding: 20px">
								<div class="count-item-circle">
									<span class="pe-7s-graph2"></span>
								</div>
								<div class="chart" data-percent="5000">
									<h2 class="percent" id="counter3">5000</h2>
									<h5>개의 포토 후기가 있습니다.</h5>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- boy-sale area -->
	<div class="boy-sale-area">
		<div class="container">
			<div class="row">

				<div
					class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
					<div class="asks-first" style="height: 150px;">
						<div class="asks-first-circle">
							<span class="fa fa-search"></span>
						</div>
						<div class="asks-first-info">
							<h2>24시간 언제든 상담 가능!</h2>
							<p>직원들이 야근중이라 365일 24시간 통화상담이 가능합니다!</p>
						</div>
						<div class="asks-first-arrow">
							<a href="properties.html"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
					<div class="asks-first" style="height: 150px;">
						<div class="asks-first-circle">
							<span class="fa fa-usd"></span>
						</div>
						<div class="asks-first-info">
							<h2>탈세하고 싶나요?</h2>
							<p>쉿, 우리끼리만 알아요. 지금 바로 연락주세요!</p>
						</div>
						<div class="asks-first-arrow">
							<a href="properties.html"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<p class="asks-call">
						문의전화 : <span class="strong"> 042 254 2462</span>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>