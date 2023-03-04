<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@page import="kr.or.ddit.vo.CalendarVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<style>
	#box-btn {
		float: right;
	}

	
	/* 모달 */
	#regiModal {
		width: 100%;
		height: 700px;
		margin: 150px auto;
		padding: 0;
	}
	
	.fc-toolbar-title {
    	display: inline-block;
	}
	
	
</style>

<%
List<CalendarVO> calendarList = (List<CalendarVO>)request.getAttribute("calendarList");
%>
<!-- 달력 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
<script	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.1/index.global.min.js'></script>

<style>
	#calBody {
		text-align: center;
	}
	
	.modalTable {
		position: relative;
		width: 100px;
	}
	
/* 	.fc-prev-button { */
		
/* 	} */

/* 	.fc-toolbar-chunk { */
/* 		width: 100%; */
/* 	} */
	
</style>


<link href='fullcalendar-5.11.0/lib/main.css' rel='stylesheet' />
<!-- <script src='fullcalendar-5.11.0/lib/main.js'></script>	 -->
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2> 학사일정 관리
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i><strong>학사일정관리</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
		<div class="cont-box-inner">
			<div class="tbl-half half46">

<!-- 왼쪽 -->
				<div class="tbl-wrap">
                    <div class="title">
                        <h4>일정목록</h4> 
						<button type="button" class="btn btn-s default" id="calModalBtn" style="float:right" data-bs-toggle="modal" data-bs-target="#exampleModal">일정등록</button>
						<input type="hidden" name="tempCalendarNo" id="tempCalendarNo" />
						<div class="right-part">
							<div class="search-form">
<%-- 								<form:form id="searchUI" modelAttribute="simpleCondition" onsubmit="return false;"> --%>
<%-- 									<form:select path="searchType" class="w10"> --%>
<!-- 										<option value>전체</option> -->
<%-- 										<form:option value="camYear" label="학년" /> --%>
<%-- 										<form:option value="userId" label="학번" /> --%>
<%-- 										<form:option value="userNm" label="이름" /> --%>
<%-- 									</form:select> --%>
<!-- 									<div class="input-group"> -->
<%-- 										<form:input path="searchWord"/> --%>
<!-- 										<input id="searchBtn" class="btn btn-search primary" type="button" value="검색"> -->
<!-- 									</div> -->
<%-- 								</form:form> --%>
							</div>
						</div>
                    </div>
					
					<div class="tbl-wrap">
	                    <table class="tbl">
	                        <caption>학사일정 목록</caption>
	                        <colgroup>
	                            <col style="width: 5%">
	                            <col style="width: 10%">
	                            <col style="width: 20%">
	                            <col style="width: 10%">
	                            <col style="width: 10%">
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th scope="col">체크</th>
	                                <th scope="col">학사년도</th>
	                                <th scope="col">제목</th>
	                                <th scope="col">시작일자</th>
	                                <th scope="col">종료일자</th>
	                			</tr>
	                        </thead>
	                        <tbody id="calBody">
	                            <tr>
	                            	<c:set var="calendarList" value="${pagingVO.dataList }" />
	                            </tr>
	                        </tbody>
	                    </table>
                    </div>
                	<!-- 페이지 네비게이션 -->
					<div id="pagingArea">
						<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
					</div>
					<!-- //페이지 네비게이션 -->
                </div>
                
                
                
                
