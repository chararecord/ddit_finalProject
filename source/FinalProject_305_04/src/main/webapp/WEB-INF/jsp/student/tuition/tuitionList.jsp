<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			등록금 납부 내역 (학생)
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
<!-- 			<div class="white-box"> -->
				<div class="title">
					<p class="highlight-txt">
						<c:set var="tuitionList" value="${tuitionPayVO }" />
						<c:choose>
							<c:when test="${not empty tuitionList }">
								<em class="red-txt">미납한</em> 등록금이 있습니다.
							</c:when>
							<c:otherwise>
								미납한 등록금이 없습니다.
							</c:otherwise>
						</c:choose>
					</p>
				</div>
<!-- 			</div> -->

			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>등록금 납부 내역</caption>
					<colgroup>
						<col style="width: 5%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 20%">
						<col style="width: 20%">
						<col style="width: 20%">
						<col style="width: 15%">
						<col style="width: 15%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">연도</th>
							<th scope="col">학기</th>
							<th scope="col">등록금액</th>
							<th scope="col">장학금액</th>
							<th scope="col">실납부액</th>
							<th scope="col">납부여부</th>
							<th scope="col">확인서</th>
						</tr>
					</thead>
					<tbody>
<%-- 					${tuitionPayVO} --%>
						<tr>
							<c:set var="tuitionList" value="${tuitionPayVO }" />
							<c:choose>
								<c:when test="${not empty tuitionList }">
									<c:forEach items="${tuitionList }" var="tuition" varStatus="i" >
										<tr>
											<td>${tuition.rnum }</td>
											<td>${tuition.semesterVO.semeYear }</td>
											<td>${tuition.semesterVO.seme }</td>
											<td> <fmt:formatNumber value="${tuition.tuitionVO.tuitionAmount }" pattern="#,###"/>원</td>
											<td> <fmt:formatNumber value="${tuition.scholarshipVO.schsAmount  }" pattern="#,###"/>원</td>
											<td> <fmt:formatNumber value="${tuition.amountPay }" pattern="#,###"/>원</td>
											<c:choose>
												<c:when
													test="${tuition.payStat eq '부' }"><!--  미납일때 -->
													<td class="red-txt">미납</td>
													<td><button type="button" class="btn purple">고지서</button></td>
												</c:when>
												<c:otherwise>
													<!--  기납일때 -->
													<td>완납</td>
													<td><button type="button" class="btn purple">확인서</button></td>
												</c:otherwise>
											</c:choose>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<td colspan="7">조건에 맞는 게시글이 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</tbody>
				</table>
			</div>
			<!--end tbl-->
		</div>
	</div>
	
	
	
