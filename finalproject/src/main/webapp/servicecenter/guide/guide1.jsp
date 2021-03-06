<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guide</title>
<style>
#tab_ul li {
	float: left; 
	display:inline;
	list-style: none;
	padding:20px 30px; /* 각 메뉴 간격 */
	border:1px solid
}
</style>
</head>
<body>
	<div id="guide_body">
		<h2>이용안내</h2>
		<ul id="tab_ul">
			<li><a href="/Coin/servicecenter/guide1.do">거래이용 안내</a></li>
			<li><a href="/Coin/servicecenter/guide2.do">입출금 이용안내</a></li>
		</ul>

		<br>

		<p>1. 마켓 구분</p>
		<ul>
			<li>KRW 마켓 : KRW(원화)로 암호화폐를 사고팔 수 있습니다.</li>
			<li>BTC 마켓 : BTC(비트코인)로 다른 암호화폐를 사고팔 수 있습니다. <br>- 매매대상이 되는
				암호화폐 가격은 BTC로 결정되며, KRW 환산가격(BTC 기준 가격 x BTC/KRW 현재가)이 참고용으로 함께
				표시됩니다.
			</li>
			<li>ETH 마켓 : ETH(이더리움)로 다른 암호화폐를 사고팔 수 있습니다. <br>- 매매대상이 되는
				암호화폐 가격은 ETH로 결정되며, KRW 환산가격(ETH 기준 가격 x ETH/KRW 현재가)이 참고용으로 함께
				표시됩니다.
			</li>
			<li>USDT 마켓 : USDT(테더)로 다른 암호화폐를 사고팔 수 있습니다. <br>- 매매대상이 되는
				암호화폐 가격은 USDT로 결정되며, KRW 환산가격(USDT 기준 가격 x USDT/KRW 현재가)이 참고용으로 함께
				표시됩니다.
			</li>
		</ul>
		<p>2. 일별 거래 데이터 기준</p>
		<p>업비트는 UTC(협정세계시)를 기준으로 일별 데이터를 계산합니다. 대다수의 글로벌 거래소들이 UTC 기준 시간을
			사용하고 있어 해외 시세 비교에 용이한 장점이 있습니다. <br>UTC는 한국시간(KST)보다 9시간이 느립니다.</p>
		<ul>
			<li>전일대비 등락률 : UTC 기준 0시(=한국시간 오전 9시) 종가 대비 당일 종가(혹은 현재가) 등락률</li>
			<li>거래대금 : 최근 24시간 동안의 누적 거래대금</li>
			<li>캔들차트 일봉 : UTC 기준 0시부터 24시간(혹은 현재시점) 동안의 시가/고가/저가/종가</li>
		</ul>
		<p>3. 거래수수료 할인 이벤트!</p>
		<table frame="hsides" rules="all">
			<tr>
				<th>KRW 마켓</th>
				<th>BTC 마켓</th>
				<th>ETH 마켓</th>
				<th>USDT 마켓</th>
			</tr>
			<tr>
				<td><del>0.139%</del> → 0.05% <br> <font color="red">(64%
						할인)</font></td>
				<td colspan="3"><del>0.25%</del> → 0.2% <br> <font
					color="red">(20% 페이백)</font></td>

			</tr>
		</table>
		<p>4. 최소 주문가능 금액</p>
		<table frame="hsides" rules="all">
			<tr>
				<th>KRW 마켓</th>
				<th>BTC 마켓</th>
				<th>ETH 마켓</th>
				<th>USDT 마켓</th>
			</tr>
			<tr>
				<td>500 KRW</td>
				<td>0.0005 BTC</td>
				<td>0.0005 ETH</td>
				<td>0.0005 USDT</td>

			</tr>
		</table>

		<p>5. 주문 유형</p>
		<ul>
			<li>지정가 주문 : 가격을 정해서 주문을 내면 지정한 매수가격 보다 높은 가격에 체결되지 않고, 지정한 매도가격
				보다 낮은 가격에 체결되지 않습니다. <br>매매체결 여부보다 가격을 우선으로 생각할 때 사용합니다. <br> *미체결
				주문 유의사항 <br> - BTC 마켓/ETH 마켓/USDT 마켓의 미체결 주문은 주문 시점으로부터 24시간 후에
				자동으로 취소됩니다. - KRW 마켓은 직접 취소하기 전까지 주문이 유지됩니다.
			</li>
			<li>시장가 주문 : 가격을 정하지 않고 수량만 적어 주문을 내면 주문이 접수된 시점에서 가장 유리한 가격으로
				매매가 체결됩니다. 빠르게 매매를 체결하고 싶을 때 사용합니다. <br> - 시장가 주문은 일부 마켓에서만
				지원됩니다.
			</li>
		</ul>
		<p>6. 호가 표시 단위</p>
		KRW 마켓(코인 가격에 따라 구분)
		<table frame="hsides" rules="all">
			<tr>
				<th>코인 1개 가격</th>
				<th>호가 단위</th>
			</tr>
			<tr>
				<td>2,000,000원 이상</td>
				<td>1,000원</td>
			</tr>
			<tr>
				<td>1,000,000원 이상~2,000,000원 미만</td>
				<td>500원</td>
			</tr>
			<tr>
				<td>500,000원 이상~1,000,000원 미만</td>
				<td>100원</td>

			</tr>
			<tr>
				<td>100,000원 이상~500,000원 미만</td>
				<td>50원</td>
			</tr>
			<tr>
				<td>10,000원 이상~100,000원 미만</td>
				<td>10원</td>
			</tr>
			<tr>
				<td>1,000원 이상~10,000원 미만</td>
				<td>5원</td>
			</tr>
			<tr>
				<td>1,000원 미만</td>
				<td>1원</td>
			</tr>
			<tr>
				<td>100원 미만</td>
				<td>0.1원</td>
			</tr>
			<tr>
				<td>10원 미만</td>
				<td>0.01원</td>
			</tr>
		</table>
		<p>7. 거래지원 종료 정책 안내</p>
		<p>
			두나무 주식회사(이하 “두나무”)는 암호화폐 거래서비스인 업비트(이하 “업비트”) 내에서 거래되는 각종 암호화폐에 대해
			부득이하게 지원을 종료할 수 있습니다. 두나무는 이런 경우 아래에 명시된 절차에 따라 가급적 사전공지를 하도록 하겠으나,
			때로는 사전공지 없이도 이루어질 수 있음을 양해해 주시기 바랍니다. <br> 두나무가 특정 암호화폐에 대해 거래
			지원을 종료하는 사유는 다음과 같습니다.
		</p>
		<ul>
			<li>법령에 위반되거나 정부 기관 또는 유관 기관의 지시 또는 정책에 의해 거래 지원이 지속되기 어려울 경우</li>
			<li>해당 암호화폐의 실제 사용 사례가 부적절하거나 암호화폐에 대한 사용자들의 반응이 부정적인 경우</li>
			<li>해당 암호화폐의 기반 기술에 취약성이 발견되는 경우</li>
			<li>해당 암호화폐가 더 이상 원래의 개발팀이나 다른 이들로부터 기술지원을 받지 못할 경우</li>
			<li>해당 암호화폐의 거래량이 현저히 떨어지거나, 해당 암호화폐에 대해 시세조종 등 부당 거래 행위가 의심되거나
				발견된 경우</li>
			<li>두나무의 정보 요청에 대해 해당 암호화폐 발행 팀/관계자들의 대응이 현저히 지연될 경우</li>
			<li>해당 암호화폐가 업비트에 거래지원이 개시되었을 당시 맺었던 서비스 조건 및 협약서를 암호화폐 개발팀 또는
				관계자들이 위반한 경우</li>
			<li>해당 암호화폐에 대해 사용자들의 불만이 계속적으로 접수되는 경우</li>
			<li>또는 상기 각호의 사유와 유사하거나 업비트 사용자들을 보호하기 위한 경우.</li>
		</ul>
		<p>
			두나무가 특정 코인에 대한 거래지원을 종료하는 경우 공지는 자사의 홈페이지나 업비트 공지사항을 통해 이루어집니다. 암호화폐에
			대한 거래지원 종료가 사전에 공지되는 경우, 지원이 종료되는 시점은 통상 공지 후 두번째 토요일이 될 것입니다. 예를 들어,
			만약 마켓에 대한 지원 중지가 수요일에 공표되었다면, 해당 마켓에 대한 실제 지원 중지는 그 다음주 토요일에 (공표 후
			10일 후)에 보통 이루어지게 됩니다. 상기에도 불구하고, 긴급한 상황이 발생하는 경우에는 두나무가 사전 공지 없이 특정
			암호화폐에 대해 거래지원을 종료할 수 있습니다. <br> 특정 암호화폐에 대한 거래지원이 종료되면 두나무는 해당
			암호화폐들에 대한 출금이 14일 내에 이루어지도록 지원합니다. 그러나, 부득이한 상황에서는 이러한 출금 지원 기간이 짧아질
			수도 있습니다. 사용자들은 공지된 출금 기간의 만기일 전까지 암호화폐를 출금해야 합니다. 해당 출금기간 내에 출금이
			이루어지지 않는 경우, 향후 출금이 기술적으로 불가능할 수 있으니 유의하시기 바랍니다.
		</p>
	</div>
</body>
</html>