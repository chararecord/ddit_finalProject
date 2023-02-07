<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>

<div class="cont">
	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			공지사항
			<button type="button" class="star">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i> <strong>공지사항</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">
		<div class="tob-box">
			<strong class="tit">게시판 안내 사항 </strong>
			<p>게시판에 작성되는 본문 내용 및 첨부파일 내에 성명, 주민등록번호, 핸드폰 번호, 이메일 등 2개 이상의 개인정보 작성 시
			개인정보보호법 제2조제1호에 의거 개인정보에 해당되어 작성 및 등록을 제한하고 관리자에 의해 삭제 처리될 수 있습니다. 게시판 사용에 유의하시기 바랍니다.</p>
			<br>
			<p>※ 개인정보를 위조 또는 도용, 외부에 유출한 자는 관련법에 의거 법적 처벌을 받을 수 있으며,
			게시글에 포함된 개인정보 또한 책임은 게시자에게 있으며 정보 노출을 원하지 않으실 경우에는 수정 및 삭제하시기 바랍니다.</p>
			<strong class="red-txt">(개인정보보호법 제71조에 의거 개인정보를 유출한 자는 5년 이하의 징역 또는 5천만원 이하의 벌금이 부과될 수 있습니다.)</strong>
		</div>
		<!-- cont-box-inner -->
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
							<td class="title pur-txt center" colspan="2"><h3>${notice.tit }</h3></td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td class="pl20">${notice.empId }</td>
						</tr>
						<tr>
							<th scope="row">작성일</th>
							<td class="pl20">${notice.wrDate }</td>
						</tr>
						<tr>
							<th scope="row">조회수</th>
							<td class="pl20">${notice.hit }</td>
						</tr>
						<tr>
							<th scope="row">첨부파일</th>
							<c:choose>
								<c:when test="${not empty notice.attaFileList }">
									<td class="pl20">
										<c:forEach items="${notice.attaFileList }" var="file" varStatus="vs">
											${file.attaFilenm } ${vs.last ? "" : "<br>" }
										</c:forEach>
									</td>
								</c:when>
								<c:otherwise>
									<td>첨부된 파일이 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr>
							<td class="pt20 pl20 pr20 pb20" colspan="2">${notice.cont }</td>
						</tr>
					</tbody>
				</table>
				<div class="title">
					<div class="box-btn">
						<button type="button" class="btn default" onclick="f_movelist()">목록</button>
						<button type="button" class="btn purple" onclick="f_moveedit()">수정</button>
						<button type="button" class="btn purple" onclick="f_movedelete">삭제</button>
					</div>
				</div>
			</div>
		</div>
	<!-- end cont-box-inner -->
	</div>
</div>
<script>
let searchForm = $("#searchForm");
let searchUI = $("#searchUI").on('click', "#searchBtn", function(){
	// :input[name] : name 속성을 갖고 있는 모든 input/select 대상
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		searchForm.find("[name="+name+"]").val(value);
	});
	searchForm.submit();
});

$("a.paging").on('click', function(event){
	event.preventDefault();
	let page = $(this).data("page");
	console.log(page);
	if(!page){return false;}
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

function f_movelist() {
	let url = "${pageContext.request.contextPath}/campus/notice";
	location.href = url;
}
function f_moveedit() {
	let url = "${pageContext.request.contextPath}/campus/notice/form/${notice.notiId}";
	location.href = url;
}
function f_movedelete() {
	let url = "${pageContext.request.contextPath}/campus/notice/${notice.notiId}";
	location.href = url;
}

</script>

