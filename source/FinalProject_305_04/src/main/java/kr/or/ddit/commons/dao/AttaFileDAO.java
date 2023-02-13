package kr.or.ddit.commons.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.AttaFileVO;
import kr.or.ddit.vo.CommonAttaFileVO;

@Mapper
public interface AttaFileDAO {
	
	public <T extends CommonAttaFileVO> int insertCommonAttaFiles(T vo);
	public <T> int insertAttaFiles(T vo);
	public Map<String, Object> selectAttaFile(Map<String, Object> map);
	public int deleteAttaFileList(AttaFileVO attaFileVO);
}
