<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%session.setAttribute("loginId", "가즈아");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/socketjs-0.3.4.js"/>"></script>

<script type="text/javascript">
	
	$(document).ready(function() {
		$("#sendBtn").click(function() {
			sendMessage();
		});
	});
	var sock;
	//웸소켓을 지정한 url로 연결한다.
	sock = new SockJS("<c:url value="/echo"/>");
	//자바스크립트 안에 function을 집어넣을 수 있음.
	//데이터가 나한테 전달되읐을 때 자동으로 실행되는 function
	sock.onmessage = onMessage;
	//데이터를 끊고싶을때 실행하는 메소드
	sock.onclose = onClose;
	/* sock.onopen = function(){
	     sock.send($("#message").val());
	 }; */

	function sendMessage() {
		/*소켓으로 보내겠다.  */
		sock.send($("#message").val());
	}

	//evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)
	function onMessage(evt) {
		var data = evt.data;
		$("#chatting_data").append("${loginId} : ");
		$("#chatting_data").append(data + "<br/>");
		//sock.close();
	}

	function onClose(evt) {
		$("#chatting_data").append("연결 끊김");
	}
</script>

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

.coin_search input {
	height: 38px;
	border: 0;
	width: 85%;
	font-weight: bold;
	margin-left: 5px;
}

.coin_list {
	width: 100%;
}

.coin_list_top {
	background-color: #f8f9fb;
}

.trade_article {
	display: table;
	width: 33%;
	background-color: white;
	height: 320px;
	float: left;
}

.coin_list_top {
	display: table-row;
	float: left;
	width: 100%;
	text-align: center
}

.trade_article .cell {
	display: table-cell;
	padding: 5px;
	border-bottom: 1px solid #DDD;
}

.trade_article .col1 {
	width: 126px;
	font-weight: bold;
}

.trade_article .col2 {
	width: 90px;
}

.trade_article .col3 {
	width: 72px;
}

.trade_article .col4 {
	width: 108px;
}

.coin_list_coins {
	display: table-row;
	float: left;
	width: 100%;
	text-align: center;
	font-size: small;
}

.chatting {
	width: 33%;
	height: 456px;
	background-color: white;
	float: left;
	margin-top: -220px;
}

.current_coin_name {
	width: 100%;
	height: 50px;
	line-height: 50px;
	border-bottom: 1px solid #DDD;
}

.current_coin_name p {
	font-size: small;
	float: left;
	display: block;
	padding: 0;
	margin-top: 8px;
	height: 20px;
}

.current_coin_name strong {
	font-size: x-large;
	float: left;
	display: block;
	margin-left: 10px;
}

.current_coin_inf {
	width: 100%;
	height: 100px;
	text-align: center;
	border-bottom: 1px solid #DDD;
}

.current_coin_price {
	width: 30%;
	height: 100%;
	float: left;
	margin-right: 70px;
	margin-left: 25px;
}

.current_coin_pricegap {
	width: 20%;
	height: 100%;
	float: left;
	margin-right: 70px;
}

.current_coin_volume {
	width: 25%;
	height: 100%;
	float: left;
}

.current_coin_inf_top {
	width: 100%;
	height: 50%;
	border-bottom: 1px solid #DDD;
}

.current_coin_inf_bottom {
	width: 100%;
	height: 50%;
}

.current_coin_inf span {
	height: 50px;
	line-height: 50px;
	float: left;
}

.currentprice {
	font-size: xx-large;
	font-weight: bold;
	color: #d14e45;
}

.krw {
	vertical-align: bottom;
	color: #d14e45;
}

.currentpercent {
	font-weight: bold;
	color: #d14e45;
}

.highprice {
	margin-left: 5px;
	color: #d14e45;
	font-weight: bold;
}

.lowprice {
	margin-left: 5px;
	color: #1761c2;
	font-weight: bold;
}

.current_coin_chart {
	width: 100%;
	height: 400px;
}

.trade {
	width: 65%;
	height: 50%;
	margin-right: 10px;
	margin-top: 10px;
	float: left;
}

.trade_left {
	width: 48.7%;
	height: 100%;
	margin-right: 10px;
	background-color: white;
	float: left;
}

