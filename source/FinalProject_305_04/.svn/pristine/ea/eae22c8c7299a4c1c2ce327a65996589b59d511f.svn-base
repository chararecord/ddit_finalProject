package kr.or.ddit.prof.consult.service;

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
	public List<ConsultVO> retreiveConsultList(PagingVO<ConsultVO> pagingVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PagingVO<UsrVO> retreiveStdList(String profId) {
		
		int totalStd = consultDAO.selectTotalStd(profId);
		List<UsrVO> stdList = consultDAO.selectStdList(profId);
		
		PagingVO<UsrVO> pagingVO = new PagingVO<>();
		pagingVO.setTotalRecord(totalStd);
		pagingVO.setDataList(stdList);;
		return pagingVO;
		
	}
}
