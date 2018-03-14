package btc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import btc.bean.BtcDTO;
import btc.dao.BtcDAO;
@RequestMapping("/btc")
@Component
public class BtcController {
	@Autowired
	private BtcDAO btcDAO;

	@RequestMapping(value="/buyBTC.do")
	public void insertBuy(@ModelAttribute BtcDTO btcDTO) {
	
		btcDAO.insertBuy(btcDTO);
	}
	@RequestMapping(value="/buyList.do",method=RequestMethod.POST)
	public ModelAndView buyList() {

		ModelAndView mav = new ModelAndView();
		List<BtcDTO> list = btcDAO.getBuy();
		mav.addObject("list",list);
		mav.setViewName("jsonView");

		return mav;
	}
}