.tabmenu {
	
}

.tabmenu {
	background-color: white;
	float: left;
	position: relative;
	width: 50%;
	height: 100%;
	font-family: dotum, "", verdana;
	line-height: 17px;
	font-size: 12px;
	color: #555;
	float: left;
}

.tabmenu img {
	border: none;
	vertical-align: top;
}

.tabmenu ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

.tabmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
}

.tabmenu .tabcontent {
	display: none;
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0px;
	top: 60px;
	text-align: center
}

.tabmenu .morebtn {
	position: absolute;
	right: 0;
	top: 30px;
}

.tabmenu a {
	text-decoration: none;
	display: block;
	color: black;
	font-weight: bold;
}

.tabmenu a:hover {
	text-decoration: underline;
}

.tabname {
	width: 33.33%;
	text-align: center;
	height: 40px;
	margin: 0;
	padding: 0;
	line-height: 40px;
	border-bottom: 1px solid #DDD;
}

.avtxt, .tradetxt, .pricetxt {
	width: 25%;
	height: 50px;
	float: left;
	text-align: left;
	line-height: 50px;
	color: gray;
	font-weight: bold;
	margin-left: 10px;
}

.avamount, .tradeamount, .priceamount {
	width: 70%;
	height: 50px;
	float: left;
	text-align: right;
	line-height: 50px;
}

.avamount {
	border-bottom: 1px solid #DDD;
}

.total {
	width: 80%;
	height: 70px;
	line-height: 70px;
	text-align: center;
	margin-left: 39px;
	margin-top: 20px;
	margin-bottom: 5px;
	background-color: #DDD;
	float: left;
	background-color: #DDD;
	font-size: 15px;
	background-color: #DDD
}

.totalleft {
	width: 25%;
	height: 70px;
	line-height: 70px;
	margin-left: 20px;
	color: black;
	font-weight: bold;
	float: left;
	text-align: left;
}

.totalright {
	width: 60%;
	height: 70px; line-height; 70 px;
	margin-right: 20px;
	color: black;
	font-weight: bold;
	float: right;
	text-align: right;
}

.tabcontent input {
	height: 45px;
	border: 0;
	text-align: right;
	margin-right: 20px;
	font-weight: bold;
}

.total span {
	margin-right: 10px;
}

.feeinfo {
	width: 80%;
	margin-left: 39px;
	height: 30px;
	float: left;
	text-align: left;
}

.tradeconfirm {
	margin-left: 39px;
	margin-top: 10px;
	width: 80%;
	height: 60px;
	float: left;
}

#buyBtn {
	width: 100%;
	height: 60px;
	border: 0;
	background-color: #d14e45;
	color: white;
	font-size: large;
	font-weight: bold;
	cursor: pointer;
}

#sellBtn {
	width: 100%;
	height: 60px;
	border: 0;
	background-color: #0952c5;
	color: white;
	font-size: large;
	font-weight: bold;
	cursor: pointer;
}

.tradeleft {
	display: table;
	width: 80%;
	margin: 0 auto;
	font-size: 7px;
}

.tradetable .tradetable_buy .tradetable_sell {
	display: table-row;
}

.tradetable .cell {
	display: table-cell;
	padding: 3px;
	border-bottom: 1px solid #DDD;
	height: 30px;
	text-align: center;
}

.tradetable .col1 {
	width: 170px;
}

.tradetable .col2 {
	width: 300px;
}

.tradetable .col3 {
	width: 120px;
}

.tradetable_buy .cell {
	display: block;
	padding: 3px;
	border-bottom: 1px solid #DDD;
	height: 30px;
	line-height: 30px;
	text-align: center;
	font-weight: bold;
	font-size: small;
	background-color: #ffaaaa
}

.tradetable_buy .col1 {
	width: 27.2%;
	float: left;
}

.tradetable_buy .col2 {
	width: 50%;
	float: left;
}

.tradetable_buy .col3 {
	width: 18%;
	float: left;
}

.tradetable_sell .cell {
	display: block;
	padding: 3px;
	border-bottom: 1px solid #DDD;
	height: 30px;
	line-height: 30px;
	text-align: center;
	font-weight: bold;
	font-size: small;
	background-color: #acd6ff
}

