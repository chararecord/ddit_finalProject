<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			강의게시판
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i>
			<strong>나의 강의목록</strong>
			<strong>강의게시판</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">

		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="cont-box-inner">
				<div class="title">
					<h3>강의정보</h3>
				</div>

				<div class="tbl-wrap">
				<c:set value="${lectInfo}" var="lect" />
					<table class="tbl">
						<caption>ㅎㅇㄴㅁㅎㄴㅇㅎㄴㅇㅎㄴㅇㅎ</caption>
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody class="center">
							<tr>
								<th scope="row">학사연도</th>
								<td>
									${lect.semeYear }년
								</td>
								<th scope="row">학기</th>
								<td>
									${lect.seme }학기
								</td>
								<th scope="row">학년</th>
								<td>
									${lect.camYear }학년
								</td>
								<th scope="row">학점</th>
								<td>
									${lect.credit }학점
								</td>
							</tr>
							<tr>
								<th scope="row">이수구분</th>
								<td>
									${lect.estaSub }
								</td>
								<th scope="row">학과과목</th>
								<td>
									${lect.subMajorVO.subjectNm }
								</td>
								<th scope="row">강의명</th>
								<td>
									${lect.lectNm }
								</td>
								<th scope="row">교수명</th>
								<td>
									${lect.userNm }
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<br />
			<br />
			<br />
			<div class="title">
				<div>
					<h3>공지사항</h3>
					<p class="highlight red-txt"> 총 <em class="red-txt">${pagingVO.totalRecord }</em>건의 게시물이 있습니다.</p>
					</div>
				<div class="right-part">
					<div class="search-form">
						<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;">
							<form:select path="searchType">
								<option value>전체</option>
								<form:option value="tit" label="제목" />
								<form:option value="cont" label="내용" />
							</form:select>
							<div class="input-group">
								<form:input path="searchWord"/>
								<input id="searchBtn" class="btn btn-search primary" type="button" value="검색" />
							</div>
							<div class="box-btn">
								<button type="button" class="insertBtn btn purple">등록</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<!--tbl start-->
			
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>강의게시판 테이블</caption>
					<colgroup>
						<col style="width: 10%" />
<%-- 						<col style="width: 20%" /> --%>
<%-- 						<col style="width: 10%" /> --%>
<%-- 						<col style="width: 20%" /> --%>
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="w5">선택</th>
							<th scope="col" class="w5">글번호</th>
							<th scope="col" class="w50">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">등록일</th>
							<th scope="col" class="w5">조회수</th>
						</tr>
					</thead>
					<tbody id="listBody">
						<tr>
							<c:set var="lectNotiList" value="${pagingVO.dataList }" />
							<c:choose>
								<c:when test="${not empty lectNotiList }">
									<c:forEach items="${lectNotiList }" var="lectNoti">
										<tr>
											<td>
												<!-- 체크박스 -->
												<div class="rc-wrap">
													<input type="checkbox" id="checkbox5" name="notiCheck" value="${lectNoti.lectNotiId }">
													<label for="checkbox5"><span class="sr-only">선택</span></label>
												</div>
											</td>
											<td>${lectNoti.rnum }</td>
											<td style="text-align: left">
<%-- 												<c:url value="/campus/notice/" var="viewURL" > --%>
<%-- 													<c:param name="id" value="${notice.notiId }" /> --%>
<%-- 												</c:url> --%>
												<a href="#">
													${lectNoti.tit }
													<c:if test="${lectNoti.attaCount ge 1}">
														<span class="material-symbols-outlined" style="font-size: 15px">attach_file</span>
													</c:if>
												</a>
											</td>
											<td>${lectNoti.lectId }</td>
											<td>${lectNoti.wrDate }</td>
											<td>${lectNoti.hit }</td>
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
			<!--tbl end-->

			<!-- 페이지 네비게이션 -->
			<div id="pagingArea" class="pagination_block">
				<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
			</div>
			<!-- //페이지 네비게이션 -->
		</div>
		<!-- end cont-box-inner -->
	</div>
</div>
<script>
</script>

