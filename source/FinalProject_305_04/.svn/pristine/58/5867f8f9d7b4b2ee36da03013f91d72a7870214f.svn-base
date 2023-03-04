<%@page import="kr.or.ddit.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor/ckeditor.js"></script>
<form:form id="updateForm" modelAttribute="empInfo" enctype="multipart/form-data" method="post">
<form:hidden path="empId"/>
<form:hidden path="userId"/>
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			교수정보관리
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i><strong>학생관리</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">



		<!-- cont-box-inner -->
		<div class="cont-box-inner">

			<div class="title">
				<h3>개인 정보</h3>
				<div class="box-btn">
					<form:button type="submit" class="btn btn-success purple">저장</form:button>
				</div>
			</div>


			<!--  "photo-wrap"-->
			<div class="photo-wrap">
			   <div class="photo">
			      <div class="photo-inner"><img src="/resources/images/star.png" alt="프로필사진"></div>
			      <button type="button" class="btn" style="background-color:gray">사진등록</button>
			   </div>

				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름<em class="red-txt asterisk">*</em></th>
								<td>
									<form:input path="userNm" type="text" cssClass="form-control" />
									<form:errors path="userNm" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">영문이름<em class="red-txt asterisk">*</em></th>
								<td>
									<form:input path="userNmEn" type="text" cssClass="form-control" />
									<form:errors path="userNmEn" element="span" cssClass="text-danger" />
								</td>
								
								<th scope="row">주민번호</th>
								<td>
									<div class="flex">
										<form:input path="userRrn1" type="text" cssClass="form-control" class="w10" />
										<span class="cal-dash"></span>
										<form:input path="userRrn2" type="text" cssClass="form-control"  class="w10" />
										<form:errors path="userRrn1" element="span" cssClass="text-danger" />
										<form:errors path="userRrn2" element="span" cssClass="text-danger" />
									</div>
								</td>

							</tr>
							<tr>

								<th scope="row">생년월일</th>
								<td>
									<form:input path="userBir" type="date" cssClass="form-control" />
									<form:errors path="userBir" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">국적</th>
								<td>
									<form:input path="userNtl" type="text" cssClass="form-control" />
									<form:errors path="userNtl" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">성별</th>
								<td>
									<form:input path="userGender" type="text" cssClass="form-control" />
									<form:errors path="userGender" element="span" cssClass="text-danger" />
								</td>

							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td>
									<form:input path="userPost" type="text" cssClass="form-control" />
									<form:errors path="userPost" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">주소</th>
								<td>
									<form:input path="userAddr" type="text" cssClass="form-control" />
									<form:errors path="userAddr" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">상세주소</th>
								<td>
									<form:input path="userDetailAddr" type="text" cssClass="form-control" />
									<form:errors path="userDetailAddr" element="span" cssClass="text-danger" />
								</td>
								
							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<!--   // "photo-wrap"-->

		</div>
		<!--  // cont-box-inner -->





		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>학적 정보</h3>
