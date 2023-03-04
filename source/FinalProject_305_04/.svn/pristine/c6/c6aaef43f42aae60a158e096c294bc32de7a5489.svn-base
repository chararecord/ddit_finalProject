<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<security:authentication property="principal" var="usrVOWrapper" />
<security:authentication property="principal.realUser" var="authUser" />

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
	
	
		<div class="cont-box-inner">
			<div class="tbl-half half28">
				<div class="tbl-wrap mr20">
                    <div class="title">
						<h4 class="majorName"></h4>
                        <h4> 학생 목록</h4> 
						<span class="total"><em class="totalStd"></em>명</span>
                    </div>
                    <div class="table-scrollable">
	                    <div class="table-responsive">
		                    <table class="tbl tbl-hover ">
		                        <caption></caption>
		                        <colgroup>
		                            <col style="width: 15%">
		                            <col style="width: 40%">
		                            <col style="width: auto">
		
		                        </colgroup>
		                        <thead>
		                            <tr>
		                                <th scope="col">No</th>
		                                <th scope="col">학번</th>
		                                <th scope="col">이름</th>
		                			 </tr>
		                        </thead>
		                        <tbody class="tbodyStdList">
		                        </tbody>
		                    </table>
	                    </div>
                    </div>
                </div>
				<div class="tbl-wrap ml20">
                    <div class="title">
                       <h3 class="left">상담 내역</h3>
						<span class="total"><em class="totalCons"></em>건</span>
                        <div class="right-part w50" style="box-sizing: border-box; float: right;">
							<div class="search-form">
								<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;">
									<form:select path="searchType">
										<option value>전체</option>
										<form:option value="userNm" label="이름" />
										<form:option value="consTitle" label="제목" />
										<form:option value="consCont" label="내용" />
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
   					<table class="tbl center"
						data-source="${pageContext.request.contextPath}/student/consult/on"
						data-make-tr="makeConsultUI">
                        <caption></caption>
                        <colgroup>
							<col style="width: 5%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: auto">
							<col style="width: 8%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 8%">
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
                        <tbody class="tbodyConsList">
                        	<tr>
                        		<td colspan="9">상담 내역이 없습니다.</td>
                        	</tr>
                        </tbody>
	                    </table>
						<!-- 페이지 네비게이션 -->
						<div id="pagingArea">
							<ui:pagination pagingVO="${pagingVO }" type="bootstrap" />
						</div>
						<!-- //페이지 네비게이션 -->
                </div>
			</div>
		</div>
		<div>
		</div>
		

		
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
				      <div class="btn-view">
				      </div>
				      <div class="reply-view">
				      </div>
			      </div>
		      </div>
		      <div class="modal-footer">
				<div class="box-btn" style="float:right;">
			      	<button type="button" class="btn success sendBtn" data-cons-state="3">승인</button>
			      	<button type="button" class="btn red sendBtn" data-cons-state="4">반려</button>
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
	<input type="hidden" name="id" />
</form:form>
<script>

let tbodyStdList = $(".tbodyStdList");
let tbodyConsList = $(".tbodyConsList");
let closeBtn = $('.closeBtn');
let selectedBtn;
let stdClick;

