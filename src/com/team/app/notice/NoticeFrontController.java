package com.team.app.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.cs.board.CS_BoardDeleteOkAction;
import com.team.app.cs.board.CS_BoardListOkAction;
import com.team.app.cs.board.CS_BoardViewOkAction;
import com.team.app.cs.board.CS_BoardWriteOkAction;
import com.team.app.cs.board.CS_EditAction;
import com.team.app.cs.board.CS_EditOkAction;
import com.team.app.cs.board.CS_ReplyListAction;
import com.team.app.cs.board.CS_ReplyWriteAction;
import com.team.app.cs.board.FileDownload;

public class NoticeFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		System.out.println(command);
		switch (command) {
			case "/notice/NoticeList.no":
				try {forward = new NoticeListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		
			case "/notice/NoticeViewOk.no":
				try {forward = new NoticeViewOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	
	
	
	
	}
}
