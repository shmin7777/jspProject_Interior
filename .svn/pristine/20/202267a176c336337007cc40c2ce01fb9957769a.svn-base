package com.team.app.manage;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.manage.dao.ManageEventDAO;
import com.team.app.manage.dao.ManageNoticeDAO;
import com.team.app.manage.vo.ManageEventVO;
import com.team.app.manage.vo.ManageNoticeVO;

public class ManageInsertNoticeOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ManageNoticeVO vo = new ManageNoticeVO();
		ManageNoticeDAO dao = new ManageNoticeDAO();
		ActionForward forward = new ActionForward();

		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\eventimages";
		int fileSize = 5 * 1024 * 1024; // 5M

		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

		Enumeration<String> files = multi.getFileNames();


		vo.setNotice_title(multi.getParameter("notice_title"));
		vo.setNotice_content(multi.getParameter("notice_content"));
		vo.setNotice_date(multi.getParameter("notice_date"));


		dao.insertNotice(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/manage/manageHome.jsp");

		return forward;
	}

}
