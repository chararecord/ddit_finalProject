<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="cont">
	<!-- cont-title -->
	<div class="cont-title">
		<h2>강의실 관리<button type="button" class="star"><span class="sr-only">즐겨찾기</span></button></h2>
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
		<div class="cont-box-inner">
			<div class="tbl-half">
				<div class="tbl-wrap">
                    <div class="title">
                        <h4>강의실배정</h4>
                    </div>
                    <table class="tbl">
                        <caption></caption>
                        <colgroup>
                            <col style="width: 20%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td align="center">
			               			<c:set var="buildList" value="${buildingVO }" />
			                    	<select id="selBuild" name="buildingVO.buildId">
										<option>==건물==</option>
										<c:choose>
											<c:when test="${not empty buildList }">
											<c:forEach items="${buildList }" var="build">
												<option value="${build.buildId }">${build.commDesc }</option>
											</c:forEach>
											</c:when>
										</c:choose>
									</select>
									<select id="selLectRoom" name="lectRoomVO.lectRoomId">
										<option>==강의실==</option>
									</select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <table class="tbl tbl-schedule">
						<thead>
						  <tr>
						    <th scope="col"></th>
						    <th scope="col">월</th>
						    <th scope="col">화</th>
						    <th scope="col">수</th>
						    <th scope="col">목</th>
						    <th scope="col">금</th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
						    <th scope="row" rowspan="2">1교시</th>
						    <td class="on"></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td class="on"></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">2교시</th>
						    <td class="on"></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">3교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">4교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						    <tr>
						    <th scope="row" rowspan="2">5교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">6교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">7교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">8교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <th scope="row" rowspan="2">9교시</th>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						  </tr>
						 
						</tbody>
					</table>
                    
                    
                    
                </div>
				<!--tbl-->
					<div class="tbl-wrap">
						<div class="tbl-wrap">
						<div class="title">
							<h4>강의 정보</h4>
							<div class="box-btn">
								<button type="submit" id="insertBtn" class="btn purple">등록</button>
							</div>
						</div>
							<table class="tbl center">
								<caption></caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
								<c:set var="syllaVO" value="${syllabusVO }" />
									<tr>
										<th scope="row">담당교수</th>
										<td colspan>
											${syllabusVO.professorVO.userNm }
										</td>
										<th scope="row">교수소속</th>
										<td>
											${syllabusVO.majorList.majorNm}
										</td>
									</tr>
									<tr>
										<th scope="row">희망정원</th>
										<td>
											${syllabusVO.hopeMax }명
										</td>
										
										<th scope="row">학년</th>
										<td>
											${syllabusVO.camYear}학년
										</td>
									</tr>
									<tr>
										<th scope="row">강의시수</th>
										<td>
											${syllabusVO.lectHour}
										</td>
										<th scope="row">학점</th>
										<td>
											${syllabusVO.lectHour}학점
										</td>
									</tr>
									<tr>
										<th scope="row">이수구분</th>
										<td>
											${syllabusVO.subMajorVO.estaSub}
										</td>
										<th scope="row">희망강의실</th>
										<td>
											${syllabusVO.lectRoomVO.buildId }  ${syllabusVO.lectRoomVO.buildNum }호
										</td>
									</tr>
									<tr>
										<th scope="row">강의명</th>
										<td colspan="3">
											${syllabusVO.lectNm}
										</td>
									</tr>
									<tr>
										<th scope="row">희망시간</th>
										<td colspan="3">
											${syllabusVO.hopeTime}시간
										</td>
									</tr>
									<tr>
										<th scope="row">비고</th>
										<td colspan="3">
											${syllabusVO.lectCom }
											<input type="hidden" id="syllaId" value="${syllabusVO.syllaId }" />
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!--end tbl-->
			</div>
		</div>
	</div>
</div>

<script>
// 건물, 강의실 셀렉트박스 변경
$("#selBuild").on("change", function(){
	let selBuild = $(this).val();
	let data = {"buildId":selBuild};
	
	//*** 나중에 시큐리티 사용 시 token처리 필요
	$.ajax({
		url:"${pageContext.request.contextPath}/emp/lectroomManage/selectLectRoomList",
		contentType:"application/json;charset=UTF-8",
		data:JSON.stringify(data),
		dataType:"json",
		type:"post",
		success:function(result){
			$("#selLectRoom").html("");//초기화
		
			$.each(result,function(index,lectRoomVO){
				$("#selLectRoom").append("<option value='"+lectRoomVO.lectRoomId+"'>" + lectRoomVO.buildNum + "호" + "(" + lectRoomVO.numPpl + "명)" + "</option>");
			});
		}
	});
});

$('#insertBtn').on('click', function(){
	let selBuild = $('#selBuild').val();
	let selLectRoom = $('#selLectRoom').val();
	let syllaId = $('#syllaId').val();
	
// 	console.log("selBuild = " + selBuild);
// 	console.log("selLectRoom = " + selLectRoom);
// 	console.log("syllaId = " + syllaId);
	
	let data = {"syllaId" : syllaId,
				"lectRoomId" : selLectRoom,
				"buildId" : selBuild};
	
	console.log(data);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/emp/lectroomManage/insertLect",
		contentType:"application/json;charset=UTF-8",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		success : function(resp) {
			alert("등록됨!");
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
	
})
</script>