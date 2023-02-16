<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js" ></script>


<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			과제
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>과제</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">

		<div class="tob-box">
			과제 제출 시 <span class="red-txt">마감일 이내에</span> 수정이 가능합니다. <br> 
				마감일 이후에는 제출 또는 수정 할 수 없으므로</span> 기한을 잘 확인하여 불이익 없도록
			주의하시길 바랍니다.
			
		</div>



		<form:form modelAttribute="assignmentSubmit">
		<div class="cont-box-inner">
			<div class="tbl-wrap">
				<table class="tbl">
					<caption></caption>
					<colgroup>
						<col style="width: 150px;">
						<col style="width: auto;">
						
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">강의명</th>
							<td>
								${currLectVO.assignmentList[0].assignNm }
								<select>
								</select>
								option value 강의코드 
							</td>
						</tr>
						
						<tr>
							<th scope="row">내용</th>
							<td>
								<form:textarea id="assignCont" path="assignCont" type="text"  />
							</td>
						</tr>
						<tr>
							<th scope="row">첨부파일</th>
							<td>
								<input type="file" name="files" multiple="multiple" value="" />
							</td>
						</tr> 
					</tbody>
				</table>
				<div class="title">
					<div class="box-btn">
						<a href="${pageContext.request.contextPath}/student/assignment?curlectId=" class="btn default">목록</a>
						<a href="${pageContext.request.contextPath}/student/assignment" class="btn red">취소</a>
						<form:button type="submit" class="btn purple">등록</form:button>
					</div>
				</div>
			</div>
		</div>
		</form:form>


	</div>
</div>



<script>
//에디터 
CKEDITOR.replace('assignCont', {
	filebrowserUploadUrl: '${pageContext.request.contextPath}/imageUpload?command=QuickUpload&type=Files&responseType=json'
});
</script>

