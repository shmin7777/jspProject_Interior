package com.team.app.store;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.vo.CS_ReplyVO;
import com.team.app.store.dao.StoreDAO;
import com.team.app.store.vo.StoreReviewVO;

public class Product_ReplyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int product_no = Integer.parseInt(req.getParameter("product_no"));
		PrintWriter out = resp.getWriter();
		StoreDAO dao = new StoreDAO();
		
		List<StoreReviewVO> replyList = dao.getStoreReply(product_no);

		JSONArray replies = new JSONArray();
		
		
		for (StoreReviewVO st_reply : replyList) {
			JSONObject reply = new JSONObject();
			reply.put("pro_reply_no", st_reply.getPro_reply_no());
			reply.put("user_id", st_reply.getUser_id());
			reply.put("product_no", st_reply.getProduct_no());
			reply.put("product_star", st_reply.getProduct_star());
			reply.put("pro_reply_content", st_reply.getPro_reply_content());
			reply.put("pro_reply_date", st_reply.getPro_reply_date().substring(0,10));
			replies.add(reply);
		}
		out.println(replies.toJSONString());
		out.close();
		
		return null;
	}
	
}
