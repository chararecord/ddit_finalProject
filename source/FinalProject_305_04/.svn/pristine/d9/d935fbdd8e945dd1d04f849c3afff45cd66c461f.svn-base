<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<security:authentication property="principal" var="usrVOWrapper" />
<security:authentication property="principal.realUser" var="authUser" />


<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			시험
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>시험</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->


	<!-- white-box -->
	<div class="white-box">
	
		<!-- List  -->
		<div class="title">
			<h3>학생 제출목록</h3>
			<span class="total"><em>${pagingVO.totalRecord }</em>건</span>
		</div>
		
		<div class="tbl-wrap">
			<table class="tbl center">
				<caption>시험 페이지 목록 테이블</caption>
				<colgroup>
					<col style="width: 10%">
					<col style="width: auto;">
					<col style="width: 10%">
					<col style="width: 10%">
					<col style="width: 10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">시험제목</th>
						<th scope="col">시험일</th>
						<th scope="col">작성자</th>
						<th scope="col">점수</th>
					</tr>
				</thead>
				
				<tbody>
				<c:set var="testSubmitStudentList" value="${pagingVO.dataList }" />
				
				<c:choose>
					<c:when test="${not empty  testSubmitStudentList}">
						<c:forEach var="studentTestList" items="${testSubmitStudentList }">
							
							<tr>
								<td>${studentTestList.rnum2}</td>							
								<td class="left"><a href="javascript:void(0);" class="submitBtn" data-test-id="${studentTestList.testId }" data-std-id="${studentTestList.currLect.stdId }">${studentTestList.testNm}</a></td>							
								<td>${studentTestList.testDate}</td>							
								<td>${studentTestList.myStudentVO.userNm}</td>							
								<td>${studentTestList.testAllow.testScore}</td>							
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
				</tbody>
				
			</table>
		</div>
		<!-- // List  -->
		
		
		
		
		
		
		<!--   View -->
		<%-- <div class="cont-box-inner">
				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
						
							<tr>
								<th scope="row">이름</th>
								<td id="writer"></td>
							</tr>	
							<tr>
								<th scope="row">점수 </th>
								<td id="score"></td>
							</tr> 
							<tr>
								<th scope="row">시험지 확인 </th>
								<td id="testLink"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="title">
					<div class="box-btn">
						<a href="" class="btn default">목록</a>
						<button type="button" class="btn purple" id="btnMarking" onclick="f_btnMarking()" style="display: none;">채점하기</button> 
					</div>
				</div> 

		</div> --%>
		<!-- //  View -->
		
		
		
		
		</div>
	</div>
	
	
	
	<script>
	//제출된 시험  상세 
/* 	$(".submitBtn").on("click", function(event){
		event.preventDefault();
		
		
		let testId = $(this).data("testId");
		let stdId = $(this).data("stdId");
		
		
		let data = {
			"testVO" : {
				"testId":testId
			},
			"stdIdParam" : stdId
		};
		console.log("data !!" , data);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/prof/test/submitStudentView",
			type: "POST",
			contentType:"application/json;charset=UTF-8",
			data: JSON.stringify(data),
			dataType:"json",
			success: function(resp) {
				console.log("resp!!!");
				console.log(resp);
				
				$("#writer").html(resp.myStudentVO.userNm);
				
				
				
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}	
		});
		return false; 
	});
	 */
	
	
	
	</script>