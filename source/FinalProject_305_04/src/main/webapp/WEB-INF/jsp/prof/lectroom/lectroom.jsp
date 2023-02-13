<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			나의 강의 목록(교수)
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
		<div class="cont-box-inner">

			<!-- 		scroll bar	 -->
			<div class="title">
					
				<h3>${MyLectureVO.semeYear }년도 ${MyLectureVO.seme }학기</h3>
			</div>
			<div class="table-scrollable">
				<div class="table-responsive">

					<table class="tbl">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 5%">
							<col style="width: 5%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 15%">
							<col style="width: 15%">
						</colgroup>

						<thead class="">
							<tr class="table-scrollable__fixed-y">
								<th>이수구분</th>
								<th>강의명</th> 
								<th>학점</th> 
								<th>학년</th> 
								<th>대면/비대면</th>
								<th>강의계획서</th> <!--버튼으로 만들기  -->
								<th>강의평가</th>  <!--버튼으로 만들기  -->
								<th>출결관리</th> <!--버튼으로 만들기  -->
								<th>강의게시판</th> <!--버튼으로 만들기  -->
							</tr>
						</thead>

						<tbody id="lectureBody">
							<tr>
							<!-- lectureVO : List<LectureVO> lectureVO -->
								<c:set var="profLectList" value="${professorVO.myLectureList }" />
								<c:choose>
									<c:when test="${not empty profLectList }">
										<c:forEach items="${profLectList }" var="lecture">
											<tr>
												<td>${lecture.estaSub }</td>
												<td>${lecture.lectNm }</td>
												<td>${lecture.credit }</td>
												<td>${lecture.camYear }</td>
												<td>${lecture.syllaMeet }</td>
												<td><button type="button" class="btn btn-s primary">강의계획서</button></td>
												<td><button type="button" class="btn btn-s primary">강의평가</button></td>
												<td><button id="attendBtn" type="button" class="btn btn-s purple" onclick="f_attendList()">출결관리</button></td>
												<td><button id="lectBtn" type="button" class="btn btn-s purple" onclick="f_lectBoard()">강의게시판</button></td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<td colspan="8">강의가 없습니다.</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
<!-- <!-- <script> --> 
// $("#attendBtn").on("click",function(){ 
// 	$.ajax({
// 		url : "${pageContext.request.contextPath}/prof/lectroom/profAttendList",
// 		method : "get",
// 		dataType : "json", 
// 		success : function(resp) { 
// 			console.log(resp); 
//  		}, 
// 		error : function(jqXHR, status, error) {
//  			console.log(jqXHR); 
//  			console.log(status); 
//  			console.log(error);
// 		}
//  	}); 
//  }) 


function f_attendList(){
	let url = "${pageContext.request.contextPath}/prof/lectroom/profAttendList?lectId=${profLectList[0].lectId}";
	location.href= url;
}

 function f_lectBoard(){
 // 	console.log("${profLectList[0].lectId}");
 	let url = "${pageContext.request.contextPath}/prof/lectBoard/${profLectList[0].lectId}";
 // 	alert(url);
 	location.href = url;
 }
</script> 
