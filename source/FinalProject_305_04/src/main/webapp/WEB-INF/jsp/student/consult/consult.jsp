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
	${profList }

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
						<form:form id="searchUI" modelAttribute="simpleCondition"
							onsubmit="return false;">
							<form:select path="searchType">
								<option value>전체</option>
								<form:option value="tit" label="제목" />
							</form:select>
							<div class="input-group">
								<form:input path="searchWord" />
								<input id="searchBtn" class="btn btn-search primary"
									type="button" value="검색" />
							</div>
							<div class="box-btn">
								<button type="button" class="insertBtn btn purple" data-bs-toggle="modal" data-bs-target="#exampleModal">상담신청</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="tbl-wrap">
				<form:form id="cancelForm" modelAttribute="consult" method="post">
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
				</form:form>
			</div>
		</div>
		

		<!-- 페이지 네비게이션 -->
		<div id="pagingArea">
			<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
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
<form:form id="searchForm" method="get" modelAttribute="simpleCondition">
	<form:hidden path="searchType" name="searchType"/>
	<form:hidden path="searchWord"/>
	<input type="hidden" name="page" />
</form:form>
<script>

/* 페이징 */
let pagingArea = $("#pagingArea").on('click', "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page){return false;}
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});


/* 상담 신청 모달 태그 */
let modalTag = `<form>
				<table class="tbl noline-tbl">
					<colgroup>
						<col style="width:40%">
						<col style="width:40%">
					</colgroup>
					<tbody>
						<tr>
							<td>
								<label class="form-label">상담유형</label>
								<div class="rc-wrap">
									<div class="rc-inner">
										<input type="radio" id="cat1" name="consCat" value="CONS1" selected=""/>
										<label for="cat1">학습</label>
									</div>
									<div class="rc-inner">
										<input type="radio" id="cat2" name="consCat" value="CONS2" selected=""/>
										<label for="cat2">학적</label>
									</div>
									<div class="rc-inner">
										<input type="radio" id="cat3" name="consCat" value="CONS3" selected=""/>
										<label for="cat3">취업</label>
									</div>
									<div class="rc-inner">
										<input type="radio" id="cat4" name="consCat" value="CONS4" selected=""/>
										<label for="cat4">심리</label>
									</div>
									<div class="rc-inner">
										<input type="radio" id="cat5" name="consCat" value="CONS5" selected=""/>
										<label for="cat5">기타</label>
									</div>
								</div>
							</td>
							<td>
								<label class="form-label">교수명</label>
								<select class="form-control" id="selProfs" required>
									<option value>상담을 원하는 교수를 선택해 주세요.</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<label class="form-label">교수명</label>
								<input class="modal-datepicker form-control datepicker" name="consDate" type="text" placeholder="날짜를 선택해 주세요." />
							</td>
							<td>
								<label class="form-label">상담시간</label>
								<input class="timepicker form-control" name="consTime" id="consTime" placeholder="시간을 선택해 주세요." />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label class="form-label">제목</label>
								<input class="form-control" name="consDate" type="text" placeholder="제목을 입력해 주세요." />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label class="form-label">상담시간</label>
								<textarea class="form-control" name="consCont" row="3" placeholder="내용을 입력해 주세요."></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</form>`;
			

/* 상담신청 버튼 클릭 function */
$('.insertBtn').on('click', function(event){
	$('.modal-form').html(modalTag);
	
	/* timepicker */
	$('.timepicker').timepicker({
	    timeFormat: 'HH:mm',
	    interval: 60,
	    minTime: '10',
	    maxTime: '17:00',
	    startTime: '09:00',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true
	});
	
	/* datepicker */
	$(function () {
		$('#consTime').timepicker();
		$('.modal-datepicker').datepicker({
			//changeMonth: true,
			//changeYear: true,
		});
	});
	
	$("#selProfs").html(sessionStorage.getItem("str"));
});
		
/* 상담신청 모달폼 닫기 클릭 function */
$('.closeBtn').on('click', function(event){
	$('#exampleModal').modal('hide')
});

