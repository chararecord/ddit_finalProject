package kr.or.ddit.prof.scoreProc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.prof.scoreProc.dao.ScoreProcessDAO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ScoreProcessServiceImpl implements ScoreProcessService {
	
	@Inject
	ScoreProcessDAO dao;
	
	String profId = "";
	
	
	@Override
	public void setProfId(String profId) {
		this.profId = profId;
	}
	
	
	@Override
	public void retrieveLectList(PagingVO<LectureVO> pagingVO) {
		
		log.info("retrieveLectList 진입");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("profId", profId);
		
		int totalRecord = dao.selectTotalRecord((HashMap<String, Object>) resultMap);
		pagingVO.setTotalRecord(totalRecord);
		
		resultMap.put("startRow", pagingVO.getStartRow());
		resultMap.put("endRow", pagingVO.getEndRow());
		
		List<LectureVO> lectList = dao.selectLectList((HashMap<String, Object>) resultMap);
		pagingVO.setDataList(lectList);
	}






	

}
