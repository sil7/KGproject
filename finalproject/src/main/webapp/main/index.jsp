<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

#wrapper { width:1500px; height:1000px; margin:0 auto; background-color: #D5D5D5;}

#header{width:100%; height:10%; }

#content_wrapper{width:100%; height:80%; background-color: #D5D5D5;}

#content_left{width:75%; height:100%; float:left;}
#content_left_top {height:50%;}
#content_left_down {height:50%;}
#content_right{width:23%; height:100%; float:left; background-color:lightyellow;}
#content_right_top { height:50%;}
#content_right_down {height:50%;}
#footer{width:100%; height:10%;; float:left; }

</style>
</head>
<body>
<div id="wrapper">

<div id="header">ByteCoin</div>

<div id="content_wrapper">

<div id="content_left">
<div id="content_left_top"><jsp:include page="../trend/dong1.jsp"/></div>
<div id="content_left_down"><jsp:include page="../trend/dong2.jsp"/></div>
</div>

<div id="content_right">
<div id="content_right_top">오늘 상승하는 코인</div>
<div id="content_right_down">오늘 거래대금이 많은 코인</div>
</div>

</div>
<div id="footer">footer</div>
</div>

</body>
</html>