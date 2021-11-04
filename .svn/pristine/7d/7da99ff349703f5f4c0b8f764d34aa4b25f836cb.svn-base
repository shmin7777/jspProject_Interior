package com.team.app.manage;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.manage.dao.ManageStoreDAO;
import com.team.app.manage.vo.ManageStoreVO;

public class ManageInsertStoreOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ManageStoreVO vo = new ManageStoreVO();
		ManageStoreDAO dao = new ManageStoreDAO();
		ActionForward forward = new ActionForward();

		String saveFolder = "C:\\team3\\workspace\\test01\\WebContent\\storeImages";
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
				vo.setProduct_steel3(original);
				System.out.println(original);
			
		}

		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
			vo.setProduct_steel2(original);
			System.out.println(original);
		}
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			original=(original==null)?"":original;
			vo.setProduct_steel1(original);
			System.out.println(original);
		}
		if (files.hasMoreElements()) {
			// 사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			// 사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			vo.setProduct_img(original);
			System.out.println(original);
		}

		vo.setProduct_category(multi.getParameter("product_category"));
		vo.setProduct_subcategory(multi.getParameter("product_subcategory"));
		vo.setProduct_name(multi.getParameter("product_name"));
		vo.setProduct_price(Integer.parseInt(multi.getParameter("product_price")));
		vo.setProduct_info(multi.getParameter("product_info"));
//		vo.setProduct_img(multi.getParameter("product_img"));
//		vo.setProduct_steel1(multi.getParameter("product_steel1"));
//		vo.setProduct_steel2(multi.getParameter("product_steel2"));
//		vo.setProduct_steel3(multi.getParameter("product_steel3"));

		dao.insertStore(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/manage/manageHome.jsp");

		return forward;
	}

}