/* 게시글상세 모달 태그 */
let consViewTag = function(consult, index){
	
	return $("<table>").append(
				$("<tbody>").append(
					$("<tr>").append(
						$("<td>").append(
							$("<h3>").val(consult.consTitle)
						).addClass("title pur-text center").attr("colspan","4")
					)
					, $("<tr>").append(
						$("<th>").html("상담유형")		
						, $("<td>").val(consult.consCat)
						, $("<th>").html("교수명")
						, $("<td>").val(consult.profname)
					)
					, $("<tr>").append(
						$("<th>").html("상담날짜")		
						, $("<td>").val(consult.consDate)
						, $("<th>").html("상담시간")
						, $("<td>").val(consult.consTime)
					)
					, $("<tr>").append(
						$("<th>").html("상담내용").attr("colspan","4")
					)
					, $("<tr>").append(
						$("<td>").val(consult.consCont).attr("colspan","4")
					)
				)
			).addClass("tbl");
}
	

/* 게시글 제목 클릭 function */
function fn_consView(){
	$('.modal-view').html(consViewTag);
}

/* 게시글상세 모달폼 닫기 클릭 function */
$('.closeBtn').on('click', function(event){
	$('#detailModal').modal('hide')
});


/* 게시글 태그 */
let makeConsultTag = function(consult, index){
	
	let conDate = consult.consAppDate;
	let day = conDate.split(' ');
	
	let statusBtn = function(){
		let btnTag = null;
		if(consult.consState==4){
			btnTag = $("<button>").addClass("status no-status").html("반려")
		} else if (consult.consState==3){
			btnTag = $("<button>").addClass("status ok-status").html("승인")
		} else if (consult.consState==6){
			btnTag = $("<button>").addClass("status cancel-status").html("취소")
		} else {
			btnTag = $("<button>").addClass("status wait-status").html("대기")
		}
		return btnTag;
	}
	
	let aTag = $("<a>")
		.attr({"href":"#","onclick":"fn_consView()", "data-bs-toggle":"modal", "data-bs-target":"#detailModal"})
		.html(consult.consTitle);
	
	return $("<tr>").append(
				$("<td>").html(consult.rnum).addClass("id").attr("data-cons-Id",consult.consId)
				, $("<td>").html(consult.consCat)
				, $("<td>").html(consult.consMeet)
				, $("<td>").html(aTag).attr("data-cons-title",consult.consTitle)
				, $("<td>").html(consult.profname).attr("data-profname",consult.profname)
				, $("<td>").html(day[0])
				, $("<td>").html(consult.consDate.replaceAll('/','-')).attr("data-cons-date",consult.consDate.replaceAll('/','-'))
				, $("<td>").html(consult.consTime)
				, $("<td>").append(statusBtn).attr("id","btnTd")
			);
}

/* 대기 버튼 클릭시 신청 취소하는 ajax */
$("#cancelForm").on("submit", function(event){
	event.preventDefault();
	
	let url = this.action;
	let method = this.method;
	let consId = $(".id").data();
	
	let data = {
		'consId':consId
// 		'data[0].consId':consId
	};
	
	console.log("ggg",data);
	
	$.ajax({
		url : url,
		method : method,
		data : data,
		contentType : "application/json;charset=UTF-8;",
		dataType : "json",
		success : function(resp) {
			console.log("성공!!")
			let btnTd = $("#btnTd").html(""); // btnTd 초기화
			btnTd.append(
				$("<button>").addClass("status cancel-status").html("취소")
			)
			
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
	
	return false;
});




/* 게시글 ajax */
let searchForm = $("#searchForm").on("submit", function(event){
	event.preventDefault();
	
	let $tbl = $(".tbl");
	let sourceURL = $tbl.data("source");
	let makeTrfunc = $tbl.data("makeTr");
	
	let url = this.action;
	let method = this.method;
	let queryString = $(this).serialize();
	let $tbody = $tbl.find(".listBody");
	
	$.ajax({
		url : url,
		method : method,
		data : queryString,
		dataType : "json",
		success : function(resp) {
			$tbody.empty();
			pagingArea.empty();
			
			let pagingVO = resp.pagingVO;
			let profList = resp.profList;
			let dataList = pagingVO.dataList;
			let trTags = [];
			
			/* 게시글 foreach문 */
			$.each(dataList, function(idx, single){
				trTags.push(makeConsultTag(single, idx));
				consViewTag(single, idx)
			});
			
			/* 신청폼 prof문 */
			let str = "<option value='' disabled selected>상담을 원하는 교수를 선택해 주세요.</option>";
			
			$.each(profList, function(idx, profVO){
				str = str + "<option value='"+profVO.profId+"'>"+profVO.profNm+"</option>";
			});
			
			console.log("str : " + str);
			
			sessionStorage.setItem("str",str);
			
			
			$tbody.html(trTags);
			pagingArea.html(resp.pagingHTML);

		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
	return false;
}).submit();

</script>