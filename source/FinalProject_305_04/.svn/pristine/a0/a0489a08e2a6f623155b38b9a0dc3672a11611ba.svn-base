<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"  %>
<%@ taglib uri="http://www.ddit.or.kr/class305"  prefix="ui"%>

<div class="cont">
	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			등록금 고지서 발송(교직원)
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
			<div class="tob-box">
				<!-- 				<strong class="tit">등록금 고지</strong> -->

				<p>
					등록금은 현재 재학중인 학생에게만 부여된다. <br> 등록금은 장학금이 자동적으로 차감된 금액이 부과되며, 만약
					장학금액이 등록금액을 초과할 경우 등록금은 0원으로 처리된다.
				</p>
			</div>


			<!-- cont-box-inner -->
			<div class="cont-box-inner">
				<div class="title">
					<p class="highlight-txt">
						총 <em class="red-txt">${pagingVO.totalRecord }</em>건의 게시물이 있습니다
					</p>
					<div class="right-part">
						<div class="search-form">
							<form:form id="searchUI" modelAttribute="simpleCondition"
								onsubmit="return false;">
								<form:select path="searchType">
									<option value>전체</option>
									<form:option value="tit" label="단과대학" />
									<form:option value="cont" label="학번" />
								</form:select>
								<div class="input-group">
									<form:input path="searchWord" />
									<input id="searchBtn" class="btn btn-search primary"
										type="button" value="검색" />
								</div>
							</form:form>
						</div>
					</div>
				</div>



		<!--tbl start-->
				<div class="tbl-wrap">
					<table class="tbl center">
						<!-- 					<caption>등록금 납부 고지 대상</caption> -->
						<colgroup>
							<col style="width: 5%">
							<col style="width: 5%">
							<col style="width: 15%">
							<col style="width: 20%">
							<col style="width: 15%">
							<col style="width: 5%">
							<col style="width: 15%">
							<col style="width: 15%">
						</colgroup>
						<thead>
							<tr class="table-scrollable__fixed-y">
								<th scope="col">선택</th>
								<th scope="col">No</th>
								<th scope="col">단과대학</th>
								<th scope="col">학과</th>
								<th scope="col">학번</th>
								<th scope="col">학년</th>
								<th scope="col">이름</th>
								<th scope="col">고지현황</th>
							</tr>
						</thead>

						<br>

						<tbody id=listBody>
							<div class="title">
								<h3>등록금 납부 고지 대상자</h3>
								<div class="box-btn">
									<button type="button" class="btn default">전체선택</button>
									<button type="button" class="btn purple">고지서 발송</button>
								</div>
							</div>

							<tr>
								<c:set var="tuitionStdList" value="${pagingVO.dataList }" />
								<c:choose>
									<c:when test="${not empty tuitionStdList }">
										<c:forEach items="${tuitionStdList }" var="stdList"
											varStatus="i">
											<tr>
												<td><input type="checkbox" id="checkbox44444"
													name="radio-group"> <label for="checkbox44444">
														<span class="sr-only"></span>
												</label></td>
												<td>${stdList.rnum }</td>
												<td>${stdList.collVO.collNm}</td>
												<td>${stdList.majorVO.majorNm }</td>
												<td>${stdList.tuitionPayVO.stdId }</td>
												<td>${stdList.recordVO.camYear }</td>
												<td>${stdList.usrVO.userNm }</td>
												<td>${stdList.tuitionPayVO.payStat }</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<td colspan="8">조건에 맞는 게시글이 없습니다.</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</tbody>
					</table>
				</div>
				<!--tbl end-->
			</div>
		</div>
			<!-- end cont-box-inner -->
	</div>
</div>
	
	<form:form hiddent="true" id="searchForm" method="get"
		modelAttribute="simpleCondition">
		<form:hidden path="searchType" name="searchType" />
		<form:hidden path="searchWord" />
		<input type="hidden" name="page" />
	</form:form>
	<script>
		let listBody = $("#listBody");

		let searchForm = $("#searchForm").on("submit", function(event) {
			event.preventDefault;

			let url = this.action;
			let method = this.method;
			let queryString = $(this).serialize();

			$.ajax({
				url : url,
				method : method,
				data : queryString,
				dataType : "json",
				success : function(resp) {
					// 				listBody.empty();
					searchForm[0].page.value = "";

					let pagingVO = resp.pagingVO;
					let dataList = pagingVO.dataList;

					pagingArea.html(resp.pagingHTML)
				},
				error : function(jqXHR, status, error) {
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
			return false;
		}).submit();

		let searchUI = $("#searchUI").on("click", "#searchBtn", function() {
			let inputs = searchUI.find(":input[name]");
			$.each(inputs, function(index, input) {
				let name = this.name;
				let value = $(this).val();
				searchForm[0][name].value = value;
			});
			searchForm.submit();
		});
	</script>