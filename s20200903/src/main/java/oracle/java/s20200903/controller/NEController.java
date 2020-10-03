package oracle.java.s20200903.controller;

import java.awt.image.BufferedImage;
import java.io.*;
import java.util.*;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import oracle.java.s20200903.model.NEJoin;
import oracle.java.s20200903.model.NEPost;
import oracle.java.s20200903.service.NEService;
import oracle.java.s20200903.service.Paging;

@Controller
public class NEController {
	
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
		//return "neBuyBoardWrite";
		return "neBuyBoardWrite";
	}
	
	// 새 글 insert
	@RequestMapping(value="buyPostWrite", method=RequestMethod.POST)
	public String buyPostInsert(HttpServletRequest request, NEJoin neJoin, Model model) throws Exception {
		System.out.println("buyPostInsert start...");
		
		// 기초 정보 저장
		neJoin.setCtcode(Integer.parseInt(request.getParameter("ctcode")));
		neJoin.setPprice(Integer.parseInt(request.getParameter("pprice")));
		neJoin.setPimg1(request.getParameter("pprice"));
		
		// 이미지 파일명 저장
		neJoin.setPimg1(request.getParameter("img1"));
		neJoin.setPimg2(request.getParameter("img2"));
		neJoin.setPimg3(request.getParameter("img3"));
		neJoin.setPimg4(request.getParameter("img4"));
		neJoin.setPimg5(request.getParameter("img5"));
		
		// 타이틀 및 내용 정보 저장
		neJoin.setPtitle(request.getParameter("ptitle"));
		neJoin.setPcontent(request.getParameter("pcontinet"));
		
		// 유저정보 입력과 동시에 데이터 최종 Insert
		neJoin.setMid("user@naver.com");	// 통합 전이라 직접 입력. 통합 후에는 input hidden으로 session에서 불러와 저장
//		ns.InsertBuyPost(neJoin);
	
		// 기존 소스코드 주석 처리 (추 후 삭제 요망)
//		System.out.println("originalName => "+ pimg1.getOriginalFilename());
//		System.out.println("file Size => "+ pimg1.getSize());
//		System.out.println("file ContentType => "+ pimg1.getContentType());
//		String savedName = uploadFile(pimg1.getOriginalFilename(), pimg1.getBytes(), uploadPath);
//		model.addAttribute("savedName",savedName);
		
		return "forward:buylist.do";
	}
	
	// 파일명을 생성해 경로에 저장하는 메소드 -> ajax와 연결하여 저장하도록 수정 
	@RequestMapping(value="/uploadFile", method=RequestMethod.POST)
	@ResponseBody
	public String uploadFile(@RequestParam("file") MultipartFile file) throws Exception {
		System.out.println("uploadFile start...");
		
	    try {
	    BufferedImage src = ImageIO.read(new ByteArrayInputStream(file.getBytes()));
	    File destination = new File("/src/main/webapp/resources/image/Image1.png");
	    ImageIO.write(src, "png", destination);
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
//		String filename = uploadfile.getOriginalFilename();
//		String uploadPath = "/src/main/webapp/resources/image";
//	    String filepath = Paths.get(uploadPath, filename).toString();
//		System.out.println("uploadPath => " + uploadPath);
//		UUID uid = UUID.randomUUID();
		
//		File fileDirectory = new File(uploadPath);
//		
//		if(!fileDirectory.exists()) {
//			fileDirectory.mkdirs();
//			System.out.println("업로드용 폴더 생성");
//		}
//		String savedName = uid.toString() + "_" + originalName;
		//File target = new File(uploadPath, savedName);
		// uploadPath에 savedName이라는 이름의 파일 생성	
		//FileCopyUtils.copy(fileData, target);
		
		return "AA";
	}
}
