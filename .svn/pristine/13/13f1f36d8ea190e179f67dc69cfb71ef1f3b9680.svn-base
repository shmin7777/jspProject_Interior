package com.team.app.manage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.user.UserJoinOkAction;
import com.team.app.user.UserLoginOkAction;

public class ManageFrontController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;

		switch (command) {
		case "/manage/ManageLoginOk.mn":
			try {
				forward = new ManageLoginOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
			break;
		case "/manage/ManageLogin.mn":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/manage/manageLogin.jsp");
			break;
		case "/manage/ManageInsertStoreOk.mn":
			try {forward = new ManageInsertStoreOkAction().execute(req, resp);} catch (Exception e) {e.printStackTrace();}
			break;
		case "/manage/ManageInsertEventOk.mn":
			try {forward = new ManageInsertEventOkAction().execute(req, resp);} catch (Exception e) {e.printStackTrace();}
			break;
		case "/manage/ManageInsertNoticeOk.mn":
			try {forward = new ManageInsertNoticeOkAction().execute(req, resp);} catch (Exception e) {e.printStackTrace();}
			break;
		case "/manage/ManageInsertCcOk.mn":
			try {forward = new ManageInsertCcOkAction().execute(req, resp);} catch (Exception e) {e.printStackTrace();}
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
