<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

${usrVO }
<HR>
${certHistoryList }

<c:set var="histList" value="${certHistoryList }" />

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>증명서 보관함<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
		
		
			<!-- cont-box-inner -->
		<div class="cont-box-inner">

			<div class="title">
				<h3>기본 정보</h3>
			</div>

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
							<th scope="row">성명</th>
							<td>${usrVO.userNm }</td>
							<th scope="row">학번/사번</th>
							<td>${usrVO.userId }</td>
<!-- 							<th scope="row">사용자구분</th> -->
<%-- 							<td>${usrVO.userRole }</td> --%>
						</tr>
						<tr>
							<th scope="row">소속</th>
							<td></td>
							<th scope="row">상태</th>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--// cont-box-inner -->
		
		
		<!-- tob-box -->
		<div class="tob-box">
			<strong class="tit">증명서 발급 안내 </strong>
<!-- 			<p>시험은 수업 담당교수님이 직접 출제합니다.</p> -->
<!-- 			<p>수강생들은 시험 시작시간과 종료시간을 엄수하여주시길 바랍니다.</p> -->
<!-- 			<br> -->
<!-- 			<p>(1) 시험은 한 문제당 5점씩 채점되며, 제출을 완료하면 자동 채점됩니다. 총점은 백분율로 계산하여 -->
<!-- 				보여집니다.</p> -->
<!-- 			<p>(2) 한 시험당 문항은 최대 10개로 제한되어 있습니다.</p> -->
<!-- 			<p>(3) 풀지 않은 문항이 있을 경우 시험 제출 할 수 없습니다. 응시자는 이를 확인하여 모든 답을 체크할 수 -->
<!-- 				있도록 해야합니다.</p> -->
<!-- 			<p>(4) 응시 한 후 제출한 퀴즈의 답을 확인할 수 있습니다.</p> -->
<!-- 			<br> <strong class="red-txt">제출 마감시간이 되면 문제 풀이 유무와 상관없이 -->
<!-- 				제출되며, 풀지 않은 문항은 자동으로 0점 처리됩니다. </strong> -->
		</div>
		<!-- // tob-box -->
		
		
		
		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>증명서 발급 내역</h3>
				<span class="total"><em>3</em>건</span>
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 10%" />
						<col style="width: 15%" />
						<col style="width: 15%" />
						<col style="width: 20%" />
						<col style="width: 10%" />
						<col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">증명서</th>
							<th scope="col">발급일자</th>
							<th scope="col">출력가능일자</th>
							<th scope="col">결제수수료</th>
							<th scope="col">출력</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty histList }">
								<c:forEach items="${histList }" var="hist">
									<tr>
										<td></td>
										<td></td>
										<td>${hist.certDate }</td>
										<td></td>
										<td></td>
										<td>
											<button type="button" class="btn btn-s purple">출력</button>
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="6">발급 내역이 존재하지 않습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
						
					</tbody>

				</table>
			</div>
			<!--end tbl-->
		
		
		
		</div>
	</div>
</div>
