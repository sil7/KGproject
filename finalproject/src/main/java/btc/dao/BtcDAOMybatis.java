package btc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import btc.bean.BtcDTO;

@Transactional
@Component
public class BtcDAOMybatis implements BtcDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertBuy(BtcDTO coinDTO) {
		sqlSession.insert("btcSQL.insertBuy",coinDTO);
		
	}

	@Override
	public void insertSell(BtcDTO coinDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BtcDTO> getBuy() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("btcSQL.getBuy");
	}

	@Override
	public List<BtcDTO> getSell() {
		// TODO Auto-generated method stub
		return null;
	}

}
