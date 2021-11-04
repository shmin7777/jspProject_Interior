package com.team.app.cs.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.dao.CS_FilesDAO;
import com.team.app.cs.board.vo.CS_BoardVO;

public class CS_BoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		// 리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		// req.getServletContext().getRealPath("/") + "\\upload"
		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\app\\cs_upload";
		int fileSize = 5 * 1024 * 1024; // 5M

		ActionForward forward = new ActionForward();
		CS_BoardDAO cs_dao = new CS_BoardDAO();
		CS_FilesDAO f_dao = new CS_FilesDAO();
		CS_BoardVO cs_vo = new CS_BoardVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		int userNo = cs_dao.get_user_no(multi.getParameter("user_id"));
		System.out.println("userNo="+userNo);
		cs_vo.setUser_no(userNo);
		/*System.out.println(userNo);
		System.out.println("여기까지2");*/
		cs_vo.setCs_board_title(multi.getParameter("board_title"));
		/*System.out.println(cs_vo.getCs_board_title());
		System.out.println("여기까지3");*/
		cs_vo.setCs_board_content(multi.getParameter("content"));
		/*System.out.println(cs_vo.getCs_board_content());
		System.out.println("여기까지4");*/
		cs_vo.setCs_board_select(multi.getParameter("board_select"));
		/*System.out.println(cs_vo.getCs_board_select());
		System.out.println("여기까지5");*/
		
		cs_dao.insertBoard(cs_vo);
		
		f_dao.insertFile(multi, cs_dao.getSeq());
		
		
		forward.setRedirect(false);
		forward.setPath("/customerService/CS_BoardList.bo");
		return forward;
	}

}
