package kr.or.ddit.prof.lectBoard.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.AttaFileDAO;
import kr.or.ddit.prof.lectBoard.dao.LectureBoardDAO;
import kr.or.ddit.vo.AttaFileVO;
import kr.or.ddit.vo.LectNotiVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.NoticeVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LectureBoardServiceImpl implements LectureBoardService {

	@Inject
	private LectureBoardDAO lbDAO;
	@Inject
	private AttaFileDAO attaFileDAO;
	
	@Value("#{appInfo.imageFolder}")
	private File imageFolder;
	
	@Value("#{appInfo.imageFolder}")
	private String imageFolderURL;
	
	@PostConstruct
	public void init() throws IOException {
		log.info("첨부파일 저장 경로 : {}", imageFolder.getCanonicalPath());
	}
	
	@Override
	public LectureVO retrieveLectInfo(String lectId) {
		LectureVO lectInfo = lbDAO.selectLectInfo(lectId);
		if(lectInfo == null) {
			throw new RuntimeException();
		}
		return lectInfo;
	}

	@Override
	public void retrieveLectNoticeList(PagingVO<LectNotiVO> pagingVO) {
		pagingVO.setTotalRecord(lbDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(lbDAO.selectLectNoticeList(pagingVO));
		
	}

	@Override
	public LectNotiVO retreiveLectNotice(String lectNotiId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int createLectNotice(LectNotiVO lectNotice) {
		int rowcnt = lbDAO.insertLectNotice(lectNotice);
		rowcnt += processAttaFilelist(lectNotice);
		return rowcnt;
	}
	
	private int processAttaFilelist(LectNotiVO lectNotice) {
		List<AttaFileVO> attaFileList = lectNotice.getAttaFileList();
		if(attaFileList==null || attaFileList.isEmpty()) {return 0;}
		attaFileList.stream().forEach(attaFile -> {
			attaFile.setImageFolder(imageFolderURL);
		});
		int rowcnt = attaFileDAO.insertAttaFiles(lectNotice);
		try {
			for(AttaFileVO attaFile : attaFileList) {
				attaFile.saveTo(imageFolder);
			}
			return rowcnt;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public int modifyLectNotice(LectNotiVO lectNotice) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeLectNotice(String lectNotiId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
