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
	
	
		<div class="tob-box">
				<strong class="tit">퀴즈 제출자 안내사항 </strong>	
				<ul>
					<li><p>1) 반드시 기간을 먼저 설정한 후, 퀴즈를 등록하는 것을 권장합니다.</p>
						<p>- 퀴즈기간 미설정시, 등록 직후 바로 시험에 응시 가능합니다.</p>
						<p>- <span class="red-txt">기간을 설정하지 않고 문제를 등록하여 문제 유출이 되는 경우가 종종 발생합니다.</span></p>
					</li>
					<li>
						<p>2) 퀴즈는 한 문항당 4지선다방식으로 등록할 수 있습니다.</p>
						<p>- 정답란에는 1~4까지의 숫자만 입력이 가능합니다.</p>
					</li>
					<li>
						<p>3) 퀴즈 생성 시 문제 개수는 최대 10문제로 설정할 수 있습니다.</p>
						<p>- 하단의 +버튼과 문제의 -버튼을 통해 문항 수를 제어할 수 있습니다.</p>
					</li>
					<li>
						<p>4) 퀴즈 문제 배점 및 자동 평가에 대한 안내</p>
						<p> - 문제 갯수에따라 배점이 달라지며, 수강생이 제출을 완료하면 자동채점됩니다. 총점은 백분율로 계산하여 보여집니다.</p> 
					</li>
				</ul>
		</div>
	
	
	<form:form modelAttribute="test" action="${pageContext.request.contextPath }/prof/test/testForm" method="post">
		<input type="hidden" name="examId" value="${testVO.examId }" />
		<input type="hidden" name="lectId" value="${testVO.lectId }" /> 
		
		
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
						<th scope="row">강의명</th>
						<td colspan="3">
							<c:set var="lectrueList" value="${lectureVO}" />
							<select>
								<option>===전체===</option>
								
								<c:choose>
									<c:when test="${not empty lectrueList}">
										<c:forEach items="${lectrueList }" var="lecture">
											<option>${lecture.lectNm }</option>
										</c:forEach>
									</c:when>
								</c:choose>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row">시험제목</th>
						<td><input type="text" name="testNm" class="w100" /></td>
						<th scope="row">시험일</th>
						<td><input type="date" name="testDate" class="w100" /></td>
					</tr>
					<tr>
						<th scope="row">시험시작시간</th>
						<td><input type="time" name="testStime" class="w100" /></td>
						<th scope="row">시험종료시간</th>
						<td><input type="time" name="testEtime" class="w100" /></td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="cont-box-inner">
			<ul class="question-wrap">
			
			
				
				<c:forEach var="i" begin="1" end="10"> <!-- 문제 개수를 받아오기  -->
				<li> 
					<div class="question">
						<span class="num"><input type="text" name="queList[0].testNum" value="${i}" /></span> 
						<input type="text" name="" value="" class="w100" placeholder="문제를 입력해주세요" />
					</div>
			
					<!-- 객관식일 경우  -->
					<ul class="psgn">
					
							<li><input type="text" name="queList[0].pasgList[0].testPasg"  class="w100" placeholder="첫 번째 보기 답안을 입력하세요" /></li> 
							<li><input type="text" name="queList[0].pasgList[0].testPasg"  class="w100" placeholder="두 번째 보기 답안을 입력하세요" /></li> 
							<li><input type="text" name="queList[0].pasgList[0].testPasg"  class="w100" placeholder="세 번째 보기 답안을 입력하세요" /></li> 
							<li><input type="text" name="queList[0].pasgList[0].testPasg"  class="w100" placeholder="네 번째 보기 답안을 입력하세요" /></li> 
					</ul>
				</li>
				</c:forEach>
				<%-- <li>2. <form:input path="" />
					<!-- 주관식일 경우  -->
					<form:textarea path=""/>
				</li> --%>
			</ul>
			
			<div class="title">
				<div class="box-btn">
					<a href="" class="btn default">목록</a>
					<a href="" class="btn red">취소</a>
					<button type="submit">등록</button>
				</div>
			</div>
		</div>
		<security:csrfInput />
	</form:form>
	
	
	
</div>
</div>