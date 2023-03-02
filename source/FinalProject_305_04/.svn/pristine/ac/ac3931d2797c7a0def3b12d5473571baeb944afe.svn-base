<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/itext.css">   
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">   

<body>
	<div class="box-container">
		<div class="c1">
			<div>등록금 고지서</div>
			<table>
				<!-- 두번째 -->
				<tr>
				<c:set var="tuitionBill" value="${tuitionBill }" />
									<c:when test="${not empty tuitionBill }">
					<td>학번</td>
					<td>${tuitionBill.stdId}</td>
					</c:when>
					<td>학년</td>
					<td>값 받아와</td>
				</tr>
				<!-- 세번째 -->
				<tr>
					<td colspan="2">구분</td>
					<td>등록금</td>
					<td>장학금</td>
				</tr>
				<!-- 네번째 -->
				<tr>
					<td colspan="2">입학금</td>
					<td>0</td>
					<td>값 받아와</td>
				</tr>

				<!-- 다섯번째 -->
				<tr>
					<td colspan="2">수업료</td>
					<td>값 받아와</td>
					<td>값 받아와</td>
				</tr>

				<!-- 여섯번째 -->
				<tr>
					<td colspan="2">납입금액</td>
					<td>값 받아와</td>
					<td>값 받아와</td>
				</tr>

				<!-- 일곱번째 -->
				<tr>
					<td>납부계좌</td>
					<td colspan="3">기업은행 036190-73-374426</td>
				</tr>

			</table>

			<div>대재대학교</div>

		</div>


		<div class="c1">
			<div>등록금 고지서</div>
			<table>

				<!-- 두번째 -->
				<tr>
					<td>학번</td>
					<td>값 받아와</td>
					<td>학년</td>
					<td>값 받아와</td>
				</tr>
				<!-- 세번째 -->
				<tr>
					<td colspan="2">구분</td>
					<td>등록금</td>
					<td>장학금</td>
				</tr>
				<!-- 네번째 -->
				<tr>
					<td colspan="2">입학금</td>
					<td>0</td>
					<td>값 받아와</td>
				</tr>

				<!-- 다섯번째 -->
				<tr>
					<td colspan="2">수업료</td>
					<td>값 받아와</td>
					<td>값 받아와</td>
				</tr>

				<!-- 여섯번째 -->
				<tr>
					<td colspan="2">납입금액</td>
					<td>값 받아와</td>
					<td>값 받아와</td>
				</tr>

				<!-- 일곱번째 -->
				<tr>
					<td>납부계좌</td>
					<td colspan="3">기업은행 036190-73-374426</td>
				</tr>

			</table>

			<div>대재대학교</div>

		</div>
	</div>
	<form id="pdf" action="${pageContext.request.contextPath}/student/tuition/tuitionBill" method="post">
		<input type="hidden" id="pdf_value" name="pdf_value" value="">
		<input type="button" id="button_pdf" value="pdf보기">
	</form>
</body>

<script>
$('#button_pdf').click(function(){
 	$("#pdf_value").val($('.box-container').html());
	$("#pdf").submit(); 
});
</script>

