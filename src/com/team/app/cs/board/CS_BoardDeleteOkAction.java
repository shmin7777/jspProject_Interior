package com.team.app.cs.board;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.dao.CS_FilesDAO;
import com.team.app.cs.board.vo.CS_FilesVO;

public class CS_BoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\cs_upload";
		CS_FilesDAO f_dao = new CS_FilesDAO();
		CS_BoardDAO b_dao = new CS_BoardDAO();
		ActionForward forward = new ActionForward();
		
		try {
			int cs_board_no = Integer.parseInt(req.getParameter("cs_board_no"));
			System.out.println(cs_board_no);
			//업로드 폴더의 파일 삭제
			for(CS_FilesVO file : f_dao.getFiles(cs_board_no)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getCs_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
		
			//DB에서 삭제
			f_dao.delete(cs_board_no);
			
			//게시글 정보 삭제
			b_dao.deleteReplyByCSBoardNo(cs_board_no);
			b_dao.delete(cs_board_no);
			
			forward.setRedirect(false);
			forward.setPath("/customerService/CS_BoardList.bo");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}
