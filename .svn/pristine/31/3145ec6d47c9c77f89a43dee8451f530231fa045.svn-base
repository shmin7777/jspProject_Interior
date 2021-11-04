package com.team.app.brag.board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.oreilly.servlet.MultipartRequest;
import com.team.app.brag.board.vo.Brag_FilesVO;
import com.team.mybatis.config.SqlMapConfig;

public class Brag_FilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public Brag_FilesDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//게시글에 있는 첨부파일 모두 삭제
	public void delete(int brag_board_no) {
		sql_session.delete("Brag_Files.delete", brag_board_no);
	}
	
	//특정 게시글의 첨부파일 목록
	public List<Brag_FilesVO> getFiles(int brag_board_no) {
		return sql_session.selectList("Brag_Files.getFiles", brag_board_no);
	}
	
	public void insertFile(MultipartRequest multi, int brag_board_no) {
		Enumeration<String> brag_files = multi.getFileNames();
		Brag_FilesVO vo = new Brag_FilesVO();
		while(brag_files.hasMoreElements()) {
			//사용자가 업로드한 파일태그의 name
			String name = brag_files.nextElement();
			//사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			//중복 시 변경된 이름
			String systemName = multi.getFilesystemName(name);
			if(systemName == null) {continue;}
			
			vo.setBrag_file_name(systemName);
			vo.setBrag_board_no(brag_board_no);
			vo.setBrag_original_file_name(original);
			
			sql_session.insert("Brag_Files.insertFile", vo);
		}
	}
}
