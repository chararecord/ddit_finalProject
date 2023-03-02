package kr.or.ddit.prof.consult.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.prof.consult.dao.ProfessorConsultDAO;
import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.UsrVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProfessorConsultServiceImpl implements ProfessorConsultService {

	@Inject
	private ProfessorConsultDAO consultDAO;

	@Override
	public PagingVO<UsrVO> retrieveStdList(String profId) {
		
		int totalStd = consultDAO.selectTotalStd(profId);
		List<UsrVO> stdList = consultDAO.selectStdList(profId);
		
		PagingVO<UsrVO> pagingVO = new PagingVO<>();
		pagingVO.setTotalRecord(totalStd);
		pagingVO.setDataList(stdList);
		return pagingVO;
	}

	@Override
	public void retrieveConsultList(PagingVO<ConsultVO> pagingVO, String stdId, String profId) {
		Map<String, Object> map = new HashMap<String, Object>();
		ConsultVO consultVO = new ConsultVO();
		
		map.put("paging", pagingVO);
		map.put("consult", consultVO);
		consultVO.setStdId(stdId);
		consultVO.setProfId(profId);
		
		int totalRecord = consultDAO.selectTotalRecord(consultVO);
		log.info("totalRecord >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> {}" , totalRecord);
		pagingVO.setTotalRecord(totalRecord);
		List<ConsultVO> consultList = consultDAO.selectConsultList(map);
		pagingVO.setDataList(consultList);
	}

	@Override
	public int modifyConsultStatus(ConsultVO consultVO) {
		int rowcnt = consultDAO.updateConsultStatus(consultVO);
		return rowcnt;
	}
}
