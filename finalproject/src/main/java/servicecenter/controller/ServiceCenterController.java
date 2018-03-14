package servicecenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import servicecenter.bean.NoticeBoardDTO;
import servicecenter.bean.NoticeBoardPaging;
import servicecenter.dao.NoticeBoardDAO;


@Component
@RequestMapping("/servicecenter")
public class ServiceCenterController {//http://localhost:9090/Coin/servicecenter/noticeList.do
	@Autowired
	private NoticeBoardDAO boardDAO;
	@Autowired
	private NoticeBoardPaging boardPaging;
	
		
	@RequestMapping(value="noticeList.do", method=RequestMethod.GET)
	public String noticeList(@RequestParam(required=false) String pg, Model model) {
		if(pg==null) pg="1";
		
		//DB
		//1페이지당 5개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
				
		List<NoticeBoardDTO> list = boardDAO.getBoardList(startNum, endNum);
		
		//페이징 처리
		int totalA = boardDAO.getTotalA(); //총글수
		boardPaging.setCurrentPage(Integer.parseInt(pg));
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);//1페이지당 5개씩
		//boardPaging.setTotalA(totalA);
		boardPaging.makePagingHTML();
		
		//총글
		
		//응답
		model.addAttribute("pg", pg);
		model.addAttribute("list", list);
		model.addAttribute("boardPaging", boardPaging);
		model.addAttribute("display", "/servicecenter/notice/noticeList.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/notice_view.do", method=RequestMethod.GET)
	public String noticeView(@RequestParam int seq, @RequestParam int pg, Model model) {
		NoticeBoardDTO boardDTO = boardDAO.getBoardView(seq);
		boardDAO.updateHit(seq);
		model.addAttribute("pg",pg);
		model.addAttribute("boardDTO",boardDTO);
		model.addAttribute("display", "/servicecenter/notice/notice_view.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/guide1.do", method=RequestMethod.GET)
	public String guide1(Model model) {
		model.addAttribute("display", "/servicecenter/guide/guide1.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/guide2.do", method=RequestMethod.GET)
	public String guide2(Model model) {
		model.addAttribute("display", "/servicecenter/guide/guide2.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/policy.do", method=RequestMethod.GET)
	public String policy(Model model) {
		model.addAttribute("display", "/servicecenter/policy/policy.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/question.do", method=RequestMethod.GET)
	public String question(Model model) {
		model.addAttribute("display", "/servicecenter/question/question.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/documents.do", method=RequestMethod.GET)
	public String payment_myAccount(Model model) {//본인 계좌 입금 사실 증명
		model.addAttribute("display", "/servicecenter/documents/payment_myAccount.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/payment_anotherAccount.do", method=RequestMethod.GET)
	public String payment_anotherAccount(Model model) {//타인 계좌 입금 사실 증명
		model.addAttribute("display", "/servicecenter/documents/payment_anotherAccount.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/initialize_account.do", method=RequestMethod.GET)
	public String initialize_account(Model model) {//출금계정 초기화
		model.addAttribute("display", "/servicecenter/documents/initialize_account.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/reset_phoneNumber.do", method=RequestMethod.GET)
	public String reset_phoneNumber(Model model) {//폰번호 초기화
		model.addAttribute("display", "/servicecenter/documents/reset_phoneNumber.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/member_withdrawal.do", method=RequestMethod.GET)
	public String member_withdrawal(Model model) {//회원 탈퇴 안내
		model.addAttribute("display", "/servicecenter/documents/member_withdrawal.jsp");
		return "/servicecenter/index";
	}
	@RequestMapping(value="/identity_verification.do", method=RequestMethod.GET)
	public String identity_verification(Model model) {//본인 인증 안내
		model.addAttribute("display", "/servicecenter/documents/identity_verification.jsp");
		return "/servicecenter/index";
	}
}
