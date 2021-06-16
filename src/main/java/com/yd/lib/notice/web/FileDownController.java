package com.yd.lib.notice.web;


import java.io.File;
import java.util.HashMap;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileDownController {
	private static final String FILE_SERVER_PATH = "D:/git/ydLib/src/main/webapp/resources/upload";
	
	@RequestMapping("/fileDownload.do")
    public ModelAndView fileDownload4(@RequestParam HashMap<Object, Object> params, ModelAndView mv){
    	String fileName = (String) params.get("notice_File");
		String fullPath = FILE_SERVER_PATH + "/" + fileName;
		File file = new File(fullPath);
		
		mv.setViewName("downloadView");
		mv.addObject("downloadFile", file);
		return mv;
    }
}