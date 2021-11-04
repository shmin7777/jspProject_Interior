package com.team.app.brag.board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.vo.Brag_ReplyVO;

public class Brag_ReplyListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		int brag_board_no = Integer.parseInt(req.getParameter("brag_board_no"));
		PrintWriter out = resp.getWriter();
		Brag_BoardDAO dao = new Brag_BoardDAO();
		
		List<Brag_ReplyVO> brag_replyList = dao.getReplyList(brag_board_no);

		JSONArray replies = new JSONArray();
		
		System.out.println(replies);
		
		for (Brag_ReplyVO brag_reply : brag_replyList) {
			JSONObject reply = new JSONObject();
			reply.put("brag_reply_no", brag_reply.getBrag_reply_no());
			reply.put("user_id", brag_reply.getUser_id());
			reply.put("content", brag_reply.getBrag_reply_content());
			reply.put("brag_reply_date", brag_reply.getBrag_reply_date());
			replies.add(reply);
		}
		out.println(replies.toJSONString());
		out.close();
		
		return null;
	}

}