<!-- 오른쪽 -->
				<div class="tbl-wrap">
					<!-- 달력 -->
					<div class="calendar">
						<div id='calendar'></div>
					</div>		
							
					<!-- 등록 모달창 -->
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">강의계획서 상세조회</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
							
							<div class="tbl-wrap">
								<div class="title">
									<h3>학사일정 등록</h3>
									<p class="highlight red-txt">
										<em class="red-txt">*</em>는 필수입력사항입니다.
									</p>
									<div class="box-btn">
										<button type="button" id="regiBtn" class="btn purple">등록</button>
									</div>
								</div>
								<table class="tbl" id="modalTable">
									<colgroup>
										<col style="width: 7%;">
										<col style="width: 20%;">
									</colgroup>
									<tbody>
										<tr>
											<th>학사년도<em class="red-txt">*</em></th>
											<c:set var="semeList" value="${semesterVO }" />
											<td>
											<select id="semeId" name="semeId" class="w100">
												<option value>학사년도 선택</option>
											<c:choose>
												<c:when test="${not empty semeList }">
													<c:forEach items="${semeList }" var="SemeName">
													<option value="${SemeName.semeId }">${SemeName.semeYear }</option>
													</c:forEach>
												</c:when>
											</c:choose>
											</select>
											</td>
										</tr>
										<tr>
											<th>제목<em class="red-txt">*</em></th>
											<td>
												<input type="text" name="calendarTitle" id="calendarTitle" class="w100" />
											</td>
										</tr>
										<tr>
											<th>시작/종료기간<em class="red-txt">*</em></th>
											<td>
												시작   <input type="date" name="calendarStart" id="calendarStart" class="w40"/><br/>
												종료   <input type="date" name="calendarEnd" id="calendarEnd" class="w40"/>
											</td>
										</tr>
										<tr style="height:200px">
											<th>내용</th>
											<td>
												<input type="text" name="calendarMemo" id="calendarMemo" class="w100" 
												style="height:200px" />
											</td>
										</tr>
									</tbody>
								</table>
							</div>
					      </div>
					      <div class="modal-footer">
					      </div>
					    </div>
					  </div>
					</div>
					<!-- 등록 모달창 -->
					
					
					
					<!-- 상세보기 모달창 -->
					<div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">강의계획서 상세조회</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
						      <div class="tbl-wrap">
							      <div class="modal-view"></div>
						      </div>
					      </div>
					      <div class="modal-footer">
					      </div>
					    </div>
					  </div>
					</div>
					<!-- 상세보기 모달창 -->
					
					
					
					<!-- 수정하기 모달창 -->
					<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">강의계획서 상세조회</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
						      <div class="tbl-wrap">
							      <div class="modal-modify"></div>
						      </div>
					      </div>
					      <div class="modal-footer">
					      </div>
					    </div>
					  </div>
					</div>
					<!-- 수정하기 모달창 -->
				</div>
<!-- 오른쪽 -->
                
	</div>
</div>

<form:form id="searchForm" method="get" modelAttribute="simpleCondition">
	<form:hidden path="searchType" name="searchType"/>
	<form:hidden path="searchWord"/>
	<input type="hidden" name="page" />
</form:form>

<script>



