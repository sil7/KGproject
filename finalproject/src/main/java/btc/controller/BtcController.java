package btc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import btc.bean.BtcDTO;
import btc.dao.BtcDAO;
@RequestMapping("/btc")
@Component
public class BtcController {
	@Autowired
	private BtcDAO btcDAO;
	
	@RequestMapping("/buyBTC.do")
	public void insertBuy(@ModelAttribute BtcDTO btcDTO) {
		System.out.println(1);
		btcDAO.insertBuy(btcDTO);
	}
}
