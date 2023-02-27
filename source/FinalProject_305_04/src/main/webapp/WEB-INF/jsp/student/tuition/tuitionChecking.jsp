<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			등록금 납부 확인서 (학생) - "기납"일때
<!-- 			1학년 1학기일때만 입학금 값을 불러오고 나머지 학기에는 입학금은 0으로  -->
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
					</colgroup>
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">연도</th>
							<th scope="col">학기</th>
							<th scope="col">등록금</th>
							<th scope="col">장학금</th>
							<th scope="col">실납부액</th>
							<th scope="col">납부여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						
						
<!-- !!!!	안에 컬럼명 바꾸셈 바꾸쎔 바꾸쎔 바꾸셈 일단 틀만 만든거임  !!!! -->
							<c:set var="scholarshipList" value="${pagingVO.dataList }" />
							<c:choose>
								<c:when test="${not empty scholarshipList }">
									<c:forEach items="${scholarshipList }" var="scholarship">
										<tr>
											<td>${scholarship.rnum }</td>
											<td>학사연도 불러오기</td>
											<td>학기 불러오기</td>
											<td><a href="#">${scholarship.schsNm }</a></td>
											<td>${scholarship.schsAmount }</td>
<!-- 	여기 버튼 들어가는거 맞나,,?									 -->
											<td>
												<div class="white-box">
												<!-- 	조건문 써서 미납이면 "등록금고지서", 기납이면 "등록금 확인서" 띄워주기 현주야 제발 해 나중에 -->
													<button type="button" class="btn purple">미납이니까 돈내</button>
													<button type="button" class="btn purple">기납이니까 등록금 확인서 보여줘</button>
												</div>
											</td>
<!-- 	여기 버튼 들어가는거 맞을까.. 맞나..? 맞나..? 몰라 흑흑									 -->									
											
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
								
									<td colspan="7">조건에 맞는 게시글이 없습니다.</td>
								</c:otherwise>
							</c:choose>
<!-- !!!!	바꿨니..?  !!!! -->



						
						</tr>
					</tbody>

				</table>
			</div>
			<!--end tbl-->


		
		</div>
	</div>