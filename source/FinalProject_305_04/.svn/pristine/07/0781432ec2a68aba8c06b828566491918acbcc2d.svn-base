<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!-- 카카오 주소 API -->
<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- 카카오 주소 API -->

<form:form modelAttribute="profInfo" enctype="multipart/form-data" method="post">

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
				<div class="title">
					<div class="box-btn">
						<form:button type="submit" class="btn purple">등록</form:button>
					</div>
				</div>				
			</div>				


			<div class="photo-wrap">
				<!--  "photo-wrap"-->
				
			   <div class="photo uploadImg">
			      <div class="photo-inner">
			      	<img id="preview" alt="프로필사진" onclick="popImage(this.src)">
			      </div>
<!-- 			      <input type="file" name="stuFiles" /> -->
<!-- 			      <input type="file" name="stuFiles" /> -->
					<div class="filebox">
				      <input type="file" name="files" class="btn upload-hidden" style="background-color:gray">
					</div>
			   </div>
				

				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 10%;">
							<col style="width: 20%;">
							<col style="width: 10%;">
							<col style="width: 20%;">
							<col style="width: 10%;">
							<col style="width: 20%;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름<em class="red-txt asterisk">*</em></th>
								<td><form:input path="userNm" type="text" cssClass="form-control"  />
						        <form:errors path="userNm" element="span" cssClass="text-danger" /></td>
								<th scope="row">영문이름<em class="red-txt asterisk">*</em></th>
								<td><form:input path="userNmEn" type="text" cssClass="form-control"  />
						        <form:errors path="userNmEn" element="span" cssClass="text-danger" /></td>
						        
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
						        
							
							<tr>
								<th scope="row">생년월일</th>
								<td><form:input path="userBir" type="date" cssClass="form-control"  />
						        <form:errors path="userBir" element="span" cssClass="text-danger" /></td>
								<th scope="row">국적</th>
								<td><form:input path="userNtl" type="text" cssClass="form-control"  />
						        <form:errors path="userNtl" element="span" cssClass="text-danger" /></td>
								<th scope="row">성별</th>
								<td><form:input path="userGender" type="text" cssClass="form-control"  />
						        <form:errors path="userGender" element="span" cssClass="text-danger" /></td>
								
							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td>
	                            <div class="search-wrap flex">
	                                <input id="sample6_postcode" name="userPost" type="text" value="" >
	                                <button type="button" class="btn btn-line x-small" onclick="openHomeSearch()"> <i class="bi bi-search"><span class="sr-only">검색</span></i></button>
							        <form:errors path="userPost" element="span" cssClass="text-danger" />
                                </div>
                                </td>
						        
								<th scope="row">주소</th>
								<td><form:input path="userAddr" type="text" id="sample6_address" cssClass="form-control" name="addr2" />
						        <form:errors path="userAddr" element="span" cssClass="text-danger" /></td>
						        
								<th scope="row">상세주소</th>
								<td><form:input path="userDetailAddr" type="text" id="sample6_detailAddress" cssClass="form-control" name="addr3" />
						        <form:errors path="userDetailAddr" element="span" cssClass="text-danger" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<!--  // cont-box-inner -->





		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>학적 상세정보</h3>