function fn_init(){
	//페이지 왼쪽 테이블 띄우기
	calBody = $("#calBody");
	
	let pagingArea = $("#pagingArea").on('click', "a.paging", function(event){
		event.preventDefault();
		let page = $(this).data("page");
		if(!page){return false;}
		searchForm.find("[name=page]").val(page);
		searchForm.submit();
		
		return false;
	});
	
	
	
	
	//캘린더 초기화
	let makeTrTag = function(calendar, index) {
		
		let aTag = $("<a>")
	// 				.attr("href", "${pageContext.request.contextPath}/campus/camCalendar?what=" + calendar.calendarTitle)
					.attr({"href":"#", "data-bs-toggle":"modal", "data-bs-target":"#viewModal","data-calendar-no":calendar.calendarNo})
					.html(calendar.calendarTitle);
		
		let checkBoxInput = $("<input>")
							.attr({
								type: "checkbox"
								, id: "check_" + index
								, name: "calendarCheck"
								, value: calendar.calendarNo
							});
		
		
		let checkBoxLabel = $("<label>").append(
								$("<span>").addClass("sr-only")
							).attr('for', "check_" + index)
							
							
		return $("<tr>").append(
				$("<td>").append(
					checkBoxInput, checkBoxLabel	
				)
				,$("<td>").html(calendar.semeYear)
				,$("<td>").html(aTag).addClass("classTitle")
				,$("<td>").html(calendar.calendarStart)
				,$("<td>").html(calendar.calendarEnd)
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
				calBody.empty();
				pagingArea.empty();
				searchForm[0].page.value="";
				
				let pagingVO = resp.pagingVO;
				let dataList = pagingVO.dataList;
				let trTags = [];
				
				if(dataList){
					$.each(dataList, function(index,calendar){
						trTags.push(makeTrTag(calendar,index));
					});
				} else {
					let tr = $("<tr>").html(
								$("<td>").attr("colspan", "5").html("조건에 맞는 게시글이 없습니다"));
					trTags.push(tr);
				}
				calBody.html(trTags);
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
		let inputs = searchUI.find(":input[name]");
		$.each(inputs, function(index, input){
			let name = this.name;
			let value = $(this).val();
			console.log(name, value);
			searchForm.find("[name="+name+"]").val(value);
		});
		searchForm.submit();
	});





	
	
	
	
	
	
	
	
	
	
	
	
	
	


//-------------------------------------------------------------------------

//캘린더
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
			headerToolbar : { // 헤더에 표시할 툴 바
				start : 'prev next today',
				center : 'title',
				end : 'dayGridMonth,dayGridWeek,dayGridDay'
			},
			titleFormat : function(date) {
				return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
			},
			//initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
			selectable : true, // 달력 일자 드래그 설정가능
			droppable : true,
			editable : true,
			nowIndicator: true, // 현재 시간 마크
			locale: 'ko' // 한국어 설정
		});
		calendar.render();
		
	});




	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			locale : 'ko', // 한국어 설정
			headerToolbar : {
	        	start : "",
	            center : "prev title next",
	            end : 'dayGridMonth,dayGridWeek,dayGridDay'
	            },
		selectable : true,
		droppable : true,
		editable : true,
		events : [ 
<%-- 	    	    <%List<Calendar> calendarList = (List<Calendar>) request.getAttribute("calendarList");%> --%>
		<%if (calendarList != null) {%>
		<%for (CalendarVO calendar : calendarList) {%>
		{
			title : '<%=calendar.getCalendarTitle()%>',
		    start : '<%=calendar.getCalendarStart()%>',
		    end : '<%=calendar.getCalendarEnd()%>',
		    color : '#' + Math.round(Math.random() * 0xffffff).toString(16)
		 },
		<%}
	}%>
					]
					
				});
				calendar.render();
			});
	
};

fn_init();



//---------------------------------------------------------------------------------------------------

//모달 View 내용 
let calendarViewCon = function(calendar) {
	
	return $("<div class='tbl=wrap'>").append(
			$("<div class='title'>").append(
				$("<h3>학사일정 상세보기</h3>"),			
				$("<div class='box-btn'>").append(
					$("<button type='button' id='modiBtn' class='btn purple' style='float:right'>수정</button>"),
					$("<button type='button' id='delBtn' class='btn purple' style='float:right'>삭제</button>").attr("data-calendar-no", calendar.calendarNo)
				),
			),
			$("<table class='tbl'>").append(
					$("<tbody>").append(
						$("<tr>").append(		
							$("<th>").html("학사년도")		
							, $("<td>").html(calendar.semeYear)
						),
						
						$("<tr>").append(
							$("<th>").html("제목")		
							, $("<td>").html(calendar.calendarTitle)
						),
						
						$("<tr>").append(
							$("<th>").html("시작기간")		
							, $("<td>").html(calendar.calendarStart)
						),
						$("<tr>").append(
							$("<th>").html("종료기간")		
							, $("<td>").html(calendar.calendarEnd)
						),
						
						$("<tr style='height:200px'>").append(
							$("<th>").html("내용")
							, $("<td>").html(calendar.calendarMemo).addClass("pt20 pb20 pl20 pr20")
						)
					)
			)
	);
}
	



