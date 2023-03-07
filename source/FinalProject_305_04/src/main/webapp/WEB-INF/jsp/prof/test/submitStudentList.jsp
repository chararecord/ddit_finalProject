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
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>path1</strong>
			<strong>path2</strong> <strong>path3</strong> <strong>path4</strong>
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
								<td class="left"><a href="">${studentTestList.testNm}</a></td>							
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
		<div class="cont-box-inner">
			<form>
				<div class="title">
					<h3>점수부여</h3>
				</div>
				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<td class="title pur-txt center" colspan="2"><h3>${assignNm }</h3></td>
							</tr>
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
								<td id="score"></td>
							</tr>
						</tbody>
					</table>
					<div class="tob-box">
						<strong class="tit">시험 점수 </strong>
						<p>1. 점수를 부여하고 기한 내에 점수를 수정할 수 있습니다.</p>
						<p>2. 마감일 이후에는 점수를 수정할 수 없으므로 기한을 잘 확인하여 주시길 바랍니다.</p>
					</div>
				</div>
				<div class="title">
					<div class="box-btn">
						<a href="" class="btn default">목록</a>
						<button type="button" class="btn purple" id="btnMarking" onclick="f_btnMarking()" style="display: none;">채점하기</button> 
					</div>
				</div> 
			</form>
		</div>
		<!-- //  View -->
		
	

	</div>