<!-- 				<span class="total"><em>1</em>건</span> -->
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
					</colgroup>

					<tbody>
						<tr>
							<th scope="row">사번<em class="red-txt asterisk">*</em></th>
							<td>${empInfo.empId }</td>			
							<th scope="row">비밀번호<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="userPass" type="text" cssClass="form-control" />
								<form:errors path="userPass" element="span" cssClass="text-danger" />
							</td>			
							
							<th scope="row">연락처<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="userPhone" type="text" cssClass="form-control" />
								<form:errors path="userPhone" element="span" cssClass="text-danger" />
							</td>	
							
						</tr>
						<tr>
							<th scope="row">건물<em class="red-txt asterisk">*</em></th>
							<c:set var="commList" value="${commVO }" />
							<td>
							<select id="selComm" name="commList.commDesc" class="w100">
								<option value>건물</option>
							<c:choose>
								<c:when test="${not empty commList }">
									<c:forEach items="${commList }" var="commName">
									<option value="${commName.commId }" >${commName.commDesc }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>
							<th scope="row">사무실<em class="red-txt asterisk">*</em></th>
							<td>
								<select id="selBuild" name="buildId" class="w100">
									<option value="${empInfo.buildVO.buildId }" selected>${empInfo.buildVO.buildNum}</option>
								</select>
							</td>
							<th scope="row">이메일<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="userEmail" type="text" cssClass="form-control" />
								<form:errors path="userEmail" element="span" cssClass="text-danger" />
							</td>	


						</tr>
						<tr>
							<th scope="row">부서<em class="red-txt asterisk">*</em></th>
							<c:set var="deptList" value="${deptVO }" />
							<td>
							<select id=selDept name="deptId" class="w100" onchange="f_deptTel(this)">
								<option value>부서</option>
							<c:choose>
								<c:when test="${not empty deptList }">
									<c:forEach items="${deptList }" var="deptName">
									<option value="${deptName.deptId }" data-deptTel="${deptName.deptTel }" selected>${deptName.deptNm }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>							
							<th scope="row">부서연락처</th>
							<td>
								<span id="deptTel"></span>
							</td>				
							
							
							<th scope="row">직책<em class="red-txt asterisk">*</em></th>
							<c:set var="posList" value="${commVOPos }" />
							<td>
							<select id="selPos" name="pos" class="w100">
								<option value>직책</option>
							<c:choose>
								<c:when test="${not empty posList }">
									<c:forEach items="${posList }" var="posName">
									<option value="${posName.commId }" selected>${posName.commDesc }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>						
						</tr>
						<tr>					
							<th scope="row">입사일<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="entDate" type="date" cssClass="form-control" />
								<form:errors path="entDate" element="span" cssClass="text-danger" />
							</td>	
							<th scope="row">퇴사일</th>
							<td>
								<form:input path="levDate" type="date" cssClass="form-control" />
								<form:errors path="levDate" element="span" cssClass="text-danger" />
							</td>			
							<th scope="row"></th>
							<td>-</td>	
						</tr>			
						<tr>
							<th scope="row">은행</th>
							<td>
								<form:input path="userBank" type="text" cssClass="form-control" />
								<form:errors path="userBank" element="span" cssClass="text-danger" />
							</td>
							<th scope="row">예금주</th>
							<td>
								<form:input path="userAcctHd" type="text" cssClass="form-control" />
								<form:errors path="userAcctHd" element="span" cssClass="text-danger" />
							</td>
							<th scope="row">계좌번호</th>
							<td>
								<form:input path="userAcctNo" type="text" cssClass="form-control" />
								<form:errors path="userAcctNo" element="span" cssClass="text-danger" />
							</td>	
						</tr>	
					</tbody>

				</table>
			</div>
			<!--end tbl-->

		</div>
	</div>
<!--   // "전체-wrap"-->
</div>
</form:form>

<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script>

	//다음 우편번호 검색
	function openHomeSearch() {
		new daum.Postcode({
			oncomplete: function(data) {
				$('[name=userPost]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=userAddr]').val(data.address);
				$('[name=userDetailAddr]').val(data.buildingName);
			}
		}).open();
	}

	
	// 건물 연구실 셀렉트박스 변경
	$("#selComm").on("change", function(){
		let selComm = $(this).val(); //선택값을 selComm에 저장한다.
		let data = {"commId":selComm}; //json방식으로 하기 위해 이걸 적어줌.
		
		//selComm : CA10003
		console.log("selComm : " + selComm);
		//data : {"commId":"CA10003"}
		console.log("data : " + JSON.stringify(data));
		
		//*** 시큐리티 사용 시 token처리 필요
		$.ajax({
			url:"${pageContext.request.contextPath}/emp/selectBuildingNumList2",
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(data), //마샬링, 직렬화
			dataType:"json",
			type:"post",
			success:function(result){
				console.log("result : " + JSON.stringify(result));
				
				$("#selBuild").html("");//초기화
				$("#selBuild").append("<option value>" + "호실선택" + "</option>");
				$.each(result,function(index, buildList){
					let option = $("<option>").attr({value:buildList.buildId}).html(buildList.buildNum)
								.prop("selected","${empInfo.buildVO.buildId}"==buildList.buildId);
					$("#selBuild").append(option);
				});
			}
		});
	}).val("${empInfo.commVO.commId}");
	// 건물 연구실 셀렉트박스 변경


	
	
	//부서 전화번호
	function f_deptTel(sel){
// 		console.log("this:", sel);
// 		console.log("index", sel.selectedIndex);
// 		console.log("selectbox", sel.options[sel.selectedIndex]);
		console.log("값!", sel.options[sel.selectedIndex].dataset.depttel); //전화번호 나옴
		
		document.querySelector("#deptTel").innerHTML = sel.options[sel.selectedIndex].dataset.depttel;
		
	}
		

	//form:form의 아이디
	let updateForm = $("#updateForm");
	
</script>














