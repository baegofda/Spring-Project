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
import oracle.java.s20200903.service.NEPaging;
import oracle.java.s20200903.service.SearchPaging;


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
	public String search(HttpServletRequest request, Model model, String currentPage, NEJoin neJoin) {
		System.out.println("search start...");
		/*HttpSession session = request.getSession();
		if(session.getAttribute("mid") != null) {
			String mid = (String)session.getAttribute("mid");
			neJoin.setMid(mid);
		}*/
	
		String sword = request.getParameter("sword");
		System.out.println("sword==>"+sword );
		neJoin.setSword(sword);
		NEJoin totne = ns.serTotal(neJoin);
		
		//NEJoin totNeJoin = ns.serTotal(neJoin);
		
		int swordYN = ns.swordYN(neJoin);
		if (swordYN == 0) {
			ns.searchInsert(neJoin);
		}	ns.searchUpdate(neJoin);
		
		// 검색결과 - 판매게시판
		int saTotal = totne.getsSaleTotal();
		SearchPaging pg = new SearchPaging(saTotal, currentPage);
		neJoin.setStart(pg.getStart());
		neJoin.setEnd(pg.getEnd());
		List<NEJoin> saSList = ns.saSList(neJoin);
		
		// 검색결과 - 나눔게시판
		int shTotal = totne.getsShareTotal();
		pg = new SearchPaging(shTotal, currentPage);
		List<NEJoin> shSList = ns.shSList(neJoin);
		
		// 검색결과 - 구매게시판
		int BTotal = totne.getsBuyTotal();
		pg = new SearchPaging(BTotal, currentPage);
		neJoin.setStart(pg.getStart());
		neJoin.setEnd(pg.getEnd());
		List<NEJoin> bSList = ns.bSList(neJoin);
		
		model.addAttribute("saSList", saSList);
		model.addAttribute("shSList", shSList);
		model.addAttribute("bSList", bSList);
		model.addAttribute("sword", sword);
		return "neSearchList";
	}
	
	
	// 검색결과 페이지 - 판매게시판
	@RequestMapping("SearchSaleList")
	public String SearchSaleList(HttpServletRequest request, Model model, String currentPage) {
		String sword = request.getParameter("sword");
		NEJoin neJoin = new NEJoin();
		neJoin.setSword(sword);
		
		NEJoin totne = ns.serTotal(neJoin);
		int total = totne.getsSaleTotal();
		SearchPaging pg = new SearchPaging(total, currentPage);
		neJoin.setStart(pg.getStart());
		neJoin.setEnd(pg.getEnd());
		
		List<NEJoin> saSList = ns.saSList(neJoin);
		
		model.addAttribute("saSList", saSList);
		model.addAttribute("pg", pg);
		return "neSerSaleBoard";
	}
	
	
	// 검색결과 페이지 - 나눔게시판
	@RequestMapping("SearchShareList")
	public String SearchShareList(HttpServletRequest request, Model model, String currentPage) {
		String sword = request.getParameter("sword");
		NEJoin neJoin = new NEJoin();
		neJoin.setSword(sword);
		
		NEJoin totne = ns.serTotal(neJoin);
		int total = totne.getsShareTotal();
		SearchPaging pg = new SearchPaging(total, currentPage);
		neJoin.setStart(pg.getStart());
		neJoin.setEnd(pg.getEnd());
		
		List<NEJoin> shSList = ns.shSList(neJoin);
		System.out.println("SearchShareList pimg1===>"+ shSList.get(0).getPimg1());
		
		model.addAttribute("shSList", shSList);
		model.addAttribute("pg", pg);
		return "neSerSharingBoard";
	}
	
	// 검색결과 페이지 - 구매게시판
	@RequestMapping("SearchBuyList")
	public String SearchBuyList(HttpServletRequest request, Model model, String currentPage) {
		String sword = request.getParameter("sword");
		System.out.println("Search===Buy===List sword=> "+ sword);
		NEJoin neJoin = new NEJoin();
		neJoin.setSword(sword);
		
		NEJoin totne = ns.serTotal(neJoin);
		int total = totne.getsBuyTotal();
		SearchPaging pg = new SearchPaging(total, currentPage);
		neJoin.setStart(pg.getStart());
		neJoin.setEnd(pg.getEnd());
		
		List<NEJoin> bSList = ns.bSList(neJoin);
		
		model.addAttribute("bSList", bSList);
		model.addAttribute("pg", pg);
		return "neSerBuyBoard";
	}
	
	
	// 구매게시글을 리스트로 받아 와 게시판 출력
	@RequestMapping(value="buylist")
	public String bList(String currentPage, Model model, NEPost npost) {
		System.out.println("bList start...");
		int total = ns.bTotal();
		System.out.println("total============="+total);
		
		NEPaging pg = new NEPaging(total, currentPage);
		npost.setStart(pg.getStart());
		npost.setEnd(pg.getEnd());
		List<NEPost> list = ns.bList(npost);
		
		model.addAttribute("blist", list);
		model.addAttribute("pg", pg);
		
		return "neBuyBoard";
	}
	
	
	// neBuyBoard(list)에서 글 작성을 눌러 구매글 작성 페이지로 이동
	@RequestMapping(value="buyPostWriteForm")
	public String buyBoardWrite() {
		return "neBuyPostWriteForm";
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
	
	// 구매 게시글 상세
	@RequestMapping("buyPostDetail")
	public String buyPostDetail(HttpServletRequest request, Model model) {
		NEJoin neJoin = new NEJoin();
		neJoin.setPnum(Integer.parseInt(request.getParameter("pnum")));
		
		NEJoin neJoin2 = ns.buyPostDetail(neJoin);
		model.addAttribute("bPost", neJoin2);
		return "neBuyPostDetail";
	}
	
	// 구매 게시글 삭제
	@RequestMapping("buyPostDelete")
	public String buyPostDelete(HttpServletRequest request, Model model) {
		NEJoin neJoin = new NEJoin();
		neJoin.setPnum(Integer.parseInt(request.getParameter("pnum")));
		System.out.println("pnum----------"+neJoin.getPnum());
		
		int result = ns.buyPostDelete(neJoin);
		model.addAttribute("result", result); // 성공일 시 result = 1
		
		return "redirect:buylist.do";
	}
	
	// 구매 게시글 수정 - 수정하려는 글 데이터 가지고 폼으로 이동
	@RequestMapping("buyPostUpdateForm")
	public String buyPostUpdateForm(HttpServletRequest request, Model model) {
		NEJoin neJoin = new NEJoin();
		neJoin.setPnum(Integer.parseInt(request.getParameter("pnum")));
		
		NEJoin neJoin2 = ns.buyPostUpdateForm(neJoin);
		model.addAttribute("bPost", neJoin2);
		
		return "neBuyPostUpdateForm";
	}
	
	// 구매 게시글 수정(DBupdate처리)
	@RequestMapping(value="buyPostUpdate", method=RequestMethod.POST)
	public String buyPostUpdate(HttpServletRequest request,@RequestParam("img") MultipartFile[] uploadFile, Model model) throws Exception {
		NEJoin neJoin = new NEJoin();
		neJoin.setPnum(Integer.parseInt(request.getParameter("pnum")));
		NEJoin preNeJ = ns.buyPostDetail(neJoin);
		
		System.out.println("buyPostInsert start..." + request.getParameter("img")); 
		
		String uploadPath = "C:\\Spring-Project\\s20200903\\src\\main\\webapp\\resources\\image";
		
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
			
			if(img.getSize()!=0) {	//새로 첨부된 파일이 있을 시 새로 set
				String savedName = uploadFile(img.getOriginalFilename(), img.getBytes(), uploadPath);
				if(i==0) { neJoin.setPimg1(savedName); System.out.println(savedName);}
				if(i==1) neJoin.setPimg2(savedName);
				if(i==2) neJoin.setPimg3(savedName);
				if(i==3) neJoin.setPimg4(savedName);
				if(i==4) neJoin.setPimg5(savedName);	
			} else {				// 새로 첨부된 파일이 없을 시 기존의 img정보 저장
				if(i==0)neJoin.setPimg1(preNeJ.getPimg1());
				if(i==1)neJoin.setPimg2(preNeJ.getPimg2());
				if(i==2)neJoin.setPimg3(preNeJ.getPimg3());
				if(i==3)neJoin.setPimg4(preNeJ.getPimg4());
				if(i==4)neJoin.setPimg5(preNeJ.getPimg5());
			}								
		}
		int result = ns.buyPostUpdate(neJoin);
		model.addAttribute("result", result);
		return "redirect:buylist.do";
	}
	
	// 지도 검색
	@RequestMapping("mapSearch")
	public String mapSearch(HttpServletRequest request, Model model) {
		return "neMapSearch";
	}
	
	
	// 이전 페이지로 이동하는 메소드
	@RequestMapping("referer")
	public String referer(HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
}
