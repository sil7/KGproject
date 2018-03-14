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
li {
	list-style: none;
}

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


#sideMenu ul {list-style-type:none;max-width:200px;}
.list {border:1px solid #cccccc;padding:10px;} /* 기본 css 및 선택하지 않은 경우 */
.list.on {border:1px solid #000000;} /* 선택한 경우 css */
</style>
<script type="text/javascript">
$('li').click(function() {
 $('li').removeClass('on');
 $(this).addClass('on');
});
</script>

</head>
<body>
	<div id="sideMenu">

		<h2>고객 센터</h2>

		<ul>
			<li class="list on"><a href="/Coin/servicecenter/noticeList.do">공지사항</a></li>
			<li class="list"><a href="/Coin/servicecenter/guide1.do">이용안내</a></li>
			<li class="list"><a href="/Coin/servicecenter/policy.do">정책 및 고지</a></li>
			<li class="list"><a href="/Coin/servicecenter/question.do">자주하는 질문</a></li>
			<li class="list"><a href="/Coin/servicecenter/documents.do">서류 제출 안내</a></li>
		</ul>

	</div>

</body>
</html>