let pagingArea = $("#pagingArea").on('click', "a.paging", function(event) {
	event.preventDefault();
	let page = $(this).data("page");
	if (!page) {return false;}
	pageForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

/* 학생 리스트 tag */
let makeTbodyStdList = function(std){
	return $("<tr>").append(
				$("<td>").addClass("center").html(std.rnum)
				, $("<td>").addClass("center").html(std.userId)
				, $("<td>").addClass("center").html(std.userNm)
		).addClass("table-scrollable__fixed-y trStd").attr("data-std-id", std.userId).css("cursor","pointer")
}

/* 학생 상담 리스트 tag */
let makeTbodyConsList = function(cons){
	
	let conDate = cons.consAppDate;
	let day = conDate.split(' ');
	
	let statusBtn = function(){
		let btnTag = null;
		if(cons.consState==4){
			btnTag = $("<button>").addClass("status no-status").attr("type","button").html("반려")
		} else if (cons.consState==3){
			btnTag = $("<button>").addClass("status ok-status").attr("type","button").html("승인")
		} else if (cons.consState==6){
			btnTag = $("<button>").addClass("status cancel-status").attr("type","button").html("취소")
		} else {
			btnTag = $("<button>").addClass("status wait-status").attr("data-id",cons.consId).attr("data-cons-id",cons.consId).html("대기")
		}
		return btnTag;
	}
	
	let aTag = $("<a>")
	.attr({"href":"#", "data-bs-toggle":"modal", "data-bs-target":"#detailModal"})
	.html(cons.consTitle);
		
	return $("<tr>").append(
				$("<td>").html(cons.rnum).addClass("rnum").attr("data-cons-Id",cons.consId)
				, $("<td>").html(cons.consCat)
				, $("<td>").html(cons.consMeet)
				, $("<td>").html(aTag).addClass("classConsTitle").attr("data-cons-title",cons.consTitle).attr("data-cons-id",cons.consId)
				, $("<td>").html(cons.profname)
				, $("<td>").html(day[0])
				, $("<td>").html(cons.consDate.replaceAll('/','-')).attr("data-cons-date",cons.consDate.replaceAll('/','-'))
				, $("<td>").html(cons.consTime)
				, $("<td>").html(statusBtn).attr({"data-cons-id":cons.consId,"id":cons.consId})
	)
}

/* modal 게시글 view tag */
let consViewTag = function(consult){
	
	return $("<table>").append(
				$("<tbody>").append(
					$("<tr>").append(
						$("<td>").append(
							$("<h3>").html(consult.consTitle)
						).addClass("title center pt20 pb20").attr("colspan","4")
					)
					, $("<tr>").append(
						$("<th>").html("상담유형")		
						, $("<td>").html(consult.consCat).addClass("center")
						, $("<th>").html("교수명")
						, $("<td>").html(consult.profname).addClass("center")
					)
					, $("<tr>").append(
						$("<th>").html("상담날짜")		
						, $("<td>").html(consult.consDate.replaceAll('/','-')).addClass("center")
						, $("<th>").html("상담시간")
						, $("<td>").html(consult.consTime).addClass("center")
					)
					, $("<tr>").append(
						$("<th>").html("상담내용").attr("colspan","4")
					)
					, $("<tr>").append(
						$("<td>").html(consult.consCont).attr("colspan","4").addClass("pt20 pb20 pl20 pr20")
					)
				)
			).addClass("tbl consViewTbl").attr("data-cons-id", consult.consId);
}

//-----------------------------------------------------------------

/* 게시글상세 모달폼 닫기 클릭 function */
$('.closeBtn').on('click', function(event){
	$('#detailModal').modal('hide')
});

//-----------------------------------------------------------------

/* 버튼 수정 */
 
function fn_btnChange(consId){
	console.log("함수탔어?")
	let statusBtn = `document.querySelector("#${consId}")`;
	
	console.log("statusBtn??", statusBtn)
	console.log("statusBtn.data??", statusBtn.data("consId"))
	console.log("consId??", consId)
	
	if(statusBtn.data("consId") == consId){
		console.log("if문 탔어??")
		statusBtn.html("");
		statusBtn.html(statusBtn);
	}
}


//-----------------------------------------------------------------

/* 상담 승인 반려 */
$(".sendBtn").on("click", function(event){
	
	let state = $(this).data("consState");
	let stdId = $(".trStd").data("stdId");
	let consId = $(".modal-view").find(".consViewTbl").data("consId")
	let data = {
		"consId":consId
		, "consState":state
	}
	
	let url = $(this).action;
	
	/* 승인할 때 */
	if(state==3) {
		if (confirm('승인하시겠습니까?')){
			$.ajax({
				url : "${pageContext.request.contextPath}/prof/consult/" + stdId + "/" + consId,
				method : "post",
				data : JSON.stringify(data),
				contentType : "application/json;charset=UTF-8",
				dataType : "text",
				success : function(resp) {
					console.log(resp);
					$('#detailModal').modal('hide');
					alert("승인되었습니다.");
					selectedBtn.innerHTML="승인";
					$(selectedBtn).removeClass("wait-status");
					$(selectedBtn).addClass("ok-status");
				},
				error : function(jqXHR, status, error) {
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
		}
		
	/* 반려할 때 */
	} else {
		if (confirm('반려하시겠습니까?')){
			$.ajax({
				url : "${pageContext.request.contextPath}/prof/consult/" + stdId + "/" + consId,
				method : "post",
				data : JSON.stringify(data),
				contentType : "application/json;charset=UTF-8",
				dataType : "text",
				success : function(resp) {
					console.log(resp);
					$('#detailModal').modal('hide');
					alert("반려되었습니다.");
					selectedBtn.innerHTML="반려";
					$(selectedBtn).removeClass("wait-status");
					$(selectedBtn).addClass("no-status");
				},
				error : function(jqXHR, status, error) {
					console.log(jqXHR);
					console.log(status);
					console.log(error);
				}
			});
		}
	}
})

//------------------------------------------------------------------------------------

/* 게시글 제목 클릭 ajax */
$(document).on("click",".classConsTitle",function(){
	
	let stdId = $(".trStd").data("stdId");
	let consId = $(this).data("consId");
	let data = {
		"consId" : consId
	}
	let url = "/prof/consult/" + stdId + "/" + consId;
	let thiss = this;
	selectedBtn = this.parentElement.children[8].children[0];
	
	$.ajax({
		url : "${pageContext.request.contextPath}"+url,
		type : "get",
		dataType : "text",
		success : function(resp) {
			
			let consult = JSON.parse(resp);

			/* modal에 tag 집어넣기 */
			$('.modal-view').html(consViewTag(consult));
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
});

/* 학생을 클릭하면 상담 내역 불러오는 ajax */
$(document).on("click", ".trStd", function(event){
	event.preventDefault();
	$(".trStd").removeClass("tbl-selected");
	$(this).addClass("tbl-selected");
	
	let stdId = $(this).data("stdId");
	let profId = ${authUser.userId};
	let url = this.action;
	let data = {
		"stdId":stdId
		,"profId":profId
	}
	
	console.log(data);
	
	$.ajax({
		url : url,
		method : "get",
		data : data,
		dataType : "json",
		success : function(resp) {
			
			tbodyConsList.empty();
			pagingArea.empty();
			searchForm[0].page.value="";
			
			let pagingVO = resp.pagingVO;
			console.log("pagingVO >>> "  ,pagingVO)
			let dataList = pagingVO.dataList;
			let trTags = [];
			
			$(".totalCons").html(pagingVO.totalRecord);
			
			if(dataList != null && dataList != ""){
				$.each(dataList, function(idx, single){
					trTags.push(makeTbodyConsList(single, idx));
				});
			} else {
				let tr = $("<tr>").append(
						$("<td>").attr("colspan", "9").html("상담 내역이 없습니다."));
				trTags.push(tr);
			}
			
			tbodyConsList.html(trTags);
			pagingArea.html(resp.pagingHTML);
			document.getElementById('.trStd').click();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
})


//------------------------------------------------------------------------------------

/* 학생 리스트 불러오는 ajax */
let searchForm = $("#searchForm").on("submit", function(event){
	event.preventDefault();
	
	let id = ${authUser.userId}
	let url = this.action;
	let method = this.method;
	
	let data = {
		"id":id
	}
	
	$.ajax({
		url : url + "/" + id,
		method : method,
		data : data,
		dataType : "json",
		success : function(resp) {
			
			tbodyStdList.empty();
			
			let dataList = resp.dataList;
			let trTags = [];
			
			$(".totalStd").html(resp.totalRecord);
			$(".majorName").html(dataList[0].majorVO.majorNm);
			$.each(dataList, function(idx, single){
				trTags.push(makeTbodyStdList(single, idx));
			})
			tbodyStdList.html(trTags);

		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}).submit();

</script>