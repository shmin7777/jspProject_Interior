package com.team.app.cs.board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.cs.board.vo.CS_FilesVO;
import com.team.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class CS_FilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public CS_FilesDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//게시글에 있는 첨부파일 모두 삭제
	public void delete(int cs_board_no) {
		sql_session.delete("CS_Files.delete", cs_board_no);
	}
	
	//특정 게시글의 첨부파일 목록
	public List<CS_FilesVO> getFiles(int cs_board_no) {
		return sql_session.selectList("CS_Files.getFiles", cs_board_no);
	}
	
	public void insertFile(MultipartRequest multi, int cs_board_no) {
		Enumeration<String> cs_files = multi.getFileNames();
		CS_FilesVO vo = new CS_FilesVO();
		while(cs_files.hasMoreElements()) {
			//사용자가 업로드한 파일태그의 name
			String name = cs_files.nextElement();
			//사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			//중복 시 변경된 이름
			String systemName = multi.getFilesystemName(name);
			if(systemName == null) {continue;}
			
			vo.setCs_file_name(systemName);
			vo.setCs_board_no(cs_board_no);
			vo.setCs_original_file_name(original);
			
			sql_session.insert("CS_Files.insertFile", vo);
		}
	}
}
