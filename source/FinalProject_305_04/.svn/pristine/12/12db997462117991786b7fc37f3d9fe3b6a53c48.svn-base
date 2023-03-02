package kr.or.ddit.student.priorSugang.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.or.ddit.student.priorSugang.dao.SearchListDAO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.MajorVO;

@ControllerAdvice("kr.or.ddit.student.priorSugang.controller")
public class PriorSugangControllerAdvice {

	@Inject
	private SearchListDAO searchListDAO;
	
	@ModelAttribute("collList")
	public List<Map<String, Object>> collList(){
		return searchListDAO.selectCollList();
	}
	
	@ModelAttribute("majorList")
	public List<MajorVO> majorList(){
		return searchListDAO.selectMajorList(null);
	}
	
	@ModelAttribute("subjectList")
	public List<CommVO> subjectList(){
		return searchListDAO.selectSubjectList();
	}
}
