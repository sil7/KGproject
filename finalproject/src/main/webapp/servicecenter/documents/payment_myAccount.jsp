<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
//    $(document).ready(function() {
// 	   $('.boxTab li').on("click", function () {
//       $.ajax({
//          type:"get",
//          url:"payment_anotherAccount.jsp",
//          success:function(result){
//             $('div.checkB').html(result);
//          }
//       });
// 	   });
//    });
</script>
<style>
.boxTab li {
	float: left;
	display: inline;
	list-style: none;
	padding: 20px 20px;
	border: 1px solid;
}
</style>
</head>
<body>
	<h3>서류 제출 안내</h3>
	<span class="boxTab">
		<ul>
			<li><a class="on"
				href="/Coin/servicecenter/documents.do"> 입금
					사실 증명 <span>본인계좌</span>
			</a></li>
			<li><a class=""
				href="/Coin/servicecenter/payment_anotherAccount.do">
					입금 사실 증명 <span>타인계좌</span>
			</a></li>
			<li class="mid"><a class=""
				href="/Coin/servicecenter/initialize_account.do">출금계좌
					초기화</a></li>
			<li><a class=""
				href="/Coin/servicecenter/reset_phoneNumber.do"> 휴대전화 <br>번호
					초기화
			</a></li>
			<li class="mid"><a class=""
				href="/Coin/servicecenter/member_withdrawal.do">회원탈퇴</a></li>
			<li class="mid"><a class=""
				href="/Coin/servicecenter/identity_verification.do">본인인증</a></li>
		</ul></span>
	<div class="checkB">
		<h3>입금 사실 증명(본인 계좌)</h3>
		<p>입금 사실 증명(본인 계좌에서 입금)</p>
		<ul>
			<li><em class="black">본인명의 계좌에서 원화(KRW)를 입금하였으나 업비트 전용번호에
					입금 처리되지 않은 경우</em> , 아래 요청 방법대로 메일을 보내주세요.</li>
			<li>타인명의 계좌에서 입금했다면 <em class="blue">‘입금 사실 증명(타인 계좌)’</em> 을
				참고해주세요.
			</li>
		</ul>
		<p>입금 확인 요청 방법</p>
		<p class="nor">아래 양식에 따라 업비트 고객센터로 이메일을 보내주세요. (업비트에 인증한 이메일 주소와
			같은 이메일로 발송해 주셔야 합니다.)</p>
		<ul>
			<li><strong>이메일 보낼 주소</strong><a
				href="mailto:cs-teller@upbit.com">cs-teller@upbit.com</a></li>
			<li><strong>이메일 제목</strong><em>KRW 입금 확인 요청</em></li>
			<li><strong>이메일 본문 필수입력 항목</strong><em class="red">이름/휴대전화
					번호/업비트 닉네임</em></li>
			<li><strong>첨부파일</strong><span><em>(하단 안내 이미지 참고)</em><em>1.
						신분증 사진</em><em>2. 신분증을 들고 있는 본인 사진</em><em>3. 거래내역 사본</em></span></li>
		</ul>
		<span class="imgB"><img
			src="../servicecenter/servicecenter_Image/document_account_img.png"
			alt=""></span>
	</div>
</body>
</html>