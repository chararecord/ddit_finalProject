<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
	#preview {
	  width: 100px;
	  height: 125px;
	  object-fit: cover;
	}
</style>

<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor/ckeditor.js"></script>

<form:form id="updateForm" modelAttribute="studentInfo" enctype="multipart/form-data" method="post">
<form:hidden path="stdId"/>
<form:hidden path="userId"/>


<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			학생정보관리
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i><strong>학생관리</strong>
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
					<form:button type="submit" class="btn btn-success purple">저장</form:button>
				</div>
			</div>


			<!--  "photo-wrap"-->
			<div class="photo-wrap">
				<div class="photo">
					<div class="photo uploadImg">
						<div class="photo-inner">
							<!-- studentInfo.attaFileList : List<AttaFileVO> attaFileList -->
							<c:forEach var="attaFileVO" items="${studentInfo.attaFileList}" varStatus="stat">	
								<img src="${pageContext.request.contextPath}${attaFileVO.attaPath}/${attaFileVO.attaFilenm}" id="preview" alt="프로필사진" name="files" onclick="popImage(this.src)">
							</c:forEach>
						</div>
						<div class="filebox">
						     <input type="file" name="files" class="btn upload-hidden" style="background-color:gray">
						</div>
					</div>
				</div>

				<div class="tbl-wrap">
					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름<em class="red-txt asterisk">*</em></th>
								<td>
									<form:input path="userNm" type="text" cssClass="form-control" />
									<form:errors path="userNm" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">영문이름<em class="red-txt asterisk">*</em></th>
								<td>
									<form:input path="userNmEn" type="text" cssClass="form-control" />
									<form:errors path="userNmEn" element="span" cssClass="text-danger" />
								</td>
								
								<th scope="row">주민번호</th>
								<td>
									<div class="flex">
										<form:input path="userRrn1" type="text" cssClass="form-control" class="w10" />
										<span class="cal-dash"></span>
										<form:input path="userRrn2" type="text" cssClass="form-control"  class="w10" />
										<form:errors path="userRrn1" element="span" cssClass="text-danger" />
										<form:errors path="userRrn2" element="span" cssClass="text-danger" />
									</div>
								</td>

							</tr>
							<tr>

								<th scope="row">생년월일</th>
								<td>
									<form:input path="userBir" type="date" cssClass="form-control" />
									<form:errors path="userBir" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">국적</th>
								<td>
									<form:input path="userNtl" type="text" cssClass="form-control" />
									<form:errors path="userNtl" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">성별</th>
								<td>
									<form:input path="userGender" type="text" cssClass="form-control" />
									<form:errors path="userGender" element="span" cssClass="text-danger" />
								</td>

							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td>
									<form:input path="userPost" type="text" cssClass="form-control" />
									<form:errors path="userPost" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">주소</th>
								<td>
									<form:input path="userAddr" type="text" cssClass="form-control" />
									<form:errors path="userAddr" element="span" cssClass="text-danger" />
								</td>
								<th scope="row">상세주소</th>
								<td>
									<form:input path="userDetailAddr" type="text" cssClass="form-control" />
									<form:errors path="userDetailAddr" element="span" cssClass="text-danger" />
								</td>
								
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
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
					</colgroup>

					<tbody>
						<tr>
							<th scope="row">학번<em class="red-txt asterisk">*</em></th>
							<td>${studentInfo.stdId }</td>			
							<th scope="row">비밀번호<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="userPass" type="password" cssClass="form-control" />
								<form:errors path="userPass" element="span" cssClass="text-danger" />
							</td>			
							<th scope="row">학년</th>
							<td>${studentInfo.recordList[0].camYear }</td>		
						</tr>
						<tr>
							<th scope="row">단과대학<em class="red-txt asterisk">*</em></th>
							<td>${studentInfo.collVO.collNm }</td>
							<th scope="row">학과<em class="red-txt asterisk">*</em></th>
							<td>${studentInfo.selMajor }</td>
							<th scope="row">학과교수<em class="red-txt asterisk">*</em></th>
							<td>${studentInfo.professorVO.profId }</td>
						
						</tr>
						<tr>
							<th scope="row">입학일<em class="red-txt asterisk">*</em></th>
							<td>${studentInfo.entDate }</td>			
							<th scope="row">학적상태</th>
							<td>${studentInfo.recordList[0].recNm }</td>
							<th scope="row">최종변동일자</th>
							<td>${studentInfo.recordList[0].recUpdate }</td>							
									
						</tr>
						<tr>					
							<th scope="row" class="w100">학사년도</th>
							<td>${studentInfo.semeYear }</td>	
							<th scope="row">연락처</th>
							<td>
								<form:input path="userPhone" type="text" cssClass="form-control" />
								<form:errors path="userPhone" element="span" cssClass="text-danger" />
							</td>			
							<th scope="row">이메일<em class="red-txt asterisk">*</em></th>
							<td>
								<form:input path="userEmail" type="text" cssClass="form-control" />
								<form:errors path="userEmail" element="span" cssClass="text-danger" />
							</td>	
						</tr>			
						<tr>
							<th scope="row">은행</th>
							<td>
								<form:input path="userBank" type="text" cssClass="form-control" />
								<form:errors path="userBank" element="span" cssClass="text-danger" />
							</td>
							<th scope="row">예금주</th>
							<td>
								<form:input path="userAcctHd" type="text" cssClass="form-control" />
								<form:errors path="userAcctHd" element="span" cssClass="text-danger" />
							</td>
							<th scope="row">계좌번호</th>
							<td>
								<form:input path="userAcctNo" type="text" cssClass="form-control" />
								<form:errors path="userAcctNo" element="span" cssClass="text-danger" />
							</td>	
						</tr>	
					</tbody>

				</table>
			</div>
			<!--end tbl-->

		</div>
	</div>
