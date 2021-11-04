package com.team.app.consult;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;


public class ConsultFrontController extends HttpServlet {

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
	      
	     System.out.println("프론트컨트롤러 도착");
	     switch (command) {
	      case "/consult/ConsultOk.co":
	    	  try {forward = new ConsultOkAction().execute(req, resp);}
	    	  catch(Exception e) {
	    		  System.out.println(e);
	    		  System.out.println("프론트컨트롤러 오류");
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
