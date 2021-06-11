package com.yd.lib.notice.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yd.lib.notice.vo.NoticeVO;

// 파일업로드를 하기 위한 서블릿
@WebServlet("/fileUpload")
public class FileUpload extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	      resp.setCharacterEncoding("UTF-8");
	      
	      int size = 10 * 1024 * 1024;
	      String path = "resources/images";
	      
	      ServletContext sc = req.getServletContext();
	      path = sc.getRealPath("resources/images");
	      
	      String fileName="";
	      
	      MultipartRequest multi = null;
	      try {
	         multi = new MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
	         Enumeration files = multi.getFileNames();
	         while(files.hasMoreElements()) {
	            String itemImage = (String) files.nextElement();
	            fileName = multi.getFilesystemName(itemImage);
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      
	      String title = multi.getParameter("notice_Title");
	      String content = multi.getParameter("notice_Content");
	      
	      NoticeVO vo = new NoticeVO();
	      vo.setNotice_Title(title);
	      vo.setNotice_Content(content);
	      vo.setNotice_File(fileName);

	}

}