<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			장학금 수혜 내역(학생)
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>장학금
				수혜 내역</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
		<div class="tob-box">
			<strong class="tit">장학금 수여 기준 </strong>
			<p>
				수석 장학금 : 성적 기준(직전 학기) 학과별, 학년별 석차 1등에게 장학금 2,000,000원 지급<br> 우수
				장학금 : 성적 기준(직전 학기) 학과별, 학년별 석차 2등에게 장학금 1,500,000원 지급<br> 격려
				장학금 : 성적 기준(직전 학기) 학과별, 학년별 석차 3등에게 장학금 1,000,000원 지급<br>
			</p>
		</div>

		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<p class="highlight-txt">
					총<em class="red-txt">${pagingVO.totalRecord }</em>건의 게시물이 있습니다
				</p>
			</div>

			<!--start tbl-->
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

						</tr>
					</thead>
					<tbody id=listBody>
						<tr>
							<c:set var="schHist" value="${pagingVO.dataList }" />
							<c:choose>
								<c:when test="${not empty schHist }">
									<c:forEach items="${schHist }" var="sch" varStatus="i">
										<tr>
											<td>${sch.rnum }</td>
											<td>${sch.semesterList[i.index].semeYear }</td>
											<td>${sch.semesterList[i.index].seme }</td>
											<td>${sch.scholarshipList[i.index].schsNm }</td>
											<td> <fmt:formatNumber value="${sch.scholarshipList[i.index].schsAmount}" pattern="#,###"/>원</td> 
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
			<div id="pagingArea">
				<ui:pagination pagingVO="${pagingVO }" type="bootstrap" />
			</div>
			<!-- //페이지 네비게이션 -->
		</div>
		<!-- end cont-box-inner -->
	</div>
</div>
<%-- <form:form hiddent="true" id="searchForm" method="get" modelAttribute="simpleCondition"> --%>
<%-- 	<form:hidden path="searchType" name="searchType" /> --%>
<%-- 	<form:hidden path="searchWord" /> --%>
<!-- 	<input type="hidden" name="page" /> -->
<%-- </form:form> --%>
<%-- 				${schHist} --%>


<script>
	let listBody = $("#listBody");
	
	let pagingArea = $("#pagingArea").on('click', "a.paging", function(event){
		event.prevent5Default();
		let page = $(this).data("page");
		if(!page){
			return false;
		}
		searchForm.find("[name=page]").val(page);
		searchForm.submit();
		return false;
	});
	
	
	/* 내용 넣어주기  */
// 	let makeTrTag = function(schHist){
// 		return $("<tr>").append(
// 				$("<td>").html(schHist.rnum)
// 				,$("<td>").html(schHist.semeYear) 
// 				,$("<td>").html(schHist.seme) 
// 				,$("<td>").html(schHist.scholarshipList.schsNm) 
// 				,$("<td>").html(schHist.scholarshipList.schsAmount) 
// 		);
// 	}
	
	let searchForm = $("#searchForm").on("submit",function(event){
		event.preventDefault();
		
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
				pagingArea.empty();
				searchForm[0].page.value="";
				
				let pagingVO = resp.pagingVO;
				let dataList = pagingVO.dataList;
// 				let trTags = [];
				
// 				if(dataList){
// 					$.each(dataList, function(index, schHist){
// 						trTags.push(makeTrTag(schHist));
// 					});
// 				}else{
// 					let tr = $("<tr>").html(
// 								$("<td>").attr("colspan", "5").html("장학금 수혜 내역이 없습니다."));					
// 					trTags.push(tr);
// 				}
// 				listBody.html(trTags);
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

	
	let searchUI = $("#searchUI").on("click", "#searchBtn", function(){
		let inputs = searchUI.find(":input[name]");
		$.each(inputs, function(index, input){
			let name = this.name;
			let value = $(this).val();
			searchForm[0][name].value = value;
		});
		searchForm.submit();
	});
	</script>