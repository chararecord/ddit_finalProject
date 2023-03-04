<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>교수정보관리<button type="button" class="star on"><span class="sr-only">즐겨찾기</span></button></h2>
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
	
		<div class="cont-box-inner">
			<div class="title">
				<p class="highlight-txt">총<em class="red=txt">${pagingVO.totalRecord }</em>건의 게시물이 있습니다</p> 
				<div class="right-part">
					<div class="search-form">
						<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;">
							<form:select path="searchType">
								<option value>전체</option>
								<form:option value="userId" label="교번" />
								<form:option value="userNm" label="이름" />
							</form:select>
							<div class="input-group">
								<form:input path="searchWord"/>
								<input id="searchBtn" class="btn btn-search primary" type="button" value="검색">
							</div>
							<div class="box-btn">
								<button type="button" class="insertBtn btn purple" id="insertBtn">등록</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>학생목록 테이블</caption>
					<colgroup>
						<col style="width: 5%"/>
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="w5">버튼</th>
							<th scope="col" class="w5">글번호</th>
							<th scope="col" class="w10">교번</th>
							<th scope="col" class="w10">이름</th>
							<th scope="col" class="w10">단과명</th>
							<th scope="col" class="w10">학과명</th>
							<th scope="col" class="w10">재직여부</th>
						</tr>
					</thead>
					<tbody id="listBody">
						<tr>
							<c:set var="profInfoList" value="${pagingVO.dataList }" />
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
		<!-- end cont-box-inner -->
	</div>
</div>


<!--서치폼 -->
<form:form id="searchForm" method="get" modelAttribute="simpleCondition">
	<form:hidden path="searchType" name="searchType"/>
	<form:hidden path="searchWord"/>
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

let makeTrTag = function(profInfo, index) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/emp/profInfoView?what=" + profInfo.profId)
				.html(profInfo.profId);
	
	let checkBoxInput = $("<input>")
						.attr({
							type: "checkbox"
							, id: "check_" + index
							, name: "profInfoCheck"
							, value: profInfo.profId
	});
	
	let checkBoxLabel = $("<label>").append(
						$("<span>").addClass("sr-only")
						).attr('for', "check_" + index)
						
	
	//첨부파일 들어갈 곳
	
	//첨부파일 들어갈 곳
	
	
	if (profInfo.levDate == null) {
		return $("<tr>").append(
					$("<td>").append(
						checkBoxInput, checkBoxLabel	
					)
					,$("<td>").html(profInfo.rnum)
					,$("<td>").html(aTag)
					,$("<td>").html(profInfo.userNm)
					,$("<td>").html(profInfo.collList.collNm)
					,$("<td>").html(profInfo.majorList.majorNm)
					,$("<td>").html("재직")
		)
		
	}else{
		return $("<tr>").append(
					$("<td>").append(
						checkBoxInput, checkBoxLabel	
					)
					,$("<td>").html(profInfo.rnum)
					,$("<td>").html(aTag)
					,$("<td>").html(profInfo.userNm)
					,$("<td>").html(profInfo.collList.collNm)
					,$("<td>").html(profInfo.majorList.majorNm)
					,$("<td>").html("퇴직")
		)
		
	}	
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
			listBody.empty();
			pagingArea.empty();
			searchForm[0].page.value="";
			
			let pagingVO = resp.pagingVO;
			let dataList = pagingVO.dataList;
			let trTags = [];
			
			if(dataList){
				$.each(dataList, function(index,profInfo){
					trTags.push(makeTrTag(profInfo,index));
				});
			} else {
				let tr = $("<tr>").html(
							$("<td>").attr("colspan", "5").html("조건에 맞는 게시글이 없습니다"));
				trTags.push(tr);
			}
			listBody.html(trTags);
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



$(".insertBtn").on('click', function(event){
	event.preventDefault();
	let url = "${pageContext.request.contextPath}/emp/profInfoInsert";
	location.href = url;
});


</script>




	
