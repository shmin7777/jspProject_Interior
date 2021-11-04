package com.team.app.brag.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.cs.board.CS_ReplyListAction;
import com.team.app.cs.board.CS_ReplyWriteAction;

public class Brag_BoardFrontController extends HttpServlet {

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
		case "/Brag/Brag_BoardList.br":
			try {
				forward = new Brag_BoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_BoardList.br");
			}
			break;
		case "/Brag/Brag_Write.br":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/community/brag_write.jsp");
			break;
		case "/Brag/Brag_Write_Not_Signed_In.br":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/login.jsp");
			break;
		case "/Brag/Brag_WriteOk.br":
			try {
				forward = new Brag_BoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_WriteOk.br오류");
			}
			break;
		case "/Brag/Brag_BoardViewOk.br":
			try {
				forward = new Brag_BoardViewOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_BoardViewOk.br오류");
			}
			break;
		case "/Brag/FileDownload.br":
			try {
				new FileDownload().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/FileDownload.br오류");
			}
			break;
		case "/Brag/Brag_Edit.br":
			try {
				forward = new Brag_EditAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_Edit.br오류");
			}
			break;
		case "/Brag/Brag_EditOk.br":
			try {
				forward = new Brag_EditOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_EditOk.br");
			}
			break;
		case "/Brag/Brag_BoardDeleteOk.br":
			try {
				forward = new Brag_BoardDeleteOkAction().execute(req, resp);
				System.out.println("들어옴");
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/Brag/Brag_BoardDeleteOk.br");
			}
			break;
		case "/Brag/Brag_ReplyWrite.br":
			try {
				forward = new Brag_ReplyWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/Brag/Brag_ReplyWrite.br에서 오류");
			}
			break;
		case "/Brag/Brag_ReplyList.br":
			try {
				forward = new Brag_ReplyListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/Brag/Brag_ReplyList.br에서 오류");
			}
			break;
		case "/Brag/Brag_ReplyDeleteOk.br":
			try {
				forward = new Brag_ReplyDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/Brag/Brag_ReplyDeleteOk.br에서 오류");
			}
			break;
		case "/Brag/Brag_ReplyEditOk.br":
			try {
				forward = new Brag_ReplyEditOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/Brag/Brag_ReplyEditOk.br에서 오류");
			}
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
