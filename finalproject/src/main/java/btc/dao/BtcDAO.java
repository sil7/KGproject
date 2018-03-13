package btc.dao;

import java.util.List;

import btc.bean.BtcDTO;

public interface BtcDAO {
	public void insertBuy(BtcDTO coinDTO);
	public void insertSell(BtcDTO coinDTO);
	public List<BtcDTO> getBuy();
	public List<BtcDTO> getSell();
}
