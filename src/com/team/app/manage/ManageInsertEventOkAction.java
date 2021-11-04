package com.team.app.manage;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.manage.dao.ManageEventDAO;
import com.team.app.manage.vo.ManageEventVO;


public class ManageInsertEventOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ManageEventVO vo = new ManageEventVO();
		ManageEventDAO dao = new ManageEventDAO();
		ActionForward forward = new ActionForward();

		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\eventimages";
		int fileSize = 5 * 1024 * 1024; // 5M

		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

		Enumeration<String> files = multi.getFileNames();
//		while(files.hasMoreElements()) {
//			//사용자가 업로드한 파일태그의 name
//			String name = files.nextElement();
//			//사용자가 업로드한 원본 파일 이름
//			String original = multi.getOriginalFileName(name);
//			System.out.println(original);
//		/*	//중복 시 변경된 이름
//			String systemName = multi.getFilesystemName(name);
//			if(systemName == null) {continue;}*/
//			
//			/*vo.setProduct_steel1(original);*/
//		}
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
				vo.setEvent_image(original);
				System.out.println(original);
			
		}
		
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
				vo.setEvent_content(original);
				System.out.println(original);
			
		}
	

		vo.setEvent_title(multi.getParameter("event_title"));
		vo.setEvent_term(multi.getParameter("event_term"));


		dao.insertEvent(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/manage/manageHome.jsp");

		return forward;
	}
}
