<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			교수정보관리
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i><strong>교수관리</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">






		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>개인 정보</h3>
				<div class="box-btn">
					<c:url value="/emp/profInfoEdit" var="updateURL">
						<c:param name="what" value="${profInfo.profId }" />
					</c:url> 
					<a class="btn purple" href="${updateURL }">수정</a> 
				</div>
			</div>


			<!--  "photo-wrap"-->
			<div class="photo-wrap">
			
				<div class="photo uploadImg">
					<div class="photo-inner">	
						<img src="" id="preview" alt="프로필사진" name="files">
					</div>
				</div>

				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: 20%;">
							<col style="width: 15%;">
							<col style="width: 20%;">
							<col style="width: 15%;">
							<col style="width: 20%;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름<em class="red-txt asterisk">*</em></th>
								<td>${profInfo.userNm }</td>
								<th scope="row">영문이름<em class="red-txt asterisk">*</em></th>
								<td>${profInfo.userNmEn }</td>
								<th scope="row">주민번호</th>
								<td>${profInfo.userRrn1 }${profInfo.userRrn2 }</td>
							</tr>
							<tr>
								<th scope="row">생년월일</th>
								<td>${profInfo.userBir }</td>
								<th scope="row">국적</th>
								<td>${profInfo.userNtl }</td>
								<th scope="row">성별</th>
								<td>${profInfo.userGender }</td>
							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td>${profInfo.userPost }</td>
								<th scope="row">주소</th>
								<td>${profInfo.userAddr }</td>
								<th scope="row">상세주소</th>
								<td>${profInfo.userDetailAddr }</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!--   // "photo-wrap"-->

		</div>
		<!--  // cont-box-inner -->





		<!-- cont-box-inner -->
		<div class="cont-box-inner">
			<div class="title">
				<h3>학적 정보</h3>
<!-- 				<span class="total"><em>1</em>건</span> -->
			</div>
			<!--tbl-->
			<div class="tbl-wrap">
				<table class="tbl center">
					<caption>description about table</caption>
					<colgroup>
						<col style="width: 15%" />
						<col style="width: 20%" />
						<col style="width: 15%" />
						<col style="width: 20%" />
						<col style="width: 15%" />
						<col style="width: 20%" />
					</colgroup>

					<tbody>
						<tr>
							<th scope="row">교번<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.userId }</td>
							<th scope="row">비밀번호<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.userPass }</td>
							<th scope="row">연구실건물<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.commList.commDesc }</td>
						</tr>
						<tr>
							<th scope="row">단과대학<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.collList.collNm }</td>
							<th scope="row">학과<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.majorList.majorNm }</td>
							<th scope="row">연구실<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.laboList.buildNum }</td>
						</tr>
						<tr>
							<th scope="row">연구실전화</th>
							<td>${profInfo.laboList.laboTel }</td>
							<th scope="row">연락처</th>
							<td>${profInfo.userPhone }</td>
							<th scope="row">직책</th>
							<td>${profInfo.pos }</td>
						</tr>
						<tr>
							<th scope="row">입사일<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.entDate }</td>
							<th scope="row">퇴사일</th>
							<td>
								<c:if test="${empInfo.levDate!=null}">
									${empInfo.levDate}
								</c:if>
								<c:if test="${empInfo.levDate==null}">
									-
								</c:if>
							</td>
							<th scope="row">이메일<em class="red-txt asterisk">*</em></th>
							<td>${profInfo.userEmail }</td>
						</tr>
						<tr>
							<th scope="row">은행</th>
							<td>${profInfo.userBank }</td>
							<th scope="row">예금주</th>
							<td>${profInfo.userAcctHd }</td>
							<th scope="row">계좌번호</th>
							<td>${profInfo.userAcctNo }</td>
						</tr>
					</tbody>

				</table>
			</div>
			<!--end tbl-->




		</div>
	</div>
<!--   // "전체-wrap"-->
</div>



