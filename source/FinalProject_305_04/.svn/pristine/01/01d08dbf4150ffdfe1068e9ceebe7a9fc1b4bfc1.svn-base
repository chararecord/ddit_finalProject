<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%-- ${studentInfo } --%>
<hr>
${studentVO }
<hr>
<%-- ${studentVO.gradFulList } --%>
<!-- <hr> -->
${gradReqList }
<hr>
<%-- ${gradFulList } --%>
<%-- ${currLectList } --%>
<!-- <hr> -->
<%-- ${nowCredit } --%>

<%-- <c:set var="stdInfo" value="${studentInfo }" /> --%>
<%-- <c:set var="usrInfo" value="${studentInfo.usrVO }" /> --%>
<%-- <c:set var="recordList" value="${studentInfo.recordList }" /> --%>




<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>졸업요건<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
				<h3>학적 상태</h3>
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
						<c:choose>
							<c:when test="${not empty studentVO }">
								<tr>
									<th scope="row">학번</th>
									<td>${studentVO.stdId }</td>
									<th scope="row">성명</th>
									<td>${studentVO.usrVO.userNm }</td>
									<th scope="row">학년</th>
									<td>${studentVO.camYear } 학년</td>
								</tr>
								<tr>
									<th scope="row">단과대학</th>
									<td>${studentVO.collVO.collNm }</td>
									<th scope="row">소속학과</th>
									<td>${studentVO.majorVO.majorNm }</td>
									<th scope="row">학적상태</th>
									<td></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<th scope="row">학번</th>
									<td></td>
									<th scope="row">성명</th>
									<td></td>
									<th scope="row">학년</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">단과대학</th>
									<td></td>
									<th scope="row">소속학과</th>
									<td></td>
									<th scope="row">학적상태</th>
									<td></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
		<!--// cont-box-inner -->
		
		
		<!-- cont-box-inner -->
			<div class="cont-box-inner">
				<div class="title">
					<h3>졸업요건 총족 현황</h3>
				</div>
				<!--tbl-->
				<div class="tbl-wrap">
					<table class="tbl center">
						<caption>description about table</caption>
						<colgroup>
							<col style="width: 20%" />
							<col style="width: 15%" />
							<col style="width: 15%" />
							<col style="width: 15%" />
							<col style="width: 15%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">이수구분</th>
								<th scope="col">기준</th>
								<th scope="col">취득</th>
								<th scope="col">이수여부</th>
								<th scope="col">잔여</th>
							</tr>
						</thead>
						<tbody id="listBody">
							<c:choose>
								<c:when test="${not empty gradReqList }">
									<c:forEach items="${gradReqList }" var="gradReqList" varStatus="status">
										<tr>
											<td id="reqNm_${status.index }">${gradReqList.reqItem }</td>
											<td id="reqSt_${status.index }">${gradReqList.reqStand }</td>
											<td id="get_${status.index }"></td>
											<td id="check_${status.index }"></td>
											<td id="rest_${status.index }"></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5">해당 내용이 없습니다.</td>
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


<script>

let reqTotalCredit = parseInt($('#reqSt_0').text());
let reqMJ1 = parseInt($('#reqSt_1').text());
let reqMJ2 = parseInt($('#reqSt_2').text());
let reqGE1 = parseInt($('#reqSt_3').text());
let reqGE2 = parseInt($('#reqSt_4').text());
// console.log($('#reqNm_0').text());

// console.log(reqTotalCredit);
// console.log(reqMJ1);
let required = {
	"totalCredit" : reqTotalCredit
	, "majorReqCredit" : reqMJ1
	, "majorOptCredit" : reqMJ2
	, "geReqCredit" : reqGE1
	, "geOptCredit" : reqGE2
}

console.log('required', required);
// console.log('${studentVO.majorReqCredit}');
let acquired = {
	"totalCredit" : parseInt('${studentVO.totalCredit}')
	, "majorReqCredit" : parseInt('${studentVO.majorReqCredit}')
	, "majorOptCredit" : parseInt('${studentVO.majorOptCredit}')
	, "geReqCredit" : parseInt('${studentVO.geReqCredit}')
	, "geOptCredit" : parseInt('${studentVO.geOptCredit}')
}
console.log('acquired', acquired);

let rest = {
	"totalCredit" : required['totalCredit'] - acquired['totalCredit']
	, "majorReqCredit" : required['majorReqCredit'] - acquired['majorReqCredit']
	, "majorOptCredit" : required['majorOptCredit'] - acquired['majorOptCredit']
	, "geReqCredit" : required['geReqCredit'] - acquired['geReqCredit']
	, "geOptCredit" : required['geOptCredit'] - acquired['geOptCredit']
}
// console.log("rest", rest);


$('#get_0').text(acquired['totalCredit']);
$('#get_1').text(acquired['majorReqCredit']);
$('#get_2').text(acquired['majorOptCredit']);
$('#get_3').text(acquired['geReqCredit']);
$('#get_4').text(acquired['geOptCredit']);

$('#rest_0').text(rest['totalCredit']);
$('#rest_1').text(rest['majorReqCredit']);
$('#rest_2').text(rest['majorOptCredit']);
$('#rest_3').text(rest['geReqCredit']);
$('#rest_4').text(rest['geOptCredit']);




</script>
