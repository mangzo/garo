<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<!-- 	<script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script type="text/javascript">
			//다음 도로명주소 API
			function execDaumPostcode() { 
				new daum.Postcode({
				    oncomplete: function(data) {
				      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				      // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				      var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				        extraRoadAddr += data.bname;
				      }
				      // 건물명이 있고, 공동주택일 경우 추가한다.
				      if(data.buildingName !== '' && data.apartment === 'Y'){
				        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				      }
				      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				      if(extraRoadAddr !== ''){
				        extraRoadAddr = ' (' + extraRoadAddr + ')';
				      }
				      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				      if(fullRoadAddr !== ''){
				        fullRoadAddr += extraRoadAddr;
				      }

				      // 우편번호와 주소 정보를 해당 필드에 넣는다.
				      document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
				      document.getElementById('addr').value = fullRoadAddr;
				      document.getElementById('addr').value = data.jibunAddress;
					  
				      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				      if(data.autoRoadAddress) {
				        //예상되는 도로명 주소에 조합형 주소를 추가한다.
				        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				        document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

				      } else if(data.autoJibunAddress) {
				          var expJibunAddr = data.autoJibunAddress;
				          document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				      } else {
				          document.getElementById('guide').innerHTML = '';
				      }
				    }
				  }).open();
				}
		
			
			$(document).ready(function () {
				 $("#birth").datepicker({
		                dateFormat: 'yy-mm-dd' //Input Display Format 변경
		                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		                ,changeYear: true //콤보박스에서 년 선택 가능
		                ,changeMonth: true //콤보박스에서 월 선택 가능                
		                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
		                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
		                ,minDate: "-100y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		                ,maxDate: "+1d" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)         
		                ,yearRange: 'c-100:c+1', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
		            });
				 $(document).on("keyup","input:text[numberOnly]",function(){
						$(this).val( $(this).val().replace(/[^0-9]/gi,"") );
					});
				 function phone2_lengthchk(code){
						if(code.value.length==4){
							var phone3 = document.getElementById("phone3");
							phone3.focus();
						}
					}
// 				function email_check(email) {
// 					var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
// 					return reg.test(email);
// 				 }
// 				var email = $("#mem_email").val();
// 		 		if(!email_check(email)){
// 			 		alert("이메일 형식에 맞게 입력해주세요");
// 			 		return false;
// 				}
		 		$('#idchk').on("click",function(){
		 			var id = $('#cmp_id').val();
		 			if($('#cmp_id').val()==""){
		 				alert("id를 입력해주세요");
		 				return;
		 			}else{
		 				$.ajax({
		 					type:'Post',
		 					data:"cmp_id="+id,
		 					datatype:'json',
		 					url : '${contextPath}/company/idConfirm',
		 					success : function(data){
		 						if(data>0){
		 							alert("이미 사용 중인 아이디입니다.");
		 							$('#id').val('');
		 							return;
		 						}else{
		 							alert("사용가능합니다.");
		 							$('#idconfirmchk').attr("value","yes");
		 						}
		 					},
		 					error : function(xhr,status,error){
		 						alert("code:"+xhr.status+"\n"+"message:"+xhr.responseText+"\n"+"error:"+error);
		 					}
		 				});
		 			}
		 		});
		 		function fn_overlapped(){
		 		    var _id=$("#_company_id").val();
		 		    if(_id==''){
		 		   	 alert("ID를 입력하세요");
		 		   	 return;
		 		    }
		 		    $.ajax({
		 		       type:"post",
		 		       async:false,  
		 		       url:"${contextPath}/company/overlapped.do",
		 		       dataType:"text",
		 		       data: {id:_id},
		 		       success:function (data,textStatus){
		 		          if(data=='false'){
		 		       	    alert("사용할 수 있는 ID입니다.");
		 		       	    $('#btnOverlapped').prop("disabled", true);
		 		       	    $('#_company_id').prop("disabled", true);
		 		       	    $('#company_id').val(_id);
		 		          }else{
		 		        	  alert("사용할 수 없는 ID입니다.");
		 		          }
		 		       },
		 		       error:function(data,textStatus){
		 		          alert("에러가 발생했습니다.");ㅣ
		 		       },
		 		       complete:function(data,textStatus){
		 		          //alert("작업을완료 했습니다");
		 		       }
		 		    });  //end ajax	 
		 		 }	
		 		var jbOffset = $( '.jbMenu' ).offset();
		 	    $( window ).scroll( function() {
		 	      if ( $( document ).scrollTop() > jbOffset.top ) {
		 	        $( '.jbMenu' ).addClass( 'jbFixed' );
		 	      }
		 	      else {
		 	        $( '.jbMenu' ).removeClass( 'jbFixed' );
		 	      }
		 	    });
			});
		/* 	
			function YnCheck(obj) {
				var checked = obj.checked;
				if(cheked){
					obj.value="Y";
				}else{
					obj.value="N";
				}
			};
			var checkYn="${data.checkYn}";
			if(checkYn=="Y"){
				$("#checkYn").prop("checked",true);
			}else{
				$("#checkYn").prop("checked",false);
			}
			
			if($("#checkYn").is('checked') == true){
				data.set("checkYn","Y");
			}else{
				data.set("checkYn","N");
			} */
			
			
			</script>
			
	</head>
