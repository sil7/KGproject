package servicecenter.dao;

import java.util.List;
import java.util.Map;

import servicecenter.bean.NoticeBoardDTO;


public interface NoticeBoardDAO {

	public void boardWrite(Map<String,String> map);
	public List<NoticeBoardDTO> getBoardList(int startNum, int endNum);
	public int getTotalA();
	public NoticeBoardDTO getBoardView(int seq);
	public void updateHit(int seq);
	public void boardUpdate(Map<String,String> map);
	public void boardDelete(int seq);
	
}
