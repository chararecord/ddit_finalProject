<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			학생 상담
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i>
			<strong>학생 상담</strong>
			<strong>온라인상담</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">

		<!-- styletab  -->
		<div class="tab-wrap">
			<!-- tablist  -->
			<ul class="tab tab-1dep" role="tablist">
				<li class="on"><a class="active tab1"
					href="${pageContext.request.contextPath}/student/consult/on" id="">온라인상담</a></li>
				<li><a class="nav-link"
					href="${pageContext.request.contextPath}/student/consult/off">오프라인상담</a></li>
			</ul>
			<!--  // tablist  -->
		</div>
		<!--  // styletab  -->

		<div class="cont-box-inner">
			<div class="title">
				<div class="left w50" style="box-sizing: border-box; float: left;">
					<h3 class="left">상담 내역</h3>
					<span class="total"><em>페이지몇건인지입력</em>건</span>
				</div>
				<div class="right-part w50"
					style="box-sizing: border-box; float: right;">
					<div class="search-form">
<%-- 						<form:form id="searchUI" modelAttribute="simpleCondition" --%>
<!-- 							onsubmit="return false;"> -->
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
				<table class="tbl center">
					<caption></caption>
					<colgroup>
						<col style="width: 5%">
						<col style="width: 10%">
						<col style="width: 40%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 5%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">상담 교수</th>
							<th scope="col">상담 주제</th>
							<th scope="col">신청일</th>
							<th scope="col">상담일</th>
							<th scope="col">상담시간</th>
							<th scope="col">상담유형</th>
							<th scope="col">상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="checkbox44444"
								name="radio-group"><label for="checkbox44444"><span
									class="sr-only">선택</span></label></td>
							<td>1명</td>
							<td>1명</td>

						</tr>
						<tr>
							<td><input type="checkbox" id="checkbox44444"
								name="radio-group"><label for="checkbox44444"><span
									class="sr-only">선택</span></label></td>
							<td>1명</td>
							<td>1명</td>
						</tr>
					</tbody>
				</table>
			</div>
			
				
		</div>

		<!-- 페이지 네비게이션 -->
		<!-- //페이지 네비게이션 -->
		
		<!-- 모달화면 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title fs-5" id="exampleModalLabel">상담 신청</h4>
		        <button type="button" class="btn-close insBtn" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      	

		      </div>
		      <div class="modal-footer">
		      </div>
		    </div>
		  </div>
		</div>
		<!-- 모달화면 끝  -->
		
	</div>
	<!-- end cont-box-inner -->
</div>
<script>
let tag = `<div class="tbl-wrap">
				<div class="title">
					<div class="tob-box">
							<p class="tit">상담 신청시 주의사항</p>
							<p>1. 자세한 상담을 위하여 정확한 정보를 입력하시기 바랍니다.</p>
							<p>2. 작성하신 정보는 다음의 목적을 위하여 개인정보를 처리하고 있으며,
								그 이외의 용도로는 이용하지 않습니다.
							<p>		- 상담/심리검사 신청 및 서비스 제공, 일정/공지 안내</p>
					</div>
				</div>
				<table class="tbl">
					<caption></caption>
					<colgroup>
						<col style="width: 20%">
						<col style="width: 20%">
					</colgroup>
					<thead>
					</thead>
					<tbody>
						<tr>
							<td>
								<label class="form-label">상담유형</label>
								<input class="form-control" type="text" disabled readonly>
							</td>
							<td>
								<label class="form-label">교수명</label>
								<input class="form-control" type="text" disabled readonly>
							</td>
						</tr>
						<tr>
							<td>
								<label class="form-label">상담날짜</label>
								<input class="form-control" type="text" />
							</td>
							<td>
								<label class="form-label">상담시간</label>
								<input class="form-control" type="text" />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label class="form-label">제목</label>
								<input class="form-control" type="text"/>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label class="form-label">내용</label>
								<textarea class="form-control" row="3"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box-btn" style="float:right;">
			<button type="button" class="btn success">신청</button>
			<button type="button" class="btn red">취소</button>
		</div>`


$('.insertBtn').on('click', function(event){
	$('.modal-body').html(tag);
	return false;
});
</script>