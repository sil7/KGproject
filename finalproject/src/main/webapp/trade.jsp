<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#trade_wrapper {
	width: 1200px;
	height: 1200px;
	margin: 0 auto;
}

.trade_contents {
	width: 65%;
	height: 46%;
	float: left;
	margin-right: 10px;
	background-color: white;
}


.coin_search {
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #d4d6dc;
}
.coin_search input{
	height:38px;
	border:0;
	width:85%;
	font-weight: bold;
	margin-left:5px;
}

.coin_list {
	width: 100%;
}
.coin_list_top{
	background-color: #f8f9fb;
}
.trade_article {display: table; width: 33%;background-color: white;height:320px;float:left;}
.coin_list_top {display: table-row; float:left; width:100%;text-align: center}
.cell {display: table-cell; padding: 5px; border-bottom: 1px solid #DDD;}
.col1 {width: 126px;font-weight: bold;}
.col2 {width: 90px;}
.col3 {width: 72px;}
.col4 {width: 108px;}
.coin_list_coins{
	display: table-row; float:left; width:100%;text-align: center;font-size: small;
}
.chatting{width:33%;height:456px;background-color: white;float:left;margin-top:-220px;}
.current_coin_name{
	width:100%;
	height:50px;
	line-height:50px;
	border-bottom: 1px solid #DDD;
}
.current_coin_name p{

	font-size: small;
	float:left;
	display:block;
	padding:0;
	margin-top:8px;
	height:20px;
	
}
.current_coin_name strong{

	font-size: x-large;
	float:left;
	display:block;
	margin-left:10px;
}
.current_coin_inf{
	width:100%;
	height:100px;
	text-align: center;
	border-bottom: 1px solid #DDD;
}
.current_coin_price{
	width:30%;
	height:100%;
	float:left;
	margin-right:70px;
	margin-left:25px;
}
.current_coin_pricegap{
	width:20%;
	height:100%;
	float:left;
	margin-right:70px;
}
.current_coin_volume{
	width:25%;
	height:100%;
	float:left;

}
.current_coin_inf_top{
	width:100%;
	height:50%;
	border-bottom: 1px solid #DDD;
}
.current_coin_inf_bottom{
	width:100%;
	height:50%;
}
.current_coin_inf span{
	height:50px;
	line-height:50px;
	float:left;
}
.currentprice{
	font-size: xx-large;
	font-weight: bold;
	color:#d14e45;
}
.krw{
	vertical-align: bottom;
	color:#d14e45;
}
.currentpercent{
	font-weight: bold;
	color:#d14e45;
}
.highprice{
	margin-left:5px;
	color:#d14e45;
	font-weight: bold;
}
.lowprice{
	margin-left:5px;
	color:#1761c2;
	font-weight: bold;
}
.current_coin_chart{
	width:100%;
	height:400px;
}
.trade{
	width:65%;
	height:50%;
	margin-right:10px;
	margin-top:10px;
	float:left;
}
.trade_left{
	width:48.7%;
	height:100%;
	margin-right:10px;
	background-color: white;
	float:left;	
}
.trade_right{
	width:50%;
	height:100%;
	background-color: white;
	float:left;
}
.trade_right ul{
	list-style: none;
	margin:0;
	padding:0;
	height:50px;
	line-height:50px;
	text-align: center;
	border-bottom: 1px solid #d4d6dc;
}
.trade_right li{
	width:33.33%;
	height:	50px;

	font-weight: bold;
	float:left;
}
.trade_right a{
	display:block;
	text-decoration: none;
	color:black;
}
.trade_right a:hover{
	text-decoration: underline;
}
</style>
<body bgcolor="#CCCCCC">
	<div id=trade_wrapper>
		<div class=trade_contents>
			<div class=current_coin_name><strong>비트코인</strong><p>BTC/KRW</p></div>
			<div class=current_coin_inf>
				<div class=current_coin_price>
					<div class=current_coin_inf_top><span class=currentprice>10,400,500</span><span class=krw>KRW</span></div>
					<div class=current_coin_inf_bottom><span>전일대비</span><span class=currentpercent>+0.98%</span></div>
				</div>
				<div class=current_coin_pricegap>
					<div class=current_coin_inf_top><span>고가</span><span class=highprice>10,600,600</span></div>
					<div class=current_coin_inf_bottom><span>저가</span><span class=lowprice>10,199,300</span></div>
				</div>
				<div class=current_coin_volume>
					<div class=current_coin_inf_top><span>거래량</span></div>
					<div class=current_coin_inf_bottom><span>거래대금</span></div>
				</div>
			</div>
			<div class=current_coin_chart>차트</div>
		</div>
		
		<div class=trade_article>
			<div class=coin_search>
				<input type=text placeholder="코인명/심볼 입력" name=search_coin>
			</div>
			<div class=coin_list_top>
				<span class="cell col1"><img src="resources/img/coin_top_img1.PNG"></span> 
				<span class="cell col2"><img src="resources/img/coin_top_img2.PNG"></span>
				<span class="cell col3"><img src="resources/img/coin_top_img3.PNG"></span>
				<span class="cell col4"><img src="resources/img/coin_top_img4.PNG"></span>
			</div>
			<div class=coin_list_coins>
				<span class="cell col1">비트코인</span> 
				<span class="cell col2">14,000,000</span>
				<span class="cell col3">+0.98%</span>
				<span class="cell col4">146,300백만</span>
			</div>
		</div>
		<div class=trade>
			<div class=trade_left></div>
			<div class=trade_right>
				<ul>
					<a href="#"><li>매수</a>
					<a href="#"><li>매도</a>
					<a href="#"><li>거래내역</a>
				</ul>
			</div>
			
		</div>
		<div class=chatting>채팅창</div>
		
	</div>
</body>
</html>