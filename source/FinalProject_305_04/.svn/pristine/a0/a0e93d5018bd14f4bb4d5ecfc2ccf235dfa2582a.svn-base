<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			상담
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i>
			<strong>상담</strong>
			<strong>상담 내역</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
		<!--  // styletab  -->
		<div class="cont-box-inner">
			<div class="title">
				<div class="left w50" style="box-sizing: border-box; float: left;">
					<h3 class="left">상담 내역</h3>
					<span class="total"><em>${pagingVO.totalRecord }</em>건</span>
				</div>
				<div class="right-part w50"
					style="box-sizing: border-box; float: right;">
					<div class="search-form">
<%-- 						<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;"> --%>
<%-- 							<form:select path="searchType"> --%>
<!-- 								<option value>전체</option> -->
<%-- 								<form:option value="tit" label="제목" /> --%>
<%-- 							</form:select> --%>
							<div class="input-group">
<%-- 								<form:input path="searchWord" /> --%>
								<input id="searchBtn" class="btn btn-search primary"
									type="button" value="검색" />
							</div>
							<div class="box-btn">
								<button type="button" class="insertBtn btn purple" data-bs-toggle="modal" data-bs-target="#exampleModal">상담신청</button>
							</div>
<%-- 						</form:form> --%>
					</div>
				</div>
			</div>
			<div class="tbl-wrap">
					<table class="tbl center"
						data-source="${pageContext.request.contextPath}/student/consult/on"
						data-make-tr="makeConsultUI">
						<caption></caption>
						<colgroup>
							<col style="width: 3%">
							<col style="width: 7%">
							<col style="width: 7%">
							<col style="width: auto">
							<col style="width: 8%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 6%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col" class="dropbtn_content" onclick="dropdown_cat()">상담유형
												<span class="material-symbols-outlined dropbtn_click" style="font-size: 15px; vertical-align: text-top;">expand_more</span>
								</th>
								<th scope="col">대면여부
									<span class="material-symbols-outlined" style="font-size: 15px; vertical-align: text-top;">expand_more</span>
								</th>
								<th scope="col">상담 제목</th>
								<th scope="col">상담 교수</th>
								<th scope="col">신청일</th>
								<th scope="col">상담일</th>
								<th scope="col">상담시간</th>
								<th scope="col">상태</th>
							</tr>
						</thead>
						<tbody class="listBody">
						</tbody>
					</table>
			</div>
		</div>
		

		<!-- 페이지 네비게이션 -->
		<div id="pagingArea">
		</div>
		<!-- //페이지 네비게이션 -->
		
		<!-- 상담신청 모달화면 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h4 class="modal-title fs-5" id="exampleModalLabel">상담 신청</h4>
		      		</div>
		      		<div class="modal-body">
						<div class="title">
							<div class="tob-box">
									<p class="tit">상담 신청시 주의사항</p>
									<p>1. 자세한 상담을 위하여 정확한 정보를 입력하시기 바랍니다.</p>
									<p>2. 작성하신 정보는 다음의 목적을 위하여 개인정보를 처리하고 있으며,
										그 이외의 용도로는 이용하지 않습니다.
									<p>		- 상담/심리검사 신청 및 서비스 제공, 일정/공지 안내</p>
							</div>
						</div>
			      		<div class="modal-form">
			      		</div>
		      		</div>
		      		<div class="modal-footer">
						<div class="box-btn" style="float:right;">
							<button type="button" class="btn success okBtn">신청</button>
							<button type="button" class="btn red closeBtn" data-dismiss="modal">취소</button>
						</div>
		      		</div>
		    	</div>
		 	</div>
		</div>
		<!-- //상담신청 모달화면 끝  -->
		
		<!-- 상담게시글상세 모달화면 -->
		<div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title fs-5" id="detailModalLabel"></h4>
		      </div>
		      <div class="modal-body">
			      <div class="tbl-wrap">
				      <div class="modal-view">
				      </div>
			      </div>
		      </div>
		      <div class="modal-footer">
				<div class="box-btn" style="float:right;">
					<button type="button" class="btn default closeBtn" data-dismiss="modal">닫기</button>
				</div>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- //상담게시글상세 모달화면 끝  -->
		
	</div>
	<!-- end cont-box-inner -->
</div>
<%-- <form:form id="searchForm" method="get" modelAttribute="simpleCondition"> --%>
<%-- 	<form:hidden path="searchType" name="searchType"/> --%>
<%-- 	<form:hidden path="searchWord"/> --%>
<!-- 	<input type="hidden" name="page" /> -->
<%-- </form:form> --%>
<script>



</script>