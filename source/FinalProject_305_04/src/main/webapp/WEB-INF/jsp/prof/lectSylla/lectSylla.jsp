<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="cont">
	<!-- cont-title -->
	<div class="cont-title">
		<h2>강의 계획서 등록<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
		<div class="tab-wrap">
		    <!-- tablist  -->
			<ul class="tabs tab-1dep" role="tablist">
				<li class="tabMenu on" data-tab="lectSyllaBasic"><a class="tabs" href="#" id="">기본사항 작성</a></li>
				<li class="tabMenu" data-tab="lectSyllaDetail"><a class="tabs" href="#" id="">세부사항 작성</a></li>
				<li class="tabMenu" data-tab="lectTime"><a class="tabs" href="#" id="">시간표 선택</a></li>
			</ul>
			<!--  // tablist  -->	
		</div>
		<div class="cont-box-inner">
			<div class="title">
				<h3>강의 기본사항</h3>
				<div class="box-btn">
					<button type="button" class="btn purple">제출</button>
				</div>
			</div>
	
		<!--tbl-->
		<div class="tbl-wrap">
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
							<th scope="row">학사년도</th>
							<c:set var="semeList" value="${semesterVO }" />
							<td>
							<c:choose>
								<c:when test="${not empty semeList }">
								<select id="selSemeYear">
									<c:forEach items="${semeList }" var="semYear">
									<option>${semYear.semeYear }</option>
									</c:forEach>
								</select>
								</c:when>
							</c:choose>
							</td>
							<th scope="row">학기</th>
							<td>
								<select id="selSeme">
									<option value="1">1학기</option>
									<option value="2">2학기</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">대상학년</th>
							<td>
								<select id="selCamYear">
									<option value="1">1학년</option>
									<option value="2">2학년</option>
									<option value="3">3학년</option>
									<option value="4">4학년</option>
								</select>
							</td>
							<th scope="row">학점</th>
							<td>
								<select id="selCredit">
									<option value="2">2학점</option>
									<option value="3">3학점</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">과목 목록</th>
							<td>
								<select id="selSubMajor">
									<c:set var="subMajorList" value="${subMajorVO }" />
									<c:choose>
									<c:when test="${not empty subMajorList }">
									<c:forEach items="${subMajorList }" var="subMajor">
										<option>${subMajor.subjectNm }</option>
									</c:forEach>
									</c:when>
									</c:choose>
								</select>
							</td>
							
							<th scope="row">이수구분</th>
							<td>
								<select id="selCommDesc">
									<option value="MJ01">전공필수</option>
									<option value="MJ02">전공선택</option>
									<option value="GE01">교양필수</option>
									<option value="GE02">교양선택</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">강의명</th>
							<td><input type="text" id="input1" class="w50"></td>
							<th scope="row">대면여부</th>
							<td>
								<select id="selCredit">
									<option value="ONLINE">대면</option>
									<option value="OFFLINE">비대면</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--end tbl-->
		    
		<div class="title"><h3>세부사항 작성</h3></div>
		
		<!--tbl-->
		<div class="tbl-wrap">
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
							<th scope="row" colspan="2">수업개요</th>
							<td colspan="4"><input type="text" id="input1" class="w100"></td>
						</tr>
						<tr>
							<th scope="row" colspan="2">교재</th>
							<td colspan="4"><input type="text" id="input1" class="w100"></td>
						</tr>
						<tr>
							<th scope="row" colspan="2">최대정원</th>
							<td colspan="4"><input type="text" id="input1" class="w50">명</td>
	
						</tr>
						<tr>
							<th scope="row" colspan="2">평가방법(%)</th>
							<td align="center">중간고사<br> <input type="text" id="midTest" class="w50">%</td>
							<td align="center">기말고사<br> <input type="text" id="finTest" class="w50">%</td>
							<td align="center">과제<br> <input type="text" id="assign" class="w50">%</td>
							<td align="center">출결<br> <input type="text" id="attend" class="w50">%</td>
						</tr>
					</tbody>
				</table>
				<div class="scorePer"></div>
			</div>
		</div>
		<!--end tbl-->
		
		<div class="title"><h3>강의 계획</h3></div>
		<div class="tbl-wrap">
			<table class="tbl tbl-rowGrid">
				<caption></caption>
				<colgroup>
					<col style="width: 280px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">1주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week1" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">2주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week2" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">3주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week3" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">4주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week4" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">5주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week5" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">6주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week6" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">7주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week7" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">8주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week8" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">9주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week9" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">10주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week10" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">11주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week11" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">12주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week12" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">13주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week13" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">14주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week14" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">15주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week15" class="w100">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">16주차</th>
						<td>
							<div class="display-tbl">
								<div class="display-tblCell">
									<input type="text" id="week16" class="w100">
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		
		<div class="title"><h3>시간표</h3></div>
		<c:set var="buildList" value="${buildingVO }" />
			<td>
			<select id="selBuild">
				<option value>==건물==</option>
			<c:choose>
				<c:when test="${not empty buildList }">
				<c:forEach items="${buildList }" var="build">
				<option value="${build.buildId }">${build.buildNm }</option>
				</c:forEach>
				</c:when>
			</c:choose>
			</select>
			</td>
		
		<select id="selLectRoom">
			<option>==강의실==</option>
		</select>
	</div>
