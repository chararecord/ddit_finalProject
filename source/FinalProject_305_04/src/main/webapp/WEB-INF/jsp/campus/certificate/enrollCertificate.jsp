<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font.css" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="box-container" id="htmlStr">

<%-- ${enrollment[0] } --%>

	<div class="c1">
		<table class="tbl">
			<tbody>
				<c:set var="enrollment" value="${enrollment }" />
				<c:choose>
					<c:when test="${not empty enrollment }">
						<tr>
							<td>성명</td>
							<td>: ${enrollment[0].USER_NM }</td>
						</tr>
						<tr>
							<td>생년월일</td>
							<td>: ${enrollment[0].USER_BIR }</td>
						</tr>
						<tr>
							<td>대학</td>
							<td>: ${enrollment[0].COLL_NM }</td>
						</tr>
						<tr>
							<td>학과, 학부</td>
							<td>: ${enrollment[0].MAJOR_NM }</td>
						</tr>
						<tr>
							<td>입학 년월일</td>
							<td>: ${enrollment[0].USER_BIR }</td>
						</tr>
						<tr>
							<td>학년</td>
							<td>: ${enrollment[0].CAM_YEAR }</td>
						</tr>
					</c:when>

					<c:otherwise>
						<td colspan="7">조건에 맞는 게시글이 없습니다.</td>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<script>
	let htmlStr = $("#htmlStr").html();
	$(document).ready(function() {
		let data = {
			htmlStr : htmlStr
		};

		$.ajax({
			url : "${pageContext.request.contextPath}/certificateBox/create",
			method : "post",
			data : JSON.stringify(data),
			contentType : 'application/json',
			success : function(resp) {
				window.open("${pageContext.request.contextPath}/certificateBox/show");
				location.href = '${pageContext.request.contextPath}/student/certificateBox';
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
</script>