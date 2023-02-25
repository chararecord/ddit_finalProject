<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>


${pagingVO.dataList[0] }

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>졸업요건 충족 관리<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
			
		<!--  cont-box-inner -->
			<div class="cont-box-inner">

				<div class="title">
					<p class="highlight-txt">
						총<em class="red-txt">${pagingVO.totalRecord }</em>명의 학생이 있습니다
					</p>
					<div class="right-part">
						<div class="search-form">
							<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;">
								<form:select path="searchType">
									<option value>전체</option>
									<form:option value="userNm" label="이름" />
									<form:option value="userId" label="학번" />
								</form:select>
								<div class="input-group">
									<form:input path="searchWord"/>
									<input id="searchBtn" class="btn btn-search primary" type="button" value="검색" />
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<!--tbl-->
				<div class="tbl-wrap">
					<table class="tbl center">
						<caption>학생 목록 테이블</caption>
						<colgroup>
							<col style="width: 5%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">선택</th>
								<th scope="col">성명</th>
								<th scope="col">학번</th>
								<th scope="col">단과대학</th>
								<th scope="col">학과</th>
								<th scope="col">졸업요건충족</th>
								<th scope="col">졸업예정구분</th>
							</tr>
						</thead>
						<tbody id="listBody">

							<tr>
								<c:set var="studentList" value="${pagingVO.dataList }"/>
							</tr>

						</tbody>
					</table>
				</div>
				<!--end tbl-->


				<!-- 페이지 네비게이션 -->
				<div id="pagingArea">
					<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
				</div>
				<!-- //페이지 네비게이션 -->
			</div>
			<!-- //  cont-box-inner -->	
			
			
		
	</div>

<!-- Modal -->
<div class="modal fade" id="modal_" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">졸업요건</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalBody">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn default" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn purple">저장</button>
      </div>
    </div>
  </div>
</div>
<!-- End Modal -->

</div>

<form:form id="searchForm" method="get" modelAttribute="simpleCondition">
	<form:hidden path="searchType" name="searchType"/>
	<form:hidden path="searchWord" />
	<input type="hidden" name="page" />
</form:form>

<script>
let listBody = $("#listBody");

let pagingArea = $("#pagingArea").on('click', "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page){return false;}
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
}); 

	let makeTrTag = function(student, index) {
		
		let checkBoxInput = $('<input>').attr({
														type: "checkbox"
														, id: "check_" + index
														, name: "studentCheck"
														, value: student.stdId
		});
		
		let checkBoxLabel = $('<label>').append(
													$('<span>').addClass('sr-only')
												).attr('for', 'check_' + index);
		
		return $('<tr>').append(
						$('<td>').append(checkBoxInput, checkBoxLabel)
							// ,$('<td>').html(student.rnum)
							,$('<td>').html($('<a>').html(student.userNm).attr('data-std-id', student.stdId))
										.attr({
											'data-bs-toggle':'modal'
											, 'data-bs-target':'#modal_'
// 											, 'data-std-id' : student.stdId
// 											, 'onclick' : 'f_modal()'
											})
							,$('<td>').html(student.stdId)
							,$('<td>').html(student.collVO.collNm)
							,$('<td>').html(student.majorVO.majorNm)
							,$('<td>').html('')
							,$('<td>').html('')
		)
	}

	let searchForm = $('#searchForm').on('submit', function(event){
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
				console.log(resp);
				listBody.empty();
				pagingArea.empty();
				searchForm[0].page.value = "";

				let pagingVO = resp.pagingVO;
				let dataList = pagingVO.dataList;
				let trTags = [];

				if(dataList) {
					$.each(dataList, function(index, student){
						trTags.push(makeTrTag(student, index));
					});
				} else {
					let tr = $('<tr>').html(
										$('<td>').attr('colspan', '6').html('조건에 맞는 학생이 없습니다.'));
					trTags.push(tr);
				}
				listBody.html(trTags);
				pagingArea.html(resp.pagingHTML);
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		})
		return false;
	}).submit();

	let searchUI = $("#searchUI").on('click', "#searchBtn", function(){
	// :input[name] : name 속성을 갖고 있는 모든 input/select 대상
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		console.log(name, value);
		searchForm.find("[name="+name+"]").val(value);
	});
	searchForm.submit();
});



$('#listBody').on('click', 'a', function(){
	console.log($(this).data('stdId'));
	let stdId = $(this).data('stdId');
	
	$.ajax({
		url : "${pageContext.request.contextPath}/student/graduationManage/" + stdId,
		method : "get",
		dataType : "json",
		contentType : "application/json;charset=UTF-8",
		success : function(resp) {
			console.log(resp);
			let collNm = resp.studentVO.collVO.collNm;
			let majorNm = resp.studentVO.majorVO.majorNm;
			console.log(majorNm);
			$('#modalBody').html('<td>' + collNm + '</td>');
			
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
});


let makeModalBody = function() {
	return 
}


	
</script>