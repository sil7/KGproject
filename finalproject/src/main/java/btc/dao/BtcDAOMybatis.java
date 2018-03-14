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
		sqlSession.insert("btcSQL.insertSell",coinDTO);
	}

	@Override
	public List<BtcDTO> getBuy() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("btcSQL.getBuy");
	}

	@Override
	public List<BtcDTO> getSell() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("btcSQL.getSell");
	}

	@Override
	public BtcDTO buyProcess(BtcDTO btcDTO) {
		while(true) {
			sqlSession.update("btcSQL.buyProcess1",btcDTO);
			BtcDTO pDTO = sqlSession.selectOne("btcSQL.buyProcess2",btcDTO);
			if(pDTO!=null) {
				if(pDTO.getAmount()<0) {
					btcDTO.setAmount(Math.abs(pDTO.getAmount()));
					sqlSession.delete("btcSQL.buyProcess3",pDTO);
				}else if(pDTO.getAmount()==0) {
					sqlSession.delete("btcSQL.buyProcess3",pDTO);
					break;
				}else {
					return null;
				}
			}else if(pDTO==null) {
				return btcDTO;
			}
		}
		return null;

	}

}
