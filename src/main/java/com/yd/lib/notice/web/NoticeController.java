package com.yd.lib.notice.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yd.lib.notice.serviceImpl.NoticeServiceImpl;
import com.yd.lib.notice.vo.NoticeVO;



@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl dao;
	
	@RequestMapping("/noticeList.do")
	public String noticeList(Model model) {
		model.addAttribute("notice", dao.noticeSelectList());
		return "notice/noticeList";
	}

	@RequestMapping("/noticeSelect.do")
	public String noticeSelect(Model model, NoticeVO vo) {
		dao.noticeHitUpdate(vo.getNotice_Id());		//조회수 업데이트
		model.addAttribute("vo", dao.noticeSelect(vo));
		return "notice/noticeSelect";
	}

	@RequestMapping("/noticeInsertForm.do") 	// 작성 폼 호출
	public String noticeInsertForm() {
		return "notice/noticeInsertForm";
	}
	
	@RequestMapping("/noticeInsert.do")		// 작성 후 버튼누르면
	public String noticeInsert(NoticeVO vo) throws IOException { 
		// 파일 업로드 처리
		String fileName=null;

		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
			UUID uuid = UUID.randomUUID();	//UUID 구하기
			fileName=uuid+"."+ext;
			uploadFile.transferTo(new File("C:\\upload\\" + fileName));
			System.out.println(fileName);
		} else {
			System.out.println("첨부파일이 없습니다.");
		}
		vo.setNotice_File(fileName);
		
		dao.noticeInsert(vo);
		return "redirect:noticeList.do";
	}	
	
	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(Model model, NoticeVO vo) {
		dao.noticeDelete(vo);
		return "redirect:noticeList.do";
	}
	
}