<!--   // "전체-wrap"-->
</div>
</form:form>


<script>



	//form:form의 아이디
	let updateForm = $("#updateForm");
	
	
//첨부파일

	$(document).ready(function(){
	    //파일첨부 이벤트
	    $('.filebox .upload-hidden').on('change', function(){           
	        if(window.FileReader){
	            var filename = $(this)[0].files[0].name;
	            if(!validFileType(filename)){
	                alert("허용하지 않는 확장자 파일입니다.");
	                return false;
	            }else{
	                if(!validFileSize($(this)[0].files[0])){
	                    alert("파일 사이즈가 10MB를 초과합니다.");
	                    return false;
	                }else{
	                    if(!validFileNameSize(filename)){
	                        alert("파일명이 30자를 초과합니다.");
	                        return false;
	                    }
	                }
	            }
	        } else {
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        }
	        $(this).prev().val(filename); //input upload-name 에 파일명 설정해주기
	
	        readImage($(this)[0]); //미리보기
	    });
	});

	function validFileType(filename) {
	    const fileTypes = ["png", "jpg", "jpeg"];
	   return fileTypes.indexOf(filename.substring(filename.lastIndexOf(".")+1, filename.length).toLowerCase()) >= 0;
	}
	
	function validFileSize(file){
	    if(file.size > 10000000){ //10MB
	        return false;
	    }else{
	        return true;
	    }
	}
	
	function validFileNameSize(filename){
	    if(filename.length > 100){ //30자
	        return false;
	    }else{
	        return true;
	    }
	}
	
	
	//이미지 띄우기
	function readImage(input) {
	    if(input.files && input.files[0]) {
	        const reader = new FileReader();
	        reader.onload = function(e){
	            const previewImage = document.getElementById("preview");
	            previewImage.src = e.target.result;
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	
	//이미지 원본 팝업 띄우기
	function popImage(url) {
	    var img = new Image();
	    img.src = url;
	    var img_width = img.width;
	    var win_width = img.width + 25;
	    var img_height = img.height;
	    var win = img.height + 30;
	    var popup = window.open('', '_blank', 'width=' + img_width + ', height=' + img_height + ', menubars=no, scrollbars=auto');
	    popup.document.write("<style>body{margin:0px;}</style><img src='"+url+"' width='"+win_width+"'>");
	}	
	
</script>














