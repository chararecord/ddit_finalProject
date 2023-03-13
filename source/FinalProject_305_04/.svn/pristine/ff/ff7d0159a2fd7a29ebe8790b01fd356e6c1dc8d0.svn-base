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


	<c:set var="test" value="${testVO }" />



<!-- 학번, 학생명, 강의코드, 강의명, 중간기말구분 -->
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
		<th scope="row">시험제목</th>
		<td>${test.testNm }</td>
<th scope="row">시험일</th>
<td>${test.testDate }</td>
</tr>
<tr>
	<th scope="row">시험시작시간</th>
	<td>${test.testStime }</td>
<th scope="row">시험종료시간</th>
<td>${test.testEtime }</td>
			</tr>
		</tbody>
	</table>
</div>




<div class="cont-box-inner">
	<ul class="question-wrap" id="test">
		<li id="area1"><c:set var="testVOlist" value="${testQueList }" />
<c:choose>
<c:when test="${not empty  testVOlist}">
<c:forEach var="testVOList" items="${testVOlist}" varStatus="i">
<%-- 								${testVOList } --%>
<c:forEach var="que" items="${testVOlist[i.index].queList}"
varStatus="j">

<div class="question">
	<span class="num"> ${que.testNum } </span> ${que.testQue }
</div>

<div class="psgn-container">
	<ul class='psgn'>
		<c:choose>
<c:when test="${not empty  que}">
<c:forEach var="testPasg" items="${testPasgList}" varStatus="var">
<c:if test="${que.testQueId eq testPasg.testQueId }">
<%-- 	${testPasg.pasgList[0]} --%>
	<li>
		<div class="rc-wrap">
			<div class="rc-inner">
				<input type="radio" value="${testPasg.pasgList[0].testPasgId}" <c:if test="${testPasg.pasgList[0].answState=='Y'}">checked</c:if> readonly disabled />
				<label for="checkbox${testPasg.pasgList[0].testPasgId}">${testPasg.pasgList[0].testPasg}</label>
			</div>
		</div>
	</li>
<%-- 	${testPasg.pasgList[1]} --%>
	<li>
		<div class="rc-wrap">
			<div class="rc-inner">
				<input type="radio" value="${testPasg.pasgList[1].testPasgId}" <c:if test="${testPasg.pasgList[1].answState=='Y'}">checked</c:if> readonly disabled />
				<label for="checkbox${testPasg.pasgList[1].testPasgId}">${testPasg.pasgList[1].testPasg}</label>
			</div>
		</div>
	</li>
<%-- 	${testPasg.pasgList[2]} --%>
	<li>
		<div class="rc-wrap">
			<div class="rc-inner">
				<input type="radio" value="${testPasg.pasgList[2].testPasgId}" <c:if test="${testPasg.pasgList[2].answState=='Y'}">checked</c:if> readonly disabled />
				<label for="checkbox${testPasg.pasgList[2].testPasgId}">${testPasg.pasgList[2].testPasg}</label>
			</div>
		</div>
	</li>
<%-- 	${testPasg.pasgList[3]} --%>
	<li>
		<div class="rc-wrap">
			<div class="rc-inner">
				<input type="radio" value="${testPasg.pasgList[3].testPasgId}" <c:if test="${testPasg.pasgList[3].answState=='Y'}">checked</c:if> readonly disabled />
				<label for="checkbox${testPasg.pasgList[3].testPasgId}">${testPasg.pasgList[3].testPasg}</label>
			</div>
		</div>
	</li>
</c:if>
</c:forEach>
</c:when>
</c:choose>
	</ul>
</div>
</c:forEach>
</c:forEach>
</c:when>
</c:choose></li>
			</ul>

			<div class="title">
				<div class="box-btn">
					<a href="${pageContext.request.contextPath }/prof/test?profId=${authUser.userId}" class="btn default">목록</a> 
					
					
					 <form id="delForm" action="${pageContext.request.contextPath}/prof/test/deleteTestView?testId=${test.testId}" method="post">
						<input type="hidden" name="_method" value="delete" />
						<button type="button" onclick="f_delete()" class="btn red">삭제</button>
					</form> 
					
					
					<button type="submit" id="btnSubmit" class="btn purple">수정</button>
				</div>
			</div>
		</div>


	</div>
</div>
<script>
function f_delete() {
	if(confirm("정말로 삭제하시겠습니까?")) {
		document.getElementById("delForm").submit();
	}
}
</script>

