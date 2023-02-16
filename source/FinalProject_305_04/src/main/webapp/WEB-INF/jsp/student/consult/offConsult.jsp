<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="cont">

	<!-- cont-title -->
	<div class="cont-title">
		<h2>
			학생 상담
			<button type="button" class="star on">
				<span class="sr-only">즐겨찾기</span>
			</button>
		</h2>
		<!--cont-navi-->
		<div class="cont-navi">
			<span>home</span> <i class="bi bi-house-door-fill"></i>
			<strong>학생 상담</strong>
			<strong>오프라인상담</strong>
		</div>
		<!--end cont-navi-->
	</div>
	<!-- end cont-title -->

	<div class="white-box">

		<!-- styletab  -->
		<div class="tab-wrap">
			<!-- tablist  -->
			<ul class="tab tab-1dep" role="tablist">
				<li><a class="active tab1"
					href="${pageContext.request.contextPath}/student/consult/on" id="">온라인상담</a></li>
				<li class="on"><a class="nav-link"
					href="${pageContext.request.contextPath}/student/consult/off">오프라인상담</a></li>
			</ul>
			<!--  // tablist  -->
		</div>
		<!--  // styletab  -->




		<div class="search-form">
			<select>
				<option>전체</option>
				<option>전체</option>
				<option>전체</option>
			</select>
			<div class="input-group">
				<label for="searchTxt" class="sr-only">검색어를 입력하세요</label> <input
					type="text" class="form-control text input with dropdown button"
					id="searchTxt" name="searchTxt" value="" placeholder="검색어를 입력하세요.">
				<button class="btn btn-search primary" type="button">검색</button>
			</div>
		</div>



		<div class="cont-box-inner">
			<div class="tbl-half half37">
				<div class="tbl-wrap">
					<div class="title">
						<h4>half37</h4>
					</div>



					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: auto">

						</colgroup>
						<thead>
							<tr>
								<th scope="col">총원<em class="org-txt asterisk">*</em></th>
								<th scope="col">원장실<em class="org-txt asterisk">*</em></th>
								<th scope="col">윤리감사부<em class="org-txt asterisk">*</em></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" id="checkbox44444"
									name="radio-group"><label for="checkbox44444"><span
										class="sr-only">선택</span></label></td>
								<td>1명</td>
								<td>1명</td>

							</tr>
							<tr>
								<td><input type="checkbox" id="checkbox44444"
									name="radio-group"><label for="checkbox44444"><span
										class="sr-only">선택</span></label></td>
								<td>1명</td>
								<td>1명</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tbl-wrap">
					<div class="title">
						<h4>half37</h4>
						<p class="highlight red-txt">* 빨간색 글자에 대한 설명입니다.</p>
						<div class="right-part">
							<div class="btn-wrap">
								<button type="button" class="btn default">삭제</button>
								<button type="button" class="btn default">수정</button>
								<button type="button" class="btn purple">등록</button>
							</div>
						</div>
					</div>



					<table class="tbl">
						<caption></caption>
						<colgroup>
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">총원<em class="org-txt asterisk">*</em></th>
								<th scope="col">원장실<em class="org-txt asterisk">*</em></th>
								<th scope="col">윤리감사부<em class="org-txt asterisk">*</em></th>
								<th scope="col">플라즈마장비지능화연구단<em class="org-txt asterisk">*</em></th>
								<th scope="col">사업관리팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">연구지원팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">데이터연구팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">해석기술개발팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">지능제어팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">기술실증팀<em class="org-txt asterisk">*</em></th>
								<th scope="col">부원장<em class="org-txt asterisk">*</em></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" id="checkbox44444"
									name="radio-group"><label for="checkbox44444"><span
										class="sr-only">선택</span></label></td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="checkbox44444"
									name="radio-group"><label for="checkbox44444"><span
										class="sr-only">선택</span></label></td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
								<td>1명</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>


		<!-- 페이지 네비게이션 -->
		<div class="pagination_block">
			<ul class='pagination'>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" aria-label='처음'> <span
						aria-hidden='true'>&laquo;</span><span class='sr-only'>처음</span>
				</a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" title='1 페이지로 이동'>1</a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" title='2 페이지로 이동'>2</a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" title='3 페이지로 이동'>3</a></li>
				<li class='page-item active'><a class='page-link' href='#'
					title='현재 페이지'>4</a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" title='5 페이지로 이동'>5</a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" aria-label='다음'> <span
						aria-hidden='true'>&gt;</span><span class='sr-only'>다음</span></a></li>
				<li class='page-item'><a class='page-link'
					href="javascript:void(0);" aria-label='마지막'> <span
						aria-hidden='true'>&raquo;</span><span class='sr-only'>마지막</span></a>
				</li>
			</ul>
		</div>
		<!-- //페이지 네비게이션 -->




	</div>
	<!-- end cont-box-inner -->




	<!-- cont-box-inner  -->
	<div class="cont-box-inner">
		<div class="title ">
			<h3>Button</h3>
		</div>
		<div>
			<button type="button" class="btn default">default</button>
			<button type="button" class="btn primary">primary</button>
			<button type="button" class="btn purple">purple</button>
			<button type="button" class="btn success">success</button>
			<button type="button" class="btn info">info</button>
			<button type="button" class="btn orange">orange</button>
			<button type="button" class="btn red">red</button>
			<button type="button" class="btn disable">disable</button>
			<button type="button" class="btn disable">disable</button>
			<button type="button" class="btn default btn-pd">
				<i class="excel-icon"></i>excel
			</button>
			<button type="button" class="btn default btn-pd">
				<i class="pdf-icon"></i>PDF
			</button>
		</div>
		<div style="margin-top: 5px;">
			<button type="button" class="btn btn-s default">default</button>
			<button type="button" class="btn btn-s primary">primary</button>
			<button type="button" class="btn btn-s purple">purple</button>
			<button type="button" class="btn btn-s success">success</button>
			<button type="button" class="btn btn-s info">info</button>
			<button type="button" class="btn btn-s orange">orange</button>
			<button type="button" class="btn btn-s red">red</button>
			<button type="button" class="btn btn-s disable">disable</button>
			<button type="button" class="btn default btn-s btn-pd">
				<i class="excel-icon"></i>excel
			</button>
			<button type="button" class="btn default btn-s btn-pd">
				<i class="pdf-icon"></i>PDF
			</button>
		</div>
	</div>
	<!--  // cont-box-inner  -->


</div>