<!-- 				<span class="total"><em>1</em>건</span> -->
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
						<col style="width: 20%;">
					</colgroup>

					<tbody>
						<tr>
							<th scope="row">교번<em class="red-txt asterisk">*</em></th>
							<td><form:input path="profId" type="text" cssClass="form-control"  />
					        <form:errors path="profId" element="span" cssClass="text-danger" /></td>
					        <th scope="row">비밀번호<em class="red-txt asterisk">*</em></th>
							<td><form:input path="userPass" type="text" cssClass="form-control"  />	
							<form:errors path="userPass" element="span" cssClass="text-danger" /></td>
					        <th scope="row">건물<em class="red-txt asterisk">*</em></th>
							<c:set var="commList" value="${commVO }" />
							<td>
							<select id="selComm" name="commId" class="w100">
								<option value>연구실건물</option>
							<c:choose>
								<c:when test="${not empty commList }">
									<c:forEach items="${commList }" var="commName">
									<option value="${commName.commId }">${commName.commDesc }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>
						</tr>
						<tr>
							<th scope="row" class="w100">단과대학<em class="red-txt asterisk">*</em></th>
							<c:set var="collList" value="${collVO }" />
							<td>
							<select id="selColl" class="w100">
								<option value>단과대학</option>
							<c:choose>
								<c:when test="${not empty collList }">
									<c:forEach items="${collList }" var="callName">
									<option value="${callName.collId }">${callName.collNm }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>
							<th scope="row">학과<em class="red-txt asterisk">*</em></th>
							<td>
								<select id="selMajor" name="majorId" class="w100">
									<option value>학과</option>
								</select>
							</td>
							

							<th scope="row">연구실<em class="red-txt asterisk">*</em></th>
							<td>
								<select id="selBuildingNum" name="laboId" class="w100">
									<option value>연구실</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">연구실 전화</th>
							<td><form:input path="laboList.laboTel" type="text" cssClass="form-control" />
					        <form:errors path="laboList.laboTel" element="span" cssClass="text-danger" /></td>
					        
							<th scope="row">연락처</th>
							<td><form:input path="userPhone" type="text" cssClass="form-control"  />
					        <form:errors path="userPhone" element="span" cssClass="text-danger" /></td>
					        
							<th scope="row">직책</th>
							<c:set var="posList" value="${commVOPos }" />
							<td>
							<select id="selPos" name="pos" class="w100">
								<option value>직책</option>
							<c:choose>
								<c:when test="${not empty posList }">
									<c:forEach items="${posList }" var="posName">
									<option value="${posName.commId }">${posName.commDesc }</option>
									</c:forEach>
								</c:when>
							</c:choose>
							</select>
							</td>
						</tr>
						<tr>
							<th scope="row">입사일<em class="red-txt asterisk">*</em></th>
							<td><form:input path="entDate" type="date" cssClass="form-control"  />
					        <form:errors path="entDate" element="span" cssClass="text-danger" /></td>
							<th scope="row">퇴사일</th>
							<td><form:input path="levDate" type="date" cssClass="form-control"  />
					        <form:errors path="levDate" element="span" cssClass="text-danger" /></td>
							<th scope="row">이메일<em class="red-txt asterisk">*</em></th>
							<td><form:input path="userEmail" type="text" cssClass="form-control"/>
					        <form:errors path="userEmail" element="span" cssClass="text-danger"/></td>
						</tr>
						<tr>
							<th scope="row">은행</th>
							<td><form:input path="userBank" type="text" cssClass="form-control"  />
							<form:errors path="userBank" element="span" cssClass="text-danger" /></td>
							<th scope="row">예금주</th>
							<td><form:input path="userAcctHd" type="text" cssClass="form-control"  />	
					        <form:errors path="userAcctHd" element="span" cssClass="text-danger" /></td>
							<th scope="row">계좌번호</th>
							<td><form:input path="userAcctNo" type="text" cssClass="form-control"  />
					        <form:errors path="userAcctNo" element="span" cssClass="text-danger" /></td>
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
	




	// 단과, 학과 셀렉트박스 변경
	$("#selColl").on("change", function(){
		let selColl = $(this).val(); //선택값을 selColl에 저장한다.
		console.log(selColl);
		let data = {"collId":selColl}; //json방식으로 하기 위해 이걸 적어줌.
		
		//*** 시큐리티 사용 시 token처리 필요
		$.ajax({
			url:"${pageContext.request.contextPath}/emp/selectMajorList2",
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(data), //마샬링, 직렬화
			dataType:"json",
			type:"post",
			success:function(result){
				$("#selMajor").html("");//초기화
				$("#selMajor").append("<option value>" + "학과선택" + "</option>");
				$.each(result,function(index, majorVO){
					console.log("majorVO: " + majorVO);
					$("#selMajor").append("<option value='" + majorVO.majorId + "'>" + majorVO.majorNm + "</option>");
				});
			}
		});
	});
	// 단과, 학과 셀렉트박스 변경 끝
	
	
	// 건물, 연구실 셀렉트박스 변경
	$("#selComm").on("change", function(){
		let selComm = $(this).val(); //선택값을 selComm에 저장한다.
		console.log("selCOMM!!!!!! {}",selComm);
		let data = {"commId":selComm}; //json방식으로 하기 위해 이걸 적어줌.
		
		//*** 시큐리티 사용 시 token처리 필요
		$.ajax({
			url:"${pageContext.request.contextPath}/emp/selectBuildingNumList",
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(data), //마샬링, 직렬화
			dataType:"json",
			type:"post",
			success:function(result){
				console.log("result : {}",result);
				$("#selBuildingNum").html("");//초기화
				$("#selBuildingNum").append("<option value>" + "호실선택" + "</option>");
				$.each(result,function(index, laboVO){
					console.log("laboVO: " + laboVO);
					$("#selBuildingNum").append("<option value='"+laboVO.laboId+"'>" + laboVO.buildNum + "호</option>");
				});
			}
		});
	});
	// 건물, 연구실 셀렉트박스 변경
	
	
	
	

	
</script>
	











