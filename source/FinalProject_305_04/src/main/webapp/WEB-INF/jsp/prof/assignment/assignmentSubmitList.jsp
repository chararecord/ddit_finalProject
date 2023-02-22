<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>


<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>과제<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
			

	
		<div class="title">
			<h3>학생 제출목록</h3>
			<span class="total"><em>1</em>건</span>
			<div class="box-btn">
				<button type="button" class="btn default">수정</button>
				<button type="button" class="btn default">삭제</button>
				<button type="button" class="btn purple">등록</button>
			</div>
		</div>

		<div class="tbl-wrap">
			<table class="tbl center">
				<caption>과제 페이지 목록 테이블</caption>
				<colgroup>
					<col style="width: 10%">
					<col style="width: auto;">
					<col style="width: 15%">
					<col style="width: 15%">
					<col style="width: 15%">

				</colgroup>
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">제출일</th>
						<th scope="col">점수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td class="left"><a href="#" class="f_viewTitle"> 제목</a></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>





		<div class="cont-box-inner">

		</div>



		
		
		</div>
		<!-- end cont-box-inner -->
	</div>
	
<form id="hiddenForm" method="post">
	


</form>

<script>

$(".f_viewTitle").on("click", function() {
	//let url = this.action;
	//let method = this.method;
	let data = $(this).serialize();
	//console.log(url , method);
	

	 $.ajax({
		url : "${pageContext.request.contextPath}/prof/assignment/submitStudentView", //어디로 보낼건지 
		method : "get",
		data : JSON.stringify(data),
		dataType : "html",
		contentType : "application/json;charset=UTF-8",
		success : function(resp) {
			console.log(resp); //모델 안에 들어있는 게 여기로 들어옴 
			
			
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});  
});

	
	 
	 
	 







</script>
	
