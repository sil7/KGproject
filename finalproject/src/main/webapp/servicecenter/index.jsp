<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#service_sideMenu{
float:left;
}
#service_body{
float:left;
}
</style>
</head>
<body>
	<div  style="border:1px ">
		<div id="service_sideMenu" style="border:1px solid red;">
			<jsp:include page="/servicecenter/serviceCenterSideMenu.jsp" />
		</div>
		<div id="service_body" style="border:1px solid red;">
			<jsp:include page="${display }" />
		</div>
	</div>
</body>
</html>