//상세보기 모달
$(document).on("click",".classTitle",function(){
	
	console.log("상세보기 아이디!", this.parentElement);
	let calendarNo = this.parentElement.children[0].children[0].value;
	console.log("calendarNo!", calendarNo);
	let data = {
		"calendarNo":calendarNo
	}
	console.log("calendarNo!!!", calendarNo);
	
	//현재 페이지를 다시 보낸다. 컨트롤러의 requestParam에 ("") 내용이 자동으로 ?""= 형태로 붙기 때문에 따로 적지 않아도 됨.
	let url = "/campus/calendarView?what=" + calendarNo; 
	
 	// ajax 호출
	$.ajax({
		url : "${pageContext.request.contextPath}"+url,
		type: "get",
		data: data,
		contentType: "application/json;charset=utf-8",
		dataType : "text",
		success : function(resp) {
			
			console.log("resp됩니까???!!", resp);
			let calendar = JSON.parse(resp);
			console.log("resp됩니까???!!", calendar);
			
			$(".modal-view").html(calendarViewCon(calendar));
			$(".modal-modify").html(calendarModiCon(calendar));
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
});

//---------------------------------------------------------------------------------------------------------

//모달 수정하기

//수정화면
let calendarModiCon = function(calendar) {
	
	return $("<form name='updateCal' method='post'>").append(
				$("<div class='tbl=wrap'>").append(
					$("<div class='title'>").append(
						$("<h3>학사일정 수정하기</h3>"),
						$("<div class='box-btn'>").append(
							$("<button type='submit' id='completeBtn' class='btn purple' style='float:right'>확인</button>"),
							$("<button type='button' id='cancelBtn' class='btn purple' data-bs-dismiss='modal' aria-label='Close' style='float:right'>취소</button>")
						),
					),
					$("<table class='tbl'>").append(
							$("<tbody>").append(
								$("<tr>").append(		
									$("<th>").html("학사년도")		
									, $("<td>").html("<input type='text' id='modiSemeYear' name='semeYear' value='"+calendar.semeYear+"' /><input type='hidden' id='modiCalendarNo' name='calendarNo' value='"+calendar.calendarNo+"' /><input type='hidden' id='modiSemeId' name='semeId' value='"+calendar.semeId+"' />")
								),
								
								$("<tr>").append(
									$("<th>").html("제목")		
									, $("<td>").html("<input type='text' id='modiCalendarTitle' name='calendarTitle' value='"+calendar.calendarTitle+"' />")
								),
								
								$("<tr>").append(
									$("<th>").html("시작기간")		
									, $("<td>").html("<input type='date' id='modiCalendarStart' name='calendarStart' value='"+calendar.calendarStart+"' />")
								),
								$("<tr>").append(
									$("<th>").html("종료기간")		
									, $("<td>").html("<input type='date' id='modiCalendarEnd' name='calendarEnd' value='"+calendar.calendarEnd+"' />")
								),
								
								$("<tr style='height:200px'>").append(
									$("<th>").html("내용")
									, $("<td>").html("<textarea cols='30' rows='10' id='modiCalendarMemo' name='calendarMemo'>"+calendar.calendarMemo+"</textarea>").addClass("pt20 pb20 pl20 pr20")
								)
							)
					)
			)
		);
}




//수정 버튼 눌렀을 때 껐다 켜기
$(document).on("click", "#modiBtn", function(){
	
	//viewModal은 가려지고
	$("#viewModal").modal("hide");
	//modifyModal은 보이고
	$("#modifyModal").modal("show");
	
	let calendarModyfyBtn = this.parentElement.children[0].id;
	
});



//수정 서비스 로직 수행
$(document).on("click","#completeBtn",function(){
	let semeYear = $("#modiSemeYear").val();
	let semeId = $("#modiSemeId").val();
	let calendarTitle = $("#modiCalendarTitle").val();
	let calendarStart = $("#modiCalendarStart").val();
	let calendarEnd = $("#modiCalendarEnd").val();
	let calendarMemo = $("#modiCalendarMemo").val();
	let calendarNo = $("#modiCalendarNo").val();
	
	let data = {"semeYear":semeYear,"semeId":semeId,"calendarTitle":calendarTitle,"calendarStart":calendarStart
				,"calendarEnd":calendarEnd,"calendarMemo":calendarMemo,"calendarNo":calendarNo};
	
	//data : {"semeYear":"2023","calendarTitle":"안녕하세요","calendarStart":"2023-02-25","calendarEnd":"2023-02-25","calendarMemo":"ㅇㅇ"}
	console.log("data : " + JSON.stringify(data));
	
	//아작났어유..피씨다타써
	$.ajax({
		url:"${pageContext.request.contextPath}/campus/calendarModify",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		success:function(result){
			console.log("result : " + result);
			//form 만들어서 updateCal 아이디값 줌
			let calendar = JSON.parse(result);
			
			
// 			$(".modal-view").html(calendarViewCon(calendar));
// 			$(".modal-modify").html(calendarModiCon(calendar));
			
		}
	});
});
	
	







//----------------------------------------------------------------------------------------------------------

//모달 등록하기

//document(body태그 사이)가 로딩된 후에 실행
$(function(){
	$("#regiBtn").on("click",function(){
		let calendarTitle = $("#calendarTitle").val();
		let calendarMemo  = $("#calendarMemo").val();
		let calendarStart = $("#calendarStart").val();
		let calendarEnd   = $("#calendarEnd").val();
		let semeId        = $("#semeId").val();
		
		console.log("calendarTitle : " + calendarTitle);
		console.log("calendarMemo : " + calendarMemo);
		console.log("calendarStart : " + calendarStart);
		console.log("calendarEnd : " + calendarEnd);
		console.log("semeId : " + semeId);
		
		//json 오브젝트
		let data = {"calendarTitle":calendarTitle,"calendarMemo":calendarMemo
				,"calendarStart":calendarStart,"calendarEnd":calendarEnd
				,"semeId":semeId};
		
		console.log("data : " + JSON.stringify(data));
		
		
		
		//아작났어유..피씨다타써
		//processType:false, : new FormData() <- ajax로 파일업로드 시 가상 폼
		//contentType:보내는 타입
		//리턴 타입 : int(ResponseBody) -> dataType을 생략
		$.ajax({
			url:"${pageContext.request.contextPath}/campus/createCalendar",
			contentType:"application/json;charset:utf-8",
			data:JSON.stringify(data),//마샬링
			type:"post",
			success:function(result){
				console.log("result : " + result);
				
				$("#regiModal").modal("hide");
				

				location.href = "${pageContext.request.contextPath}/campus/calendar";
			}
		});
	});	
});




//------------------------------------------------------------------------------------------------

//모달 삭제하기


//삭제버튼 누르기
$(document).on("click", "#delBtn", function(){
	//.attr("data-calendar-no", calendar.calendarNo)
	console.log("디스 this~ 는 뭘까요!", $(this).data("calendarNo"));
// 	btn.data("calendarNo")
	let calendarNo = $(this).data("calendarNo");
	alert(calendarNo + "번 일정을 삭제할까요?")

	let data = {
		"calendarNo":calendarNo
	}

	$.ajax({
		url : "${pageContext.request.contextPath}/campus/calendarDelete",
		method : "delete",
		contentType:"application/json;charset:utf-8",
		data:JSON.stringify(data),//마샬링
		dataType : "text",
		success : function(resp) {
			
			console.log("삭제!?", resp);
			alert("삭제됐다!");
			$("#viewModal").modal("hide");
			
			fn_init();
			
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);

		}

	});

});












</script>

</html>












