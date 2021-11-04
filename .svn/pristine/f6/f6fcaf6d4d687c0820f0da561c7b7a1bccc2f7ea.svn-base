package com.team.app.brag.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.dao.Brag_FilesDAO;
import com.team.app.brag.board.vo.Brag_BoardVO;
import com.team.app.brag.board.vo.Brag_FilesVO;

public class Brag_EditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\bragUpload";
		int fileSize = 5 * 1024 * 1024;
		MultipartRequest multi = null;
		Brag_FilesDAO f_dao = new Brag_FilesDAO();
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		Brag_BoardVO b_vo = new Brag_BoardVO();
		ActionForward forward = new ActionForward();
		try {
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			int brag_board_no = Integer.parseInt(multi.getParameter("brag_board_no"));
			//업로드 폴더의 파일 삭제
			for(Brag_FilesVO file : f_dao.getFiles(brag_board_no)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getBrag_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.delete(brag_board_no);
			f_dao.insertFile(multi, brag_board_no);
			
			//게시글 정보 수정
			b_vo.setBrag_board_no(brag_board_no);
			b_vo.setBrag_board_title(multi.getParameter("brag_board_title"));
			b_vo.setBrag_board_content(multi.getParameter("brag_board_content"));
			b_dao.update(b_vo);
			
			forward.setRedirect(false);
			forward.setPath("/Brag/Brag_BoardViewOk.br?brag_board_no="+brag_board_no);
			/*forward.setPath("/customerService/CS_BoardViewOk.bo");*/
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}