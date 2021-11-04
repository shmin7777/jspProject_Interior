package com.team.app.manage;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cc.vo.CcVO;
import com.team.app.manage.dao.ManageCcDAO;

public class ManageInsertCcOkAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		CcVO vo = new CcVO();
		ManageCcDAO dao = new ManageCcDAO();
		ActionForward forward = new ActionForward();

		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\ccImages";
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
			vo.setCc_main_image(original);
			System.out.println(original);
		}
		
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
				vo.setCc_steel3(original);
				System.out.println(original);
			
		}

		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
			vo.setCc_steel2(original);
			System.out.println(original);
		}
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
			vo.setCc_steel1(original);
			System.out.println(original);
		}
		

		vo.setCc_name(multi.getParameter("cc_name"));
		vo.setCc_cost(multi.getParameter("cc_cost"));
		vo.setCc_term(multi.getParameter("cc_term"));
		vo.setCc_content((multi.getParameter("cc_content")));
		
//		vo.setProduct_img(multi.getParameter("product_img"));
//		vo.setProduct_steel1(multi.getParameter("product_steel1"));
//		vo.setProduct_steel2(multi.getParameter("product_steel2"));
//		vo.setProduct_steel3(multi.getParameter("product_steel3"));

		dao.insertCc(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/manage/manageHome.jsp");

		return forward;
	}
}
