package com.team.app.cs.board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.vo.CS_ReplyVO;

public class CS_ReplyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int cs_board_no = Integer.parseInt(req.getParameter("cs_board_no"));
		PrintWriter out = resp.getWriter();
		CS_BoardDAO dao = new CS_BoardDAO();
		
		List<CS_ReplyVO> cs_replyList = dao.getReplyList(cs_board_no);

		JSONArray replies = new JSONArray();
		
		System.out.println(replies);
		
		for (CS_ReplyVO cs_reply : cs_replyList) {
			JSONObject reply = new JSONObject();
			reply.put("cs_reply_no", cs_reply.getCs_reply_no());
			reply.put("user_id", cs_reply.getUser_id());
			reply.put("content", cs_reply.getCs_reply_content());
			reply.put("cs_reply_date", cs_reply.getCs_reply_date());
			replies.add(reply);
		}
		out.println(replies.toJSONString());
		out.close();
		
		return null;
	}

}
