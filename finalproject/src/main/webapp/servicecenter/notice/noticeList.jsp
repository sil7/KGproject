<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">

a:link {
	color: black;
	text-decoration: none;
}

a:activate {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

#noticeBoard {
	float: left;
}
</style>
</head>
<body>

	<div id="noticeBoard">

		<h2>공지사항</h2>
		<table>
			<tr>
				<td>제목</td>
				<td>등록일</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="boardDTO" items="${list }">
				<tr>
					<td><a href="/Coin/servicecenter/notice_view.do">${boardDTO.subject }</a></td>
					<td>${boardDTO.logtime }</td>
					<td>${boardDTO.hit }</td>
				</tr>
			</c:forEach>
		</table>
		<div style="width: 900px; text-align: center;">${boardPaging.pagingHTML }</div>
	</div>
</body>
</html>