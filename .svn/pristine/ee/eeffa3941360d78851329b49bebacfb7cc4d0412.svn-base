package com.team.app.cs.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.dao.CS_FilesDAO;
import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.cs.board.vo.CS_FilesVO;

public class CS_EditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\cs_upload";
		int fileSize = 5 * 1024 * 1024;
		MultipartRequest multi = null;
		CS_FilesDAO f_dao = new CS_FilesDAO();
		CS_BoardDAO cs_dao = new CS_BoardDAO();
		CS_BoardVO cs_vo = new CS_BoardVO();
		ActionForward forward = new ActionForward();
		try {
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			int cs_board_no = Integer.parseInt(multi.getParameter("cs_board_no"));
			//업로드 폴더의 파일 삭제
			for(CS_FilesVO file : f_dao.getFiles(cs_board_no)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getCs_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.delete(cs_board_no);
			f_dao.insertFile(multi, cs_board_no);
			
			//게시글 정보 수정
			cs_vo.setCs_board_no(cs_board_no);
			cs_vo.setCs_board_select(multi.getParameter("cs_board_select"));
			cs_vo.setCs_board_title(multi.getParameter("cs_board_title"));
			cs_vo.setCs_board_content(multi.getParameter("cs_board_content"));
			cs_dao.update(cs_vo);
			
			forward.setRedirect(false);
			forward.setPath("/customerService/CS_BoardViewOk.bo?cs_board_no="+cs_board_no);
			/*forward.setPath("/customerService/CS_BoardViewOk.bo");*/
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}