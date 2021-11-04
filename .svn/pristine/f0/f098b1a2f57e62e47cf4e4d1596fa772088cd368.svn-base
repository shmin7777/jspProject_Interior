package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.dao.Brag_FilesDAO;
import com.team.app.brag.board.vo.Brag_BoardVO;

public class Brag_BoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		// 리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		// req.getServletContext().getRealPath("/") + "\\upload"
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\bragUpload";
		int fileSize = 5 * 1024 * 1024; // 5M

		ActionForward forward = new ActionForward();
		Brag_BoardDAO b_dao = new Brag_BoardDAO();
		Brag_FilesDAO f_dao = new Brag_FilesDAO();
		Brag_BoardVO b_vo = new Brag_BoardVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		int userNo = b_dao.get_user_no(multi.getParameter("user_id"));
		System.out.println("userNo="+userNo);
		b_vo.setUser_no(userNo);
		/*System.out.println(userNo);
		System.out.println("여기까지2");*/
		b_vo.setBrag_board_title(multi.getParameter("board_title"));
		/*System.out.println(cs_vo.getCs_board_title());
		System.out.println("여기까지3");*/
		b_vo.setBrag_board_content(multi.getParameter("content"));
		/*System.out.println(cs_vo.getCs_board_content());
		System.out.println("여기까지4");*/
		
		
		b_dao.insertBoard(b_vo);
		
		f_dao.insertFile(multi, b_dao.getSeq());
		
		
		forward.setRedirect(false);
		forward.setPath("/Brag/Brag_BoardList.br");
		return forward;
	}

}
