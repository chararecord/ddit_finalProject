<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			'<span id = userNm>${attendVO[0].userNm }</span>' 학생의 출결 현황 및 관리하기 (교수)
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>path1</strong>
			<strong>path2</strong> <strong>path3</strong> <strong>path4</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
		<div class="cont-box-inner">
			<div class="title">
				<h3>${attendVO[0].semeYear}년도 ${attendVO[0].seme}학기 
					'${attendVO[0].lectNm}'</h3>
				<div class="box-btn">
					<tr>총 결석일</tr>
					<tr>나중에 카운트 해서 넣어주기</tr>
				</div>
			</div>

			<div class="tob-box">
				<strong class="tit">출결 안내사항 </strong> <br>
				<p>한 학기는 총 16주로 구성됩니다.</p>
				<br>
				<p>(1) 지각/조퇴 3회는 결석 1회로 산정합니다.</p>
				<p>(2) 공결로 인한 출석 인정 기간 : 모든 공결 사유를 합하여 출석 인정 기간은 수업일수의 1/3 이내만
					가능합니다.</p>
				<p>(3) 지각 : 입실 시간으로부터 10분 경과 후 입실시 지각으로 처리합니다.</p>
				<p>(4) 결석: 입실 시간으로부터 30분 경과 후 입실시 결석으로 처리합니다.</p>
			</div>

		</div>
		
		<div class="table-scrollable">
			<div class="table-responsive">

				<table class="tbl">
					<colgroup>
						<col style="width: 10%">
						<col style="width: 15%">
						<col style="width: 10%">
						<col style="width: 20%">
					</colgroup>

					<thead class="">
						<tr class="table-scrollable__fixed-y">
							<th>주차</th>
							<th>날짜</th>
							<th>출결 상태</th>
							<th>출결 하기</th>
						</tr>
					</thead>

					<tbody>
									
									
						<c:set var="profAttendManage" value="${attendVO }" />
						<c:choose>
							<c:when test="${not empty profAttendManage }">
								<c:forEach items="${profAttendManage }" var="attendManage"
									varStatus="status">
									<tr>
										<td id ="attnedId" hidden="true">${attendManage.attendId }</td>
										<th scope="row">${status.count }주차</th>
										<td>${attendManage.attendDate }</td>
										<td id="attendState">${attendManage.attendStat }</td>
										<td>
											<!-- 라디오버튼 -->
											<div class="rc-wrap">
												<div class="rc-inner">
													<input type="radio" id="rdo_attend${status.index}" name="radio-group"
														checked=""> 
														<label for="rdo_attend${status.index}">출석</label>
												</div>
												<div class="rc-inner">
													<input type="radio" id="rdo_absence${status.index}" name="radio-group"
														checked=""> 
														<label for="rdo_absence${status.index}">결석</label>
												</div>
												<div class="rc-inner">
													<input type="radio" id="rdo_late${status.index}" name="radio-group"
														checked=""> 
														<label for="rdo_late${status.index}">지각</label>
												</div>
												<div class="rc-inner">
													<input type="radio" id="rdo_leave${status.index}" name="radio-group"
														checked=""> 
														<label for="rdo_leave${status.index}">조퇴</label>
												</div>
												<div class="rc-inner">
													<input type="radio" id="rdo_excused${status.index}" name="radio-group"
														checked=""> 
														<label for="rdo_excused${status.index}">공결</label>
												</div>
												<button id="checkBtn" onclick="f_checkBtn()" type="button" class="btn btn-s purple">확인</button>
											</div> 
											<!-- // 라디오버튼 -->
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<td colspan="3">아직 강의 전 입니다.</td>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


<script>
function f_checkBtn(attendState){
	var checkedValue = $("input[name='radio-group']:checked");
	var attendStat = checkedValue.next().text();
	var userNm = $("#userNm").text();
	var attendId = $("#attnedId").text();
	console.log(attendId);
	var data = {
			"attendId" : attendId,
 			"attendStat" : attendStat,
			"userNm" : userNm
	};
	 if(confirm(attendStat+ "로 처리하시겠습니까?") == true){
		 console.log(userNm);
		 console.log("data : ",data);
		 $.ajax({
			url : "<%=request.getContextPath()%>/prof/lectroom/profAttendManage",
			method : "post",
			data : JSON.stringify(data),
			contentType : "application/json;charset=UTF-8",
			dataType : "json",
			success : function(resp) {
// 					console.log(resp);
					$("#attendState").html(resp.attendStat);
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	        
 		alert("처리 완료");
	  var e = $("attendState").val();
	    }
	    else{
	    	alert("취소하였습니다.");
	    }
}





</script>
