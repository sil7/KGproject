<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script>
                <script type="text/javascript">
                
                $(function() {
                    $('ul.qaB>span.answer').hide();
                    $('ul.qaB>li.on').nextUntil('ul.qaB>li.off').show('slow');
                    $('ul.qaB>li.off').click(function(e) {
                        $('ul.qaB>li.off').not(this).removeClass('opened');
                        $(this).toggleClass('opened');
                        $('ul.qaB>li.off').not(this).nextUntil('ul.qaB>li.off').hide('slow');
                        $(this).nextUntil('ul.qaB>li.off').toggle('slow');
                    });
                });
                
                </script>
</head>
<body>
	<div>
		<h3>가입 및 탈퇴</h3>
		<ul class="qaB">
			<li class="on"><a href="#"><strong>미성년자도 가입 및 거래가
						가능한가요?</strong></a><span class="answer"><p>
							미성년자, 만 19세 미만의 회원님들은 거래가 불가능합니다. <br>(2017년 기준, 태어난 해가
							1998년 이하부터 거래가 가능합니다.)
						</p></span></li>
			<li class="off"><a href="#"><strong>카카오톡 계정 &gt;
						업비트 연결끊기를 하면 어떻게 되나요?</strong><span class="answer"><p>
							카카오톡 계정 &gt; 업비트 연결끊기를 하셔도 회원님의 자산은 없어지지 않습니다.<br> <br>그러나
							연결끊기를 하시는 경우, 업비트에서는 연결이 끊어진 회원님을 구분할 수 없게 됩니다.<br>연결이 끊어진
							계좌의 자산을 다시 되찾으시려면, 본인 확인 과정이 필요하며 이 과정은 서류 제출 및 복잡한 단계를 거치셔야 합니다.<br>
							<br>위와 같은 이유로 업비트에서는 가급적 카카오톡 계정&gt; 연결끊기를 하지 않으시길 당부 드립니다.
						</p></span></a></li>
			<li class="off"><a href="#"><strong>외국인도 가입 및 거래가
						가능한가요?</strong><span class="answer"><p>
							불가능합니다. 다만, 내국인과 동일한 인증 즉 - <br>정상적인 카카카오톡 사용, 카카오톡 계정을 통한
							로그인, 카카오페이 인증서, 국내 통신사를 통한 실명인증 - <br>이 4개를 충족한다면 가입 및 거래가
							가능합니다.
						</p></span></a></li>
			<li class="off"><a href="#"><strong>본인 명의 휴대전화, 계좌가
						없어도 되나요?</strong><span class="answer"><p>
							카카오계정으로 회원가입이 가능하며, 시세 등의 확인이 가능합니다. <br>그러나, 보안등급에 따라 입출금 및
							거래는 제한될 수 있습니다.
						</p></span></a></li>
			<li class="off"><a href="#"><strong>휴대전화에 카카오톡이
						설치되어 있지않아요.</strong><span class="answer"><p>
							카카오톡이 설치되어있지 않아도 카카오 계정이 있는 경우, 회원 가입 및 모든 화폐의 입금, 거래, 출금은 가능합니다.
							<br>그러나 보안등급 레벨4 상향에 필요한 '카카오페이 인증서' 사용이 불가능하여 보안에 취약할 수
							있으며, 출금한도가 제한됩니다. <br>피싱 등 금융사고를 예방하기 위해 카카오톡을 설치한 이후 최종
							보안등급 레벨4까지 진행을 권장합니다.
						</p></span></a></li>
			<li class="off"><a href="#"><strong>카카오계정이 없으면 가입을
						못하나요? </strong><span class="answer"><p>
							업비트는 카카오계정을 통한 로그인만 지원하고 있습니다. <br>카카오계정이 없으신 경우에는, 카카오계정을
							만드신 이후 간편하게 업비트 회원가입을 할 수 있습니다. <br> <br>■ 카카오계정 만드는 방법<br>1.
							PC에서 회원가입<br>우측상단 로그인 버튼 클릭 &gt; '카카오계정으로 로그인' 클릭 &gt; 로그인
							팝업에서 '회원가입' 클릭<br>2. 앱에서 회원가입<br>'카카오계정으로 시작' 클릭 &gt;
							'다른 카카오계정으로 로그인' 클릭 &gt; '새로운 카카오계정 만들기' 클릭
						</p></span></a></li>
			<li class="off"><a href="#"><strong>기업회원으로 가입하고
						싶어요.</strong><span class="answer"><p>기업회원 가입은 추후 지원할 예정입니다.</p></span></a></li>
			<li class="off"><a href="#"><strong>법인폰으로 이용 가능한가요?</strong><span
					class="answer"><p>
							법인명의 휴대폰의 경우 가입된 이동통신사를 통해 법인명의 본인인증을 등록하신 후 이용 가능합니다. <br>등록
							방법은 가입하신 이동통신사를 통해 확인해 주세요.
						</p></span></a></li>
			<li class="off"><a href="#"><strong>회원 탈퇴를 하고 싶어요.</strong><span
					class="answer"><p>
							보안레벨1 인증에 이용한 이메일로 회원탈퇴 의사를 보내주시면 회원탈퇴가 진행되어지고<br>해당 결과를
							이메일로 받으실 수 있습니다. <br> <br>1. 거래가 없을 시 이메일 양식<br>아래
							양식으로 이메일(cs-account@upbit.com) 접수를 해주세요.<br>(1) 이메일 제목 :
							회원탈퇴 요청<br>(2) 이메일 본문 <br> - 실명<br> - 휴대전화 번호<br>
							- 업비트 닉네임<br> <br>2. 거래가 있을 시 이메일 양식<br>아래 양식으로
							이메일(cs-account@upbit.com) 접수를 해주세요.<br>(1) 이메일 제목 : 회원탈퇴 요청<br>(2)
							이메일 본문 <br> - 실명<br> - 휴대전화 번호<br> - 업비트 닉네임<br>(3)
							첨부파일 (홈페이지 – 고객센터 – 서류제출안내 – 회원탈퇴 참고)<br> - “신분증 + 메모” 사진<br>
							- “신분증 + 메모”를 들고 있는 본인 사진<br> <br>★ 신분증은 반드시 주민번호 뒷자리는
							가려주세요. ★<br>★ 메모 입력 사항 : 회원탈퇴 요청, 업비트인증 이메일, 요청날짜 ★<br>★
							위 조치는 피싱 등 금융사고 예방을 위한 것으로 조금 불편하시더라도 많은 양해 부탁드립니다. ★<br> <br>안내드린
							서류들을 빠짐없이 보내주신 날짜를 기준으로 처리까지 최대 5일(영업일 기준)이 소요됩니다.<br> <br>[서류
							제출 안내 - 회원탈퇴] <br> <a
								href="https://upbit.com/service_center/documents/member_withdrawal">-
								PC 바로가기</a><br>
						</p></span></a></li>
			<li class="off"><a href="#"><strong>외국인 계좌가 등록이
						안되요.</strong><span class="answer"><p>
							외국인 계좌는 등록이 되지 않습니다.<br> <br>[외국인 계좌인증 절차]에 대해
							안내해드리겠습니다. <br>계정 관련 서류는 cs-account@upbit.com로만 접수를 받으며, 반드시
							보안레벨1에서 인증한 이메일로 보내주셔야 합니다.<br> <br>1. 이메일 제목 : 외국인 계좌
							등록 요청<br> <br>2. 이메일 본문 <br> - 실명 : <br> -
							휴대전화 번호 : <br> - 업비트 닉네임 : <br> <br>3. 첨부파일<br>
							- 신분증 사진 (여권, 외국인등록증만 인정)<br> - 신분증을 들고 있는 본인 사진<br> -
							통장 사진(통장 표지)<br> <br>★ 외국인 계좌 인증 처리 후 본인이 직접 등록을 하셔야
							합니다. ★<br> <br>안내드린 서류들을 빠짐없이 보내주신 날짜를 기준으로 처리까지 최대
							5일(영업일 기준)이 소요됩니다.<br>
						</p></span></a></li>
		</ul>
		<div>
			<h3>정보변경</h3>
			<ul class="qaB">
				<li class="off"><a href="#"><strong>휴대전화 번호를 변경하고
							싶어요.</strong><span class="answer"><p>
								[휴대전화 번호 초기화 절차]에 대해 안내해드리겠습니다. <br>계정 관련 서류는
								cs-account@upbit.com로만 접수를 받으며, 반드시 보안레벨1에서 인증한 이메일로 보내주셔야 합니다.<br>
								<br>1. 이메일 제목 : 휴대전화 번호 초기화 요청<br>
								<br>2. 이메일 본문 <br> - 실명 : <br> - 휴대전화 번호 : <br>
								- 업비트 닉네임 : <br>
								<br>3. 첨부파일 (홈페이지 – 고객센터 – 서류제출안내 – 휴대전화 초기화 참고)<br> -
								“신분증 + 메모” 사진<br> - “신분증 + 메모”를 들고 있는 본인 사진<br> - 통신사
								이용계약서<br>
								<br>★ 신분증은 반드시 주민번호 뒷자리는 가려주세요. ★<br>★ 메모 입력 사항 : 휴대전화
								번호 초기화요청, 업비트인증 이메일, 요청날짜 ★<br>★ 위 조치는 휴대폰 도난, 피싱 등 금융사고
								예방을 위한 것으로 조금 불편하시더라도 많은 양해 부탁드립니다. ★<br>
								<br>
								<br>[서류 제출 안내 - 휴대전화 번호 초기화]<br>
								<a
									href="https://upbit.com/service_center/documents/reset_phone_number">-
									PC 바로가기</a><br>
							</p></span></a></li>
				<li class="off"><a href="#"><strong>출금계좌를 변경하고
							싶어요.</strong><span class="answer"><p>
								[출금계좌 초기화 절차]에 대해 안내해드리겠습니다. <br>계정 관련 서류는
								cs-account@upbit.com로만 접수를 받으며, 반드시 보안레벨1에서 인증한 이메일로 보내주셔야 합니다.<br>
								<br>1. 이메일 제목 : 출금계좌 초기화 요청<br>
								<br>2. 이메일 본문 <br> - 실명 : <br> - 휴대전화 번호 : <br>
								- 업비트 닉네임 : <br>
								<br>3.. 첨부파일 (홈페이지 – 고객센터 – 서류제출안내 – 출금계좌 초기화 참고)<br>
								- “신분증 + 메모” 사진<br> - “신분증 + 메모”를 들고 있는 본인 사진<br> - 기존
								등록한 통장사본(통장표지)<br>
								<br>★ 신분증은 반드시 주민번호 뒷자리는 가려주세요. ★<br>★ 메모 입력 사항 : 출금계좌
								초기화요청, 업비트인증 이메일, 요청날짜 ★<br>★ 위 조치는 피싱 등 금융사고 예방을 위한 것으로 조금
								불편하시더라도 많은 양해 부탁드립니다. <br>안내드린 서류들을 빠짐없이 보내주신 날짜를 기준으로 초기화
								처리까지 최대 5일(영업일 기준)이 소요됩니다.<br>
								<br>
								<br>[서류 제출 안내 - 출금계좌 초기화]<br>
								<a
									href="https://upbit.com/service_center/documents/initialize_withdrawal_account">-
									PC 바로가기</a><br>
							</p></span></a></li>
				<li class="off"><a href="#"><strong>업비트 계정을 복구하고
							싶어요.</strong><span class="answer"><p>
								[업비트 계정 복구 절차]에 대해 안내해드리겠습니다. <br>계정 관련 서류는
								cs-account@upbit.com로만 접수를 받으며, 반드시 보안레벨1에서 인증한 이메일로 보내주셔야 합니다.<br>
								<br>1. 이메일 제목 : 업비트 계정 복구 요청<br>
								<br>2. 이메일 본문 <br> - 실명<br> - 휴대전화 번호<br> -
								기존 업비트 닉네임(복구할 닉네임)<br> - 신규 업비트 닉네임<br>
								<br>3. 첨부파일<br> - “신분증 + 메모” 사진<br> - “신분증 + 메모”를
								들고 있는 본인 사진<br> - 복구할 계정의 최근 입금한 내역 증거자료 (최근 1건만)<br>
								(KRW 입금인 경우 : 통장내역 사본, 암호화폐 입금인 경우 : 출금거래소에서 거래내역 화면)<br>
								<br>★ 신분증은 반드시 주민번호 뒷자리는 가려주세요. ★<br>★ 메모 입력 사항 : 업비트
								계정 복구 요청, 업비트인증 이메일, 요청날짜 ★<br>★ 위 조치는 피싱 등 금융사고 예방을 위한 것으로
								조금 불편하시더라도 많은 양해 부탁드립니다. ★<br>
								<br>안내드린 서류들을 빠짐없이 보내주신 날짜를 기준으로 처리까지 최대 5일(영업일 기준)이 소요됩니다.<br>
							</p></span></a></li>
				<li class="off"><a href="#"><strong>카카오페이 인증을 사용하고
							싶어요.</strong><span class="answer"><p>
								아래 경로에서 '카카오페이 인증 활성화' 버튼을 클릭하면 카카오톡 메시지가 전송됩니다. 해당 메시지 안내에 따라
								카카오페이 인증을 활성화할 수 있습니다. (카카오페이 인증은 보안등급 레벨 3 이상 회원만 사용할 수 있습니다.)
								<br>
								<br>PC 경로: 마이페이지 &gt; 보안등급 &gt; 레벨4 카카오페이 간편인증 활성화 <br>앱
								경로: 내정보 &gt; 보안등급 &gt; 레벨4 카카오페이 간편인증 활성화
							</p></span></a></li>
			</ul>
		</div>
	</div>
</body>
</html>