.tradetable_sell .col1 {
	width: 27.2%;
	float: left;
}

.tradetable_sell .col2 {
	width: 50%;
	float: left;
}

.tradetable_sell .col3 {
	width: 18%;
	float: left;
}

.trade_left .col2 {
	cursor: pointer;
}

.trade_left .col3 {
	cursor: pointer;
}

#chatting_data{
color:#8396ff;
}
</style>
<script>
	$(document).ready(

			function() {
				$(".trade_left .col2").click(
						function() {
							var price = $(this).text();
							$("#buyprice").val(price);
							$("#sellprice").val(price);
							var total = $("#buyamount").val()
									* $("#buyprice").val();
							$("#buytotal").text(total);
							var total2 = $("#sellamount").val()
									* $("#sellprice").val();
							$("#selltotal").text(total2);
						})
				$(".trade_left .col3").click(
						function() {
							var amount = $(this).text();
							$("#buyamount").val(amount);
							$("#sellamount").val(amount);
							var total = $("#buyamount").val()
									* $("#buyprice").val();
							$("#buytotal").text(total);
							var total2 = $("#sellamount").val()
									* $("#sellprice").val();
							$("#selltotal").text(total2);
						})
				$("#buyBtn").click(function() {
					$.ajax({
						type : "post",
						url : "btc/buyBTC.do",
						data : {
							price : $("#buyprice").val(),
							amount : $("#buyamount").val()
						},
						dataType : "text",
						success : function(data) {
							if (data == "exist") {
								$(".tradetable_buy").hide();
								setTimeout(function() {
									$(".tradetable_buy").show();
								}, 50)
							} else if (data == "none") {
								$(".tradetable_sell").hide();
								setTimeout(function() {
									$(".tradetable_sell").show();
								}, 50)

							}
						}
					})
				})
				$("#sellBtn").click(function() {
					$.ajax({
						type : "post",
						url : "btc/sellBTC.do",
						data : {
							price : $("#sellprice").val(),
							amount : $("#sellamount").val()
						},
						success : function(data) {

						}
					})
				})

				setInterval(function() {
					$.ajax({
						type : "post",
						url : "btc/buyList.do",
						datatype : "json",
						success : function(data) {
							var parsedJson = JSON.parse(data);

							$.each(parsedJson.list, function(index, items) {

								var id1 = "buyprice" + (index);
								var id2 = "buyamount" + (index);

								$('#' + id1).text(items.price);
								$('#' + id2).text(items.amount);

							})
						}

					})

				}, 500)
				setInterval(function() {
					$.ajax({
						type : "post",
						url : "btc/sellList.do",
						datatype : "json",
						success : function(data) {
							var parsedJson = JSON.parse(data);
							$.each(parsedJson.list, function(index, items) {

								var id1 = "sellprice" + (index);
								var id2 = "sellamount" + (index);

								$('#' + id1).text(items.price);
								$('#' + id2).text(items.amount);

							})
						}

					})
				}, 500)

				$(".tabmenu").each(
						function() {
							var tab = $(this).children("ul");
							var tabBtn = tab.children("li").children("a");
							var content = tabBtn.nextAll();

							// 탭버튼을 클릭했을때
							tabBtn.click(function() {
								// 이미 on 상태면 pass
								if ($(this).hasClass("on"))
									return;

								// 모든 컨텐츠 부분을 안보이게 한뒤
								content.hide();

								// 클릭한 tab 버튼(a태그) 옆의 모든 태그들은 보이도록
								$(this).nextAll().show();

								// 모든탭 버튼에 있던 on 클래스를 빼고
								// 현재 클릭한 탭메뉴 버튼에 on 클래스 추가
								tabBtn.removeClass("on");
								$(this).addClass("on");

								// 탭버튼를 쭉 돌면서 on 클래스가 있는 버튼만 on 이미지로 바꾸고
								// 나머지 버튼들은 off 이미지로 바꾼다.
								tabBtn.each(function() {

									if ($("#buytab").hasClass("on")) {
										$("#buytab").css("color", "#d14e45");
										$("#selltab").css("color", "black");
										$("#tabnameisbuy").css("border-bottom",
												"3px solid #d14e45");
										$("#tabnameissell").css(
												"border-bottom",
												"1px solid #DDD");
										$("#tabnameishis").css("border-bottom",
												"1px solid #DDD")
									} else if ($("#selltab").hasClass("on")) {
										$("#selltab").css("color", "#0952c5");
										$("#buytab").css("color", "black");
										$("#tabnameisbuy").css("border-bottom",
												"1px solid #DDD");
										$("#tabnameissell").css(
												"border-bottom",
												"3px solid #0952c5");
										$("#tabnameishis").css("border-bottom",
												"1px solid #DDD")
									} else {
										$("#selltab").css("color", "black");
										$("#buytab").css("color", "black");
										$("#tabnameisbuy").css("border-bottom",
												"1px solid #DDD");
										$("#tabnameissell").css(
												"border-bottom",
												"1px solid #DDD");
										$("#tabnameishis").css("border-bottom",
												"3px solid black")
									}

								});
							});

							// 맨첫번째 탭버튼 클릭처리
							tabBtn.eq(0).click();
						});

				$("#buyamount").keyup(function() {
					var total = $("#buyamount").val() * $("#buyprice").val();
					$("#buytotal").text(total);
				})
				$("#buyprice").keyup(function() {
					var total = $("#buyamount").val() * $("#buyprice").val();
					$("#buytotal").text(total);
				})
				$("#sellamount").keyup(function() {
					var total = $("#sellamount").val() * $("#sellprice").val();
					$("#selltotal").text(total);
				})
				$("#sellprice").keyup(function() {
					var total = $("#sellamount").val() * $("#sellprice").val();
					$("#selltotal").text(total);
				})
				/* 
				 $("#buyBtn").click(function() {
				 $("#buymove").submit();
				 })
				 $("#sellBtn").click(function() {
				 $("#sellmove").submit();
				 }) */
			});
