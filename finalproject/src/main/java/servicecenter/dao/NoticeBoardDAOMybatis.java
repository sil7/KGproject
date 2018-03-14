package servicecenter.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import servicecenter.bean.NoticeBoardDTO;

@Transactional
@Component
public class NoticeBoardDAOMybatis implements NoticeBoardDAO {
	@Autowired
	private SqlSession sqlSession;

	public void boardWrite(Map<String, String> map) {
		sqlSession.insert("boardSQL.boardWrite", map);
	}

	public List<NoticeBoardDTO> getBoardList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("boardSQL.getBoardList", map);
	}

	public int getTotalA() {
		return sqlSession.selectOne("boardSQL.getTotalA");
	}

	public NoticeBoardDTO getBoardView(int seq) {
		return sqlSession.selectOne("boardSQL.getBoardView", seq);
	}

	public void updateHit(int seq) {
		sqlSession.update("boardSQL.updateHit", seq);
	}

	

	public void boardUpdate(Map<String, String> map) {
		sqlSession.update("boardSQL.boardUpdate", map);

	}

	public void boardDelete(int seq) {
		sqlSession.delete("boardSQL.boardDelete", seq);
	}

}
