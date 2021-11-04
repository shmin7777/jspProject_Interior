package com.team.app.brag.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.dao.Brag_FilesDAO;
import com.team.app.brag.board.vo.Brag_FilesVO;

public class Brag_BoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\bragUpload";
		Brag_FilesDAO f_dao = new Brag_FilesDAO();
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		ActionForward forward = new ActionForward();
		
		try {
			int brag_board_no = Integer.parseInt(req.getParameter("brag_board_no"));
			System.out.println(brag_board_no);
			//업로드 폴더의 파일 삭제
			for(Brag_FilesVO file : f_dao.getFiles(brag_board_no)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getBrag_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
		
			//DB에서 삭제
			f_dao.delete(brag_board_no);
			
			//게시글 정보 삭제
			/*b_dao.deleteReplyByBragBoardNo(brag_board_no);*/
			b_dao.delete(brag_board_no);
			
			forward.setRedirect(false);
			forward.setPath("/Brag/Brag_BoardList.br");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}