</script>

<body bgcolor="#CCCCCC">
	<div id=trade_wrapper>
		<div class=trade_contents>
			<div class=current_coin_name>
				<strong>비트코인</strong>
				<p>BTC/KRW</p>
			</div>
			<div class=current_coin_inf>
				<div class=current_coin_price>
					<div class=current_coin_inf_top>
						<span class=currentprice>10,400,500</span><span class=krw>KRW</span>
					</div>
					<div class=current_coin_inf_bottom>
						<span>전일대비</span><span class=currentpercent>+0.98%</span>
					</div>
				</div>
				<div class=current_coin_pricegap>
					<div class=current_coin_inf_top>
						<span>고가</span><span class=highprice>10,600,600</span>
					</div>
					<div class=current_coin_inf_bottom>
						<span>저가</span><span class=lowprice>10,199,300</span>
					</div>
				</div>
				<div class=current_coin_volume>
					<div class=current_coin_inf_top>
						<span>거래량</span>
					</div>
					<div class=current_coin_inf_bottom>
						<span>거래대금</span>
					</div>
				</div>
			</div>
			<div class=current_coin_chart>차트</div>
		</div>

		<div class=trade_article>
			<div class=coin_search>
				<input type=text placeholder="코인명/심볼 입력" name=search_coin>
			</div>
			<div class=coin_list_top>
				<span class="cell col1"><img
					src="resources/img/coin_top_img1.PNG"></span> <span
					class="cell col2"><img src="resources/img/coin_top_img2.PNG"></span>
				<span class="cell col3"><img
					src="resources/img/coin_top_img3.PNG"></span> <span
					class="cell col4"><img src="resources/img/coin_top_img4.PNG"></span>
			</div>
			<div class=coin_list_coins>
				<span class="cell col1">비트코인</span> <span class="cell col2">14,000,000</span>
				<span class="cell col3">+0.98%</span> <span class="cell col4">146,300백만</span>
			</div>
		</div>
		<div class=trade>
			<div class=trade_left>
				<div class=tradetable>
					<span class="cell col1"><b>구매/판매</b></span> <span class="cell col2"><b>가격</b></span>
					<span class="cell col3"><b>수량</b></span>

				</div>
				<div class=tradetable_sell>
					<span class="cell col1">판매</span> <span class="cell col2"
						id=sellprice4></span> <span class="cell col3" id=sellamount4></span>
				</div>
				<div class=tradetable_sell>
					<span class="cell col1">판매</span> <span class="cell col2"
						id=sellprice3></span> <span class="cell col3" id=sellamount3></span>
				</div>
				<div class=tradetable_sell>
					<span class="cell col1">판매</span> <span class="cell col2"
						id=sellprice2></span> <span class="cell col3" id=sellamount2></span>
				</div>
				<div class=tradetable_sell>
					<span class="cell col1">판매</span> <span class="cell col2"
						id=sellprice1></span> <span class="cell col3" id=sellamount1></span>
				</div>
				<div class=tradetable_sell>
					<span class="cell col1">판매</span> <span class="cell col2"
						id=sellprice0></span> <span class="cell col3" id=sellamount0></span>
				</div>
				<div class=tradetable_buy>
					<span class="cell col1">구매</span> <span class="cell col2"
						id=buyprice0></span> <span class="cell col3" id=buyamount0></span>
				</div>
				<div class=tradetable_buy>
					<span class="cell col1">구매</span> <span class="cell col2"
						id=buyprice1></span> <span class="cell col3" id=buyamount1></span>
				</div>
				<div class=tradetable_buy>
					<span class="cell col1">구매</span> <span class="cell col2"
						id=buyprice2></span> <span class="cell col3" id=buyamount2></span>
				</div>
				<div class=tradetable_buy>
					<span class="cell col1">구매</span> <span class="cell col2"
						id=buyprice3></span> <span class="cell col3" id=buyamount3></span>
				</div>
				<div class=tradetable_buy>
					<span class="cell col1">구매</span> <span class="cell col2"
						id=buyprice4></span> <span class="cell col3" id=buyamount4></span>
				</div>

			</div>

			<div class=tabmenu>
				<ul>

					<li class="tabname" id="tabnameisbuy"><a
						href="javascript:void(0);" id=buytab>매수</a>

						<div class="tabcontent">
							<form action=btc/buyBTC.do method=post id=buymove>
								<div class=avtxt>주문가능</div>
								<div class=avamount>KRW</div>
								<div class=tradetxt>매수수량</div>
								<div class=tradeamount>
									<input type=text id=buyamount placeholder=0 name=amount>BTC
								</div>
								<div class=pricetxt>매수가격</div>
								<div class=priceamount>
									<input type=text id=buyprice placeholder=0 name=price>KRW
								</div>
								<div class=total>
									<div class=totalleft>주문총액</div>
									<div class=totalright>
										<span id=buytotal>0</span>KRW
									</div>
								</div>
								<div class=feeinfo>*수수료 : 0.05%</div>
								<div class=tradeconfirm>
									<button type=button id=buyBtn>매수</button>
								</div>
							</form>
						</div></li>

					<li class="tabname" id="tabnameissell"><a
						href="javascript:void(0);" id=selltab>매도</a>
						<div class="tabcontent">
							<form action=btc/sellBTC.do method=post id=sellmove>
								<div class=avtxt>주문가능</div>
								<div class=avamount>BTC</div>
								<div class=tradetxt>매도수량</div>
								<div class=tradeamount>
									<input type=text id=sellamount placeholder=0 name=amount>BTC
								</div>
								<div class=pricetxt>매도가격</div>
								<div class=priceamount>
									<input type=text id=sellprice placeholder=0 name=price>KRW
								</div>
								<div class=total>

									<div class=totalleft>주문총액</div>
									<div class=totalright>
										<span id=selltotal>0</span>KRW
									</div>

								</div>
								<div class=feeinfo>*수수료 : 0.05%</div>
								<div class=tradeconfirm>
									<button type=button id=sellBtn>매도</button>
								</div>
							</form>

						</div></li>
					<li class="tabname" id="tabnameishis"><a
						href="javascript:void(0);">거래내역</a>
						<div class="tabcontent">123</div></li>
				</ul>
			</div>
		</div>
		<div class=chatting>
			<input type="text" id="message"/> 
			<input type="button" id="sendBtn" value="전송" />
			<div id="chatting_data"></div>
		</div>

	</div>
</body>
</html>