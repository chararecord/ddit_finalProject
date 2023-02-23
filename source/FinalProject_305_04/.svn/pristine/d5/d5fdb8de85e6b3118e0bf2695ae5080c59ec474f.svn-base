<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- ${certList } --%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>증명서 발급 관리<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
		
		
		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>증명서 발급 전체 내역</h3>
<!-- 				<span class="total"><em>1</em>건</span> -->
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 5%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">성명</th>
							<th scope="col">발급 대상</th>
							<th scope="col">발급일시</th>
							<th scope="col">결제 수수료</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty certList }">
								<c:forEach items="${certList }" var="cert">
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
						</c:forEach>
						</c:when>
						<c:otherwise></c:otherwise>
						</c:choose>
					</tbody>

				</table>
			</div>
			<!--end tbl-->
		
		
		</div>
		
		
	</div>
</div>
