package kr.or.ddit.commons.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.FileDAO;

@Service
public class FileServiceImpl implements FileService {
	
	@Resource(name="fileDAO")
	private FileDAO fileDAO;
	
	@Override
	public Map<String, Object> selectFile(Map<String, Object> map) {
		return fileDAO.selectFileInfo(map);
	}
}
