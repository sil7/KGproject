package btc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import btc.bean.BtcDTO;
import btc.dao.BtcDAO;
@RequestMapping("/btc")
@Component
public class BtcController {
	@Autowired
	private BtcDAO btcDAO;

	@RequestMapping(value="/buyBTC.do")
	public @ResponseBody synchronized String insertBuy(@ModelAttribute BtcDTO btcDTO) {
		String id = "bkm412"; // btcDTO.getId();
	
		while(true) {
			List<BtcDTO> list = btcDAO.getSell();
			if(list==null) {
				break;
			}
			if(btcDTO.getPrice()>=list.get(0).getPrice()) {
				
				btcDTO = btcDAO.buyProcess(btcDTO);
				if(btcDTO==null) {
					return "none";
				}
			}else {
				break;
			}
		}
		btcDTO.setId(id);
		btcDAO.insertBuy(btcDTO);
		return "exist";
	}
	@RequestMapping(value="/sellBTC.do")
	public void insertSell(@ModelAttribute BtcDTO btcDTO) {

		btcDAO.insertSell(btcDTO);

	}
	@RequestMapping(value="/buyList.do",method=RequestMethod.POST)
	public ModelAndView buyList() {

		ModelAndView mav = new ModelAndView();
		List<BtcDTO> list = btcDAO.getBuy();
		mav.addObject("list",list);
		mav.setViewName("jsonView");

		return mav;
	}
	@RequestMapping(value="/sellList.do",method=RequestMethod.POST)
	public ModelAndView sellList() {

		ModelAndView mav = new ModelAndView();
		List<BtcDTO> list = btcDAO.getSell();
		mav.addObject("list",list);
		mav.setViewName("jsonView");

		return mav;
	}
}
