package oracle.java.s20200903.controller;

import java.io.*;
import java.util.*;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import oracle.java.s20200903.model.NEJoin;
import oracle.java.s20200903.model.NEPost;
import oracle.java.s20200903.service.NEService;
import oracle.java.s20200903.service.Paging;

@MultipartConfig(
	//location="" 상대경로"/../.."불가. 절대경로를 적어야 함. 절대경로는 리눅스/윈도우에 차이가 있으므로 차라리 설정하지 않고 자바 지정 임시 디렉토리 사용
	fileSizeThreshold=1024*1024, // 1M (전송파일크기가 1M이상일 경우 메모리가 아니라 위의 디스크 사용
	maxFileSize=1024*1024*50,	 // 첨부파일 한 개 당 사이즈 제한 (5MB)
	maxRequestSize=1024*1024*50*5 // 전체 요청에 대한 사이즈 제한 (5MB 5개까지)
)
@Controller
public class NEController {
	
	private static final Logger logger = LoggerFactory.getLogger(NEController.class);
	
	@Autowired
	private NEService ns;
	
	
	
	// 메인 페이지로 이동
	@RequestMapping(value="main")
	public String main(HttpServletRequest request, Model model) {
		return "main";
	}

	
	// 검색어를 입력받은 후 결과 출력
	@RequestMapping(value="search", method=RequestMethod.POST)
	public String search(HttpServletRequest request, Model model, NEJoin neJoin) {
		System.out.println("search start...");
		/*HttpSession session = request.getSession();
		if(session.getAttribute("mid") != null) {
			String mid = (String)session.getAttribute("mid");
			neJoin.setMid(mid);
		}*/
	
		String sword = request.getParameter("sword");
		System.out.println("sword==>"+sword );
		neJoin.setSword(sword);
		
		int swordYN = ns.swordYN(neJoin);
		if (swordYN == 0) {
			ns.searchInsert(neJoin);
		}	ns.searchUpdate(neJoin);
		
		List<NEJoin> saSList = ns.saSList(neJoin);
		List<NEJoin> shSList = ns.shSList(neJoin);
		List<NEJoin> bSList = ns.bSList(neJoin);
		
		model.addAttribute("saSList", saSList);
		model.addAttribute("shSList", shSList);
		model.addAttribute("bSList", bSList);
		return "neSearchList";
	}
	
	
	// 구매게시글을 리스트로 받아 와 게시판 출력
	@RequestMapping(value="buylist")
	public String bList(String currentPage, Model model, NEPost npost) {
		System.out.println("bList start...");
		int total = ns.bTotal();
		System.out.println("total============="+total);
		
		Paging pg = new Paging(total, currentPage);
		npost.setStart(pg.getStart());
		npost.setEnd(pg.getEnd());
		List<NEPost> list = ns.bList(npost);
		
		model.addAttribute("blist", list);
		model.addAttribute("pg", pg);
		
		return "neBuyBoard";
	}
	
	
	// neBuyBoard(list)에서 글 작성을 눌러 구매글 작성 페이지로 이동
	@RequestMapping(value="buyBoardWriteForm")
	public String buyBoardWrite() {
		return "neBuyBoardWrite";
	}
	
	
	
	// 새 글 작성(insert 실행)
	@RequestMapping(value="buyPostWrite", method=RequestMethod.POST)
	public String buyPostWrite(HttpServletRequest request,@RequestParam("img") MultipartFile[] uploadFile, Model model) throws Exception {		
		System.out.println("buyPostInsert start..." + request.getParameter("img")); 
		
		String uploadPath = "C:\\Spring-Project\\s20200903\\src\\main\\webapp\\resources\\image";
		
		NEJoin neJoin = new NEJoin();
		// bId, pNum은 Dao에서 DB연결을 통해 set
		neJoin.setMid("user@naver.com");	// 통합 후 neJoin.setMid((String) request.getSession().getAttribute("mid"));
		neJoin.setCtcode(Integer.parseInt(request.getParameter("ctcode")));
		neJoin.setPprice(Integer.parseInt(request.getParameter("pprice")));
		neJoin.setPtitle(request.getParameter("ptitle"));
		neJoin.setPcontent(request.getParameter("pcontent"));
		
		for(int i = 0; i<uploadFile.length; i++) {
			MultipartFile img = uploadFile[i];
			logger.info("upload File Name : " + img.getOriginalFilename());
			logger.info("upload File Size : " + img.getSize());
			String savedName = uploadFile(img.getOriginalFilename(), img.getBytes(), uploadPath);
			if(i==0) {neJoin.setPimg1(savedName); System.out.println(savedName);}
			if(i==1) neJoin.setPimg2(savedName);
			if(i==2) neJoin.setPimg3(savedName);
			if(i==3) neJoin.setPimg4(savedName);
			if(i==4) neJoin.setPimg5(savedName);			
		}
		ns.InsertBuyPost(neJoin);
		return "redirect:buylist.do";
	}
	
	// 파일 저장
	public String uploadFile(String originalName, byte[] fileData, String uploadPath) throws Exception {
		UUID uid = UUID.randomUUID();
		
		File fileDirectory = new File(uploadPath);
		// 업로드한 파일이 없을 경우 저장하지 않음
		if(originalName.equals("")||originalName == null) {			
			return "null";			
		} else {		
			if(!fileDirectory.exists()) {
			fileDirectory.mkdirs();
			System.out.println("업로드용 폴더 생성:" + uploadPath);
			}
			String savedName = uid.toString() + "_" + originalName;
			File dirSave = new File(uploadPath, savedName);
			FileCopyUtils.copy(fileData, dirSave);
		
			return savedName;
		}
	}		
	
	// 이전 페이지로 이동하는 메소드
	@RequestMapping("referer")
	public String referer(HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
}