<body>
		<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"> 회원가입페이지</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 

                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="${contextPath}/company/addCompany" method="post">                        
                                <div class="wizard-header">
                                <br>
                                    <h2>
                                        <b>&nbsp;기 업 회 원&nbsp;</b>
                                    </h2>
                                </div>
								<input type="submit" style="display: none" id="requirechk" name="requirechk">
								<div class="clear">
                                <br>
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>아이디 <button type="button" onclick="id_overlap_check()">중복테스트</button></label>
                                        <input name="cmp_id" type="text" class="form-control"  placeholder="id" required >
                                    </div>
                                    <div class="form-group">
                                        <label>회사명</label>
                                        <input name="name" type="text" class="form-control" placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                        <input name="pwd" type="password" class="form-control" placeholder="">
                                    </div>
                                     <div class="form-group">
                                        <label>비밀번호 확인</label>
                                        <input name="pwd_check" type="password" class="form-control" placeholder="">
                                    </div>
                                </div> 
                                </div> 
 
                   			 <div class="clear">
                                <br>
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                   
                                     <div class="form-group">
                                        <label>회사 이메일</label>
                                        <input name="cmp_email" type="text" class="form-control" placeholder="test@test.com">
                                    </div>
                                     <div class="form-group">
                                        <label>회사 사이트</label>
                                        <input name="site" type="text" class="form-control" placeholder="www.company.com">
                                    </div>
                                    <div class="form-group">
                                    <div class="join_title" style="width: 40%">
										<label>전화번호</label>
									</div>
									<div class="col-sm-3">
										<select id="office_no1" name="office_no1" class="form-control"> 
									    	<option value="010" selected>010</option>
									    	<option value="011">011</option>
									    	<option value="012">012</option>
									    	<option value="016">016</option>
									    	<option value="017">017</option>
									    	<option value="018">018</option>
									    	<option value="019">019</option>
									    </select>
									</div>
									<div class="col-sm-3">
										<input class="form-control input-sm" maxlength="4"id="office_no2" name="office_no2" numberonly="true" 
										required="required" onkeyup="phone2_lengthchk(this)" type="text" placeholder="office_no2">
									</div>
									<div class="col-sm-3">
										<input class="form-control input-sm" maxlength="4"id="office_no3" name="office_no3" numberonly="true" 
										required="required" type="text" placeholder="office_no3">
									</div>
									</div>
								</div>
                                  
                                </div>  
                                
                         	<div class="clear">
                                <br>
                                <hr>
                                <br>
                                <div class="col-sm-5 col-sm-offset-1">
                                   <div class="form-group">
								
									<p>
										<label>우편번호<a href="javascript:execDaumPostcode()">우편번호검색</a></label> <input type="text" id="zipcode" name="zipcode" class="form-control" placeholder="">
										<label>주소:</label> <input type="text" id="addr"name="addr" class="form-control" placeholder="">
										<label> 나머지 주소:</label> <input type="text"name="addr_detail" class="form-control" placeholder="" />
										<!--   <span id="guide" style="color:#999"></span> -->
									</p>
									</div>
                           		</div>  
							</div>
                            <div class="clear">
                                <br>
                                <hr>
                               
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group" style="padding: 10px 0 0; margin: 10px 0 0;width: 500px;">
                                     <label>제공하는 서비스</label>
                                     <br>
                                     <div class="col-sm-5">
										<select id="service" name="service" class="form-control"> 
									    	<option value="move" selected>이동지원</option>
									    	<option value="food">식사지원</option>
									    	<option value="house">주거편의</option>
									    </select>
									</div>
                                     <br>
                                    
									</div>
                                </div>
 
                            </div>
								
						<div style="display:none;"><input id="grade" name="grade" type="hidden" value="1" /></div>
						</div>
					 	<div class="col-sm-offset-4 col-sm-4" style="text-align:center;margin-top:10px;margin-bottom: 80px">
							<button class="btn" type="submit" id="companysave" name="companysave">회원가입</button>
							<button class="btn" type="button" onclick="history.back();">돌아가기</button>
						
						</div>
						
                    </form>
                  </div>
                        <!-- End submit form -->
               </div> 
             </div>
          </div>
  
   	</body>