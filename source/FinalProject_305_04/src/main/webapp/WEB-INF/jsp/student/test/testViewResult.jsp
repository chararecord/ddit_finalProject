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
	${test.testAllow.testAnsList }
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

					<%-- ${test } --%>
					<tr>
						<td class="title pur-txt center" colspan="4"><h3>
								${test.testNm }</h3></td>
					</tr>
					<tr>
						<th scope="row">시험시작시간</th>
						<td>${test.testStime }</td>
						<th scope="row">시험종료시간</th>
						<td>${test.testEtime }</td>
					</tr>
					<tr>
						<th scope="row">학번</th>
						<td>${map.STD_ID}</td>
						<th scope="row">강의명</th>
						<td>${map.LECT_NM}</td>
					</tr>

					<tr>
						<th scope="row">학생명</th>
						<td>${map.USER_NM}</td>
						<th scope="row">중간기말구분</th>
						<td>${map.EXAM_TYPE}</td>
					</tr>

				</tbody>
			</table>
		</div>



		<!-- 
		test : TestVO
		test.queList : List<TestQueVO> queList
		testQue : TestQueVO
		testQue.pasgList : List<TestPasgVO> pasgList
		testPasg : TestPasgVO
		 -->

		<div class="cont-box-inner">
			<form id="testAnsSubmit"
				action="${pageContext.request.contextPath }/student/test/testAns"
				method="post">



				<ul class="listGroup-wrap">
					<!-- 시험문제   -->
					<c:choose>
						<c:when test="${not empty test.queList }">
							<input type="hidden" name="testAllowId"
								value="${test.testAllow.testAllowId }" />
							<input type="hidden" name="curlectId"
								value="${test.testAllow.curlectId }" />
							<input type="hidden" name="testId"
								value="${test.testAllow.testId }" />
							<input type="hidden" name="stdId" value="${stdId}" />
							<input type="hidden" name="semeId" value="${semeId}" />

							<c:forEach var="testQue" items="${test.queList }" varStatus="i">
								<input type="hidden" name="testAnsList[${i.index}].testAllowId" value="${test.testAllow.testAllowId }" />
								<input type="hidden" name="testAnsList[${i.index}].testQueId"value="${testQue.testQueId }" /> 

								<%-- ${testQue } --%>
								<li>
									<p>${testQue.testNum }.${testQue.testQue }</p> <%-- <input type="text" name="ansList[statL.index].testQueId" value="${testQue.testNum}" /> --%>
									<!-- 1~10번  --> 
									<c:choose>
										<c:when test="${not empty testQue.pasgList }">

											<!-- testPasg : 지문번호아이디(testPasgId) -->
											<c:forEach var="testPasg" items="${testQue.pasgList}">
												<%-- ${i.index} --%>
												<%-- console.log(${ testPasg.testPasgId }); --%>
												<!-- 주관식 객관식 구분   -->
												<c:choose>
													<c:when test="${testPasg.queType == '객관식'}">
														<div class="rc-wrap">
															<div class="rc-inner">
																<input type="radio" id="checkbox${testPasg.testPasgId}"
																	name="testAnsList[${i.index}].testAnsw"
																	value="${testPasg.testPasgId}"> <label
																	for="checkbox${testPasg.testPasgId}">${testPasg.testPasg}</label>
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<label for="textarea${testPasg.testPasgId}"
															class="sr-only"></label>
														<textarea id="textarea${testPasg.testPasgId}"
															name="testAnsList[${i.index}].testAnsw"></textarea>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:when>
										<c:otherwise>
					              			문제 없음
					          			 </c:otherwise>
									</c:choose>
								</li>
							</c:forEach>
						</c:when>
						<c:otherwise>
	              		문제 없음
	           </c:otherwise>
					</c:choose>
				</ul>

				<div class="btn-wrap right">
					<button type="button" class="btn default">목록</button>
					<button type="submit" class="btn purple" id="btnSubmit">제출</button>
				</div>
		
		<security:csrfInput />
		</form>
		</div>
	</div>
	<!-- //  white-box -->


</div>





<script>
/* $("#btnSubmit").on("click", function() {
	
	//학생이 체크한 지문만 뽑아오기 
	/* let ObjSubmitAns = $("input[name='testPasgId']:checked").val();
	let SujSubmitAns = $("textarea[name='testPasgId']").val();
	console.log($("input[name='testPasgId']:checked").val());
	console.log($("textarea[name='testPasgId']").val());
	$("#testAnsSubmit").append(
		$("<input>").prop("type", "text").prop("name", "testPasgId").attr("value", ObjSubmitAns),
		$("<textarea>").prop("name", "testPasgId").html(SujSubmitAns)
	)
	 */
	//제출하기 
	/* if(confirm("제출하시겠습니까?")) {
		$("#testAnsSubmit").submit();
	}  */
/*}); */
</script>
