<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
			
			<div class="tob-box">
				<strong class="tit">과제 안내 사항 </strong>
				<p>1. 반드시 기간을 먼저 설정한 후, 과제를 등록해주세요.</p>
				<p>2. 총점 부여는 10~100점까지 등록 가능합니다.</p>
				<p>3. 제출현황의 보기버튼을 클릭하여 과제별 학생 제출목록을 통해 제출여부를 확인할 수 있습니다. </p>
			</div>

			<div class="right-part">
				<div class="title">
					<p class="highlight-txt">총<em class="red-txt">${pagingVO.totalRecord }</em>건의 게시물이 있습니다</p>
					<div class="right-part">
						<div class="search-form">
		
							<%-- 	<select>
									<option value>전체</option>
									<form:option value="tit" label="제목" />
									<form:option value="cont" label="내용" />
								</form>
								<div class="input-group">
									<form:input path="searchWord"/>
									<input id="searchBtn" class="btn btn-search primary" type="button" value="검색" />
								</div> --%>
								
					</div>
					
			
					 <div class="box-btn">
						<a href="${pageContext.request.contextPath}/prof/assignment/insertAssignment?lectId=${lectId}" type="button" class="insertBtn btn purple">등록</a>
					</div> 
				</div>
			</div>
	
	
			<!--tbl start-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>과제 페이지 목록 테이블</caption>
					<colgroup>
						<col style="width: 10%" />
						<col style="width: auto;" />
						<col style="width: 15%" />
						<col style="width: 15%" />
						 <col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">No</th>		
							<th scope="col">과제제목</th>
							<th scope="col">과제 등록일</th>
							<th scope="col">과제 마감일</th>
							<th scope="col">제출목록</th>
						</tr>
					</thead>
					<tbody>
					
					
					
					
						<c:set var="assignmentList" value="${pagingVO.dataList }" />
						<c:choose>
						 	<c:when test="${not empty assignmentList}">
						 		<c:forEach items="${assignmentList}" var="assignment">
						 		<%--  ${assignment }   --%>
						 		
						 				<!-- 현재년도 -->
										<c:set var="now" value="<%=new java.util.Date()%>" />
										<fmt:formatDate var="sysYear" value="${now}"
											pattern="yyyy-MM-dd" />
							 				
						 				<c:choose>
						 					<c:when test="${sysYear gt assignment.assignDdate}"> <!--  마감일이 지났을 경우  -->
								 			<tr  class="tbl-endDate">
								 				<td>${assignment.rnum }</td>
								 				<td class="left"><a href="${pageContext.request.contextPath}/prof/assignment/viewAssignment?asgnId=${assignment.asgnId }&lectId=${assignment.lectId}">${assignment.assignNm }</a></td>
								 				<td>${assignment.assignRdate }</td>
								 				<td>${assignment.assignDdate }</td>
								 				
								 				<c:choose>
									 				<c:when test="${not empty assignment.assignmentSubmitVO.asgnSubmId  }">
									 					<td><a href="${pageContext.request.contextPath}/prof/assignment/submitStudentList?asgnId=${assignment.asgnId }&assignNm=${assignment.assignNm}&lectId=${lectId}&asgnSubmId=${assignment.assignmentSubmitVO.asgnSubmId}" class="btn purple btn-s">보기</a></td>
													</c:when>
													<c:otherwise>
														<td></td>
													</c:otherwise>
												</c:choose>				 			
								 			</tr>
								 			</c:when>
								 			<c:otherwise>
								 				<tr>
									 				<td>${assignment.rnum }</td>
									 				<td class="left"><a href="${pageContext.request.contextPath}/prof/assignment/viewAssignment?asgnId=${assignment.asgnId }&lectId=${assignment.lectId}">${assignment.assignNm }</a></td>
									 				<td>${assignment.assignRdate }</td>
									 				<td>${assignment.assignDdate }</td>
									 				
									 				<c:choose>
										 				<c:when test="${not empty assignment.assignmentSubmitVO.asgnSubmId  }">
										 					<td><a href="${pageContext.request.contextPath}/prof/assignment/submitStudentList?asgnId=${assignment.asgnId }&assignNm=${assignment.assignNm}&lectId=${lectId}&asgnSubmId=${assignment.assignmentSubmitVO.asgnSubmId}" class="btn purple btn-s">보기</a></td>
														</c:when>
														<c:otherwise>
															<td></td>
														</c:otherwise>
													</c:choose>				 			
									 			</tr>
								 			</c:otherwise>
							 			</c:choose>
					
						 			
						 			
						 			
						 		</c:forEach>
						 	</c:when>
						 	<c:otherwise>
						 		<tr>
						 			<td colspan="5">검색결과가 없습니다</td>
						 		</tr>
						 	</c:otherwise>
						</c:choose>
						
					</tbody>
				</table>
			</div>
			<!--tbl end-->
		</div>
		<!-- end cont-box-inner -->
		

	</div>
	

</div>