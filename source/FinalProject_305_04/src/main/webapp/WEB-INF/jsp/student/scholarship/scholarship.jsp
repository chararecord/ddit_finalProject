<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			장학금 수혜 내역
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

			<div class="tob-box">
				<strong class="tit">장학금 수혜 </strong>
			
				<p>
					수석 장학금 : 성적 기준(직전 학기) 학년별 석차 1등 <br> 장학금 2,000,000원 지급<br>
					우수 장학금 : 성적 기준(직전 학기) 학년별 석차 2등<br> 장학금 1,500,000원 지급<br>
					격려 장학금 : 성적 기준(직전 학기) 학년별 석차 3등<br> 장학금 1,000,000원 지급<br>
				</p>
			</div>


	<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>장학금 수혜 목록</caption>
					<colgroup>
						<col style="width: 10%">
						<col style="width: 20%">
						<col style="width: 10%">
						<col style="width: 20%">
						<col style="width: 20%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">학사연도</th>
							<th scope="col">학기</th>
							<th scope="col">장학명</th>
							<th scope="col">장학금액</th>
							<th scope="col">최종성적</th>
						</tr>
					</thead>
					<tbody>
						<tr>
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
											<td>최종성적 불러오기</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
								
									<td colspan="5">조건에 맞는 게시글이 없습니다.</td>
								</c:otherwise>
							</c:choose>
						
						</tr>
					</tbody>

				</table>
			</div>
			<!--end tbl-->


			<!-- 페이지 네비게이션 -->
			<div class="pagination_block">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" aria-label="처음"> <span
							aria-hidden="true">«</span><span class="sr-only">처음</span>
					</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" title="1 페이지로 이동">1</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" title="2 페이지로 이동">2</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" title="3 페이지로 이동">3</a></li>
					<li class="page-item active"><a class="page-link" href="#"
						title="현재 페이지">4</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" title="5 페이지로 이동">5</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" aria-label="다음"> <span
							aria-hidden="true">&gt;</span><span class="sr-only">다음</span></a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" aria-label="마지막"> <span
							aria-hidden="true">»</span><span class="sr-only">마지막</span></a></li>
				</ul>
			</div>
			<!-- //페이지 네비게이션 -->

		</div>
	</div>