</div>

<script>
	// 탭메뉴 선택 변경
	let tabList =  document.querySelectorAll('.tab-wrap .tabs li');
	for(var i = 0; i < tabList.length; i++){
		tabList[i].querySelector('.tabs').addEventListener('click', function(e){
			e.preventDefault();
			for(var j = 0; j < tabList.length; j++){
				tabList[j].classList.remove('on');
			}
			this.parentNode.classList.add('on');
			// console.log(this.parentNode);
			var tab = this.parentNode.dataset['tab'];
			console.log(tab);
			
// 			$.ajax({
// 				data : tab,
// 				dataType : "text",
// 				success : function(resp) {
// 					console.log(resp);
// // 					$('.white-box').html(data);
// 				},
// 				error : function(jqXHR, status, error) {
// 					console.log(jqXHR);
// 					console.log(status);
// 					console.log(error);
// 				} 
// 			});	
		})
	}
	// 탭메뉴 선택 변경 끝
	
	
	// 건물, 강의실 셀렉트박스 변경
	$("#selBuild").on("change", function(){
		let selBuild = $(this).val();
// 		console.log("selBuild : " + selBuild);
		let data = {"buildId":selBuild};
		
		//*** 시큐리티 사용 시 token처리 필요
		$.ajax({
			url:"${pageContext.request.contextPath}/prof/selectLectRoomList",
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(data),
			dataType:"json",
			type:"post",
			success:function(result){
				/* 결과 확인용
				result : [{"lectRoomId":"DF10001","buildId":"CA10001","roomNum":"301","numPpl":30},
					{"lectRoomId":"DF10002","buildId":"CA10001","roomNum":"502","numPpl":50}]
				*/
// 				console.log("result : " + JSON.stringify(result));
				//result : List<LectRoomVO>
				$("#selLectRoom").html("");//초기화
			
				$.each(result,function(index,lectRoomVO){
					console.log("lectRoomId : " + lectRoomVO.lectRoomId + ", roomNum : " + lectRoomVO.roomNum);
					$("#selLectRoom").append("<option value='"+lectRoomVO.lectRoomId+"'>" + lectRoomVO.roomNum + "호" + "</option>");
				});
			}
		});
	});
	// 건물, 강의실 셀렉트박스 변경 끝
	
	
	// 성적 평가 퍼센트 출력
// 	let midPer = $("#midTest").val();
// 	let finPer = $("#finTest").val();
// 	let asgnPer = $("#assign").val();
// 	let atndPer = $("#attend").val();
	
// 	if(midPer + finPer + asgnPer + atndPer > 100){
// 		$("#scorePer").innerHTML = '총 성적 비율은 100%를 넘을 수 없습니다.'	
// 	}
	
	// 성적 평가 퍼센트 출력 끝
</script>