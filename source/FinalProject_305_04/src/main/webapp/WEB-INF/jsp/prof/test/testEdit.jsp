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
				<strong class="tit">시험 제출자 안내사항 </strong>	
				<ul>
					<li><p>1) 반드시 기간을 먼저 설정한 후, 퀴즈를 등록하는 것을 권장합니다.</p>
						<p>- 시험기간 미설정시, 등록 직후 바로 시험에 응시 가능합니다.</p>
						<p>- <span class="red-txt">기간을 설정하지 않고 문제를 등록하여 문제 유출이 되는 경우가 종종 발생합니다.</span></p>
					</li>
					<li>
						<p>2) 시험은 한 문항당 4지선다방식으로 등록할 수 있습니다.</p>
						<p>- 정답란에는 1~4까지의 숫자만 입력이 가능합니다.</p>
					</li>
					<li>
						<p>3) 시험 생성 시 문제 개수는 최대 10문제로 설정할 수 있습니다.</p>
						<p>- 하단의 +버튼과 문제의 -버튼을 통해 문항 수를 제어할 수 있습니다.</p>
					</li>
					<li>
						<p>4) 문제 배점 및 자동 평가에 대한 안내</p>
						<p> - 문제 갯수에따라 배점이 달라지며, 수강생이 제출을 완료하면 자동채점됩니다. 총점은 백분율로 계산하여 보여집니다.</p> 
					</li>
				</ul>
		</div>
	
	


		<form id="frm" action="${pageContext.request.contextPath }/prof/test/testForm?profId=${testVO.profId }" method="post">
			<input type="hidden" name="examId" value="${testVO.examId }" />
			<input type="hidden" name="queType" value="객관식" />
			<input type="hidden" name="testAnsw"  id="answer" /> <!-- 정답모아서 한꺼번에 testVO mun에 넘기기  -->
		
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
							<select id="selectLecture" name="lectId">
								<option>===전체===</option>
								
								<c:choose>
									<c:when test="${not empty lectrueList}">
										<c:forEach items="${lectrueList }" var="lecture">
											<option value="${lecture.lectId }">${lecture.lectNm }</option>
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
			<ul class="question-wrap" id="test">
				<li id="area1">
				
					<!--  rc-wrap-->
					<!-- <div class="btn-toggle">
						<button type="button" name="queType" value="객관식" class="typeBtn objBtn on">객관식</button>
						<button type="button" name="queType" class="typeBtn sbjBtn">주관식</button>
					</div> -->
					<!--   // rc-wrap-->
				
					<div class="question">
						<span class="num"><input type="number" class="inputNum" name="queList[0].testNum" value="1" /></span> 
						<input type="text" name="queList[0].testQue" value="" class="testQue  w100 txtQuestion" placeholder="문제를 입력해주세요" />
						<button onclick="f_remove(this)" class="btn primary btnMinus">X</button>
					</div>
					<div class="psgn-container">
					
					
								
						
						<c:set var="test" value="${testVO }" />
						${test.testId } 		
										
					
					
						<ul class='psgn'>
							<li class="items">
								 <input type="radio" id="mun1" name="mun1" value="1" />
								 <label for="mun1">
								 	<input type="text" name="testPasg" class="w100 txtPasg" id="testPasg"  >
								 </label>
								 
						 	</li>
						 	<li class="items">
								 <input type="radio" id="mun2" name="mun1" value="2" />
								 <label for="mun2">
								 	<input type="text" name="testPasg" class="w100 txtPasg" id="testPasg"  >
								 </label>
						 	</li>
						 	<li class="items">
								 <input type="radio" id="mun3" name="mun1" value="3" />
								 <label for="mun3">
								 	<input type="text" name="testPasg" class="w100 txtPasg" id="testPasg"  >
								 </label>
						 	</li>
						 	<li class="items">
								 <input type="radio" id="mun4" name="mun1" value="4" />
								 <label for="mun4">
								 	<input type="text" name="testPasg" class="w100 txtPasg" id="testPasg"  >
								 </label>
						 	</li>
	
						 </ul>
					</div>
	
				</li>
			</ul>
			<button type="button" onclick="f_add(this)" id="btnPlus" class="btn purple btnPlus">문제추가+</button>
			
			<div class="title">
				<div class="box-btn">
					<a href="" class="btn default">목록</a>
					<a href="" class="btn red">삭제</a>
					<button type="submit" id="btnSubmit" class="btn purple">등록</button>
				</div>
			</div>
		</div>
		<security:csrfInput />
		</form>

</div>
</div>


