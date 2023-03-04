<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!doctype html>
<html>
	<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
		<title>학사정보시스템</title>
		
		<tiles:insertAttribute name="preScript" />
		
		<c:if test="${not empty message }">
		<script>
			alert("${message}");		
		</script>
		</c:if>
		

       
		
		
		
	</head>
	<body class="sb-nav-fixed">
	

		<tiles:insertAttribute name="headerMenu" />
		
	
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<tiles:insertAttribute name="leftMenu" />
			</div>		
			
			
			<!-- Main Content Area start -->
			<div id="layoutSidenav_content">
         		<main>
             		<div class="container-fluid">	
						<tiles:insertAttribute name="content" />
					</div>
				</main>
			</div>
			<!-- Main Content Area end -->
		</div>

		<tiles:insertAttribute name="postScript" />
	</body>
</html>


<script>

let encodedURL = '';

let starAjax = function(){
	$.ajax({
		url : "${pageContext.request.contextPath}/bookmark",
		method : "post",
		contentType : "application/json;charset=UTF-8",
		data : encodedURL,
		dataType : "text",
		success : function(resp) {
			console.log(resp);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}



$(".star").click(function () {
    let menuUrl = window.location.pathname;
    encodedURL = encodeURI(menuUrl);
	let data = {
		menuUrl : menuUrl
	}
    console.log(menuUrl);
	
    if ($(this).hasClass('on')) {
        $(this).removeClass('on');
     
        // star이 되었을 때 delete
    	starAjax();
        
    } else {
    	// star on이 되었을 때 insert
        $(this).addClass('on');
        
        starAjax();
    }
});
	

</script>