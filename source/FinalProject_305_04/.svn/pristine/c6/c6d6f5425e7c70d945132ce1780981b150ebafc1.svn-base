<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<security:authentication property="principal" var="usrVOWrapper" />
<security:authentication property="principal.realUser" var="authUser" />
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<%-- ${userCertList } --%>
<!-- <hr> -->
${usrVO }
<hr>
${infoVO }
<!-- <hr> -->
<%-- ${usrVO.userRole } --%>
<!-- <hr> -->
<%-- ${authUser.userRole } --%>


<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>증명서 발급<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i>
			<strong>path1</strong> 
			<strong>path2</strong> 
			<strong>path3</strong>
			<strong>path4</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
	
		<!-- cont-box-inner -->
		<div class="cont-box-inner">

			<div class="title">
				<h3>기본 정보</h3>
			</div>

			<div class="tbl-wrap">
				<table class="tbl">
					<caption></caption>
					<colgroup>
						<col style="width: 150px;">
						<col style="width: auto;">
						<col style="width: 150px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">성명</th>
							<td>${usrVO.userNm }</td>
							<th scope="row">학번/사번</th>
							<td>${usrVO.userId }</td>
<!-- 							<th scope="row">사용자구분</th> -->
<%-- 							<td>${usrVO.userRole }</td> --%>
						</tr>
						
						
						<tr>
							<th scope="row">소속</th>
							<td>${infoVO.collVO.collNm } ${infoVO.majorVO.majorNm }</td>
							<th scope="row">상태</th>
							<td></td>
						</tr>
						
						
					</tbody>
				</table>
			</div>
		</div>
		<!--// cont-box-inner -->
			
		
		
		
		
		<!-- tob-box -->
		<div class="tob-box">
			<strong class="tit">증명서 발급 안내 </strong>
			<p><strong class="red-txt">발급 30일 이내</strong>의 증명서만 출력 가능합니다.</p>
		</div>
		<!-- // tob-box -->
		
	
	
		
		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>발급 가능 증명서</h3>
<!-- 				<span class="total"><em>1</em>건</span> -->
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 5%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 10%" />
						<col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">증명서</th>
							<th scope="col">발급 대상</th>
							<th scope="col">수수료</th>
							<th scope="col">발급</th>
						</tr>
					</thead>
					<tbody id="userInfo">
						<c:choose>
							<c:when test="${not empty userCertList }">
								<c:forEach items="${userCertList }" var="cert">
									<tr>
										<td>${cert.rnum }</td>
										<td>${cert.certNm }</td>
										<td>${cert.commDesc }</td>
										<td>${cert.certCharge }</td>
										<td>
											<button name="btnIssue" data-user-role="${authUser.userRole }" data-user-id="${usrVO.userId }" data-cert-charge="${cert.certCharge }" data-cert-nm="${cert.certNm }" data-cert-id="${cert.certId }" 
											type="button" class="btn btn-s purple" data-bs-toggle="modal" data-bs-target="#exampleModal">발급</button>
										</td>
									</tr>
						</c:forEach>
						</c:when>
						<c:otherwise></c:otherwise>
						</c:choose>
					</tbody>

				</table>
			</div>
			<!--end tbl-->
		
		</div>
		
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel"></h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn default" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn purple" id="btnPay" onclick="requestPay()">결제</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		
	</div>
</div>


<script>
	let userId;
	let certId;
	let certNm;
	let certCharge;
	let data;
	let userRole;
	let roleUrl;


	
// 	alert('${usrVO.userRole}');
	$('[name=btnIssue]').on('click', function(){
		userId = $(this).data('userId');
		certId = $(this).data('certId');
		certNm = $(this).data('certNm');
		certCharge = $(this).data('certCharge');
		userRole = $(this).data('userRole');
		
				
// 		console.log("유저아이디: " + userId);
// 		console.log($(this).data('certId'));
// 		console.log("증명서아이디 : " + certId + ", 증명서이름 : " + certNm);

		$('#exampleModalLabel').html(certNm + ' 발급');
		$('.modal-body').html(certCharge + '원을 결제 하시겠습니까?');
		delete data;
		
		data = {
			'userId' : userId,
			'certId' : certId,
			'certNm' : certNm,
			'certCharge' : certCharge
		};
	});
	

	
	const IMP = window.IMP;	// 생략 가능
	IMP.init("imp18573870");
		
	function requestPay() {
		IMP.request_pay({
			pg : 'kakaopay',
			pay_method : 'card',
			merchant_uid: userId + certId + new Date().getTime(),
			name : certNm,
			amount : certCharge,
// 			buyer_email : '',
// 			buyer_name : ,
// 			buyer_tel : '',
// 			buyer_addr : '',
// 			buyer_postcode : ''
		}, function (resp) {
			if(resp.success) {
				alert("결제가 완료되었습니다.");
				
// 				let resultData = {
// 					imp_uid: resp.imp_uid,	// 결제번호
// 					merchant_uid: resp.merchat_uid,	// 주문번호
// 					certId: certId,
// // 					userId: userId,
// 					certDate: getFormatDate(new Date())
// 				};
				if(userRole == 'ROLE_STD') {
					roleUrl = '/student/certificateBox';
				} else if(userRole == 'ROLE_PRF') {
					roleUrl = '/prof/certificateBox';
				} else if(userRole == 'ROLE_EMP') {
					roleUrl = '/prof/certificateBox';
				}
				
				$.ajax({
					url : "${pageContext.request.contextPath}/campus/certificateBox",
					method : "post",
					contentType : "application/json;charset=UTF-8",
					data : JSON.stringify(data),
					dataType : "json",
					success : function(resp) {
						console.log("됩니까???", resp);
						location.href = "https://localhost" + roleUrl;
					},
					error : function(jqXHR, status, error) {
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});
				let msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + resp.paid_amount;
				
			} else {
				console.log(resp);
				let msg = '결제에 실패하였습니다.';
				msg += '에러 내용 : ' + resp.error_msg;
			}
		});
	}

	


</script>
	
