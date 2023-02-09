<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			수강중인 강의 목록(학생)
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

			<!-- 		scroll bar	 -->
			<div class="title">
			
				<h3>${lectureVO[0].semeYear } ${lectureVO[0].seme } </h3>
				
				<div class="box-btn">
					<button type="button" class="btn purple">시간표 보기</button>
				</div>
			</div>
			<div class="table-scrollable">
				<div class="table-responsive">

					<table class="tbl">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 20%">
							<col style="width: 10%">
							<col style="width: 5%">
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 10%">
						</colgroup>

						<thead class="">
							<tr class="table-scrollable__fixed-y">
								<th>이수구분</th>
								<th>개설학과</th>
								<th>강의명</th>
								<th>담당교수</th>
								<th>학점</th>
								<th>출결현황</th>
								<th>강의계획서</th>
								<th>강의평가</th>
							</tr>
						</thead>

						<tbody>
							<tr>
							<!-- lectureVO : List<LectureVO> lectureVO -->
								<c:set var="lectList" value="${lectureVO }" />
								<c:choose>
									<c:when test="${not empty lectList }">
										<c:forEach items="${lectList }" var="lecture">
											<tr>
												<td>${lecture.commDesc }</td>
												<td>${lecture.majorNm }</td>
												<td>${lecture.lectNm }</td>
												<td>${lecture.userNm}</td>
												<td>${lecture.credit }</td>
												<td>출결현황</td>
												<td>강의계획서</td>
												<td>강의평가</td>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<td colspan="8">수강 중인 강의가 없습니다.</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</tbody>
					</table>
				</div>
			</div>



<!-- 펀션  학사 년도 불러오기!!! 어려워요 그래도 해야지!!!! -->

		
		</div>
	</div>
</div>