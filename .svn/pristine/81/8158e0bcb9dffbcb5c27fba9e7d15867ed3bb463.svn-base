package com.team.app.cs.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;

public class CS_BoardFrontController extends HttpServlet {

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
		case "/customerService/CS_BoardList.bo":
			try {
				forward = new CS_BoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_BoardList.bo에서 오류");
			}
			break;
		case "/customerService/CS_Write.bo":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/customerService/cs_write.jsp");
			break;
		case "/customerService/CS_Write_Not_Signed_In.bo":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/login.jsp");
			break;
		case "/customerService/CS_WriteOk.bo":
			try {
				forward = new CS_BoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_WriteOk.bo에서 오류");
			}
			break;
		case "/customerService/CS_BoardViewOk.bo":
			try {
				forward = new CS_BoardViewOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_BoardViewOk.bo에서 오류");
			}
			break;
		case "/customerService/FileDownload.bo":
			try {
				new FileDownload().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/FileDownload.bo에서 오류");
			}
			break;
		case "/customerService/CS_Edit.bo":
			try {
				forward = new CS_EditAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_Edit.bo에서 오류");
			}
			break;
		case "/customerService/CS_EditOk.bo":
			try {
				forward = new CS_EditOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_EditOk.bo에서 오류");
			}
			break;
		case "/customerService/CS_BoardDeleteOk.bo":
			try {
				forward = new CS_BoardDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_BoardDeleteOk.bo에서 오류");
			}
			break;
		case "/customerService/CS_ReplyList.bo":
			try {
				forward = new CS_ReplyListAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_ReplyList.bo에서 오류");
			}
			break;
		case "/customerService/CS_ReplyWrite.bo":
			try {
				forward = new CS_ReplyWriteAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app/customerService/CS_ReplyWrite.bo에서 오류");
			}
			break;
			//여기서 작업중
//		case "/customerService/CS_BoardList_Search.bo":
//			try {
//				forward = new CS_SearchAction().execute(req,resp);
//			}catch(Exception e) {
//				System.out.println(e);
//				System.out.println("/customerService/CS_BoardList_Search.bo/에서오류");
//			}
		case "/customerService/CS_ReplyDeleteOk.bo":
			try {
				forward = new CS_ReplyDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app//customerService/CS_ReplyDeleteOk.bo에서 오류");
			}
			break;
		case "/customerService/CS_ReplyEditOk.bo":
			try {
				forward = new CS_ReplyEditOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/app//customerService/CS_ReplyEditOk.bo에서 오류");
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
