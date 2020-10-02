package oracle.java.s20200903.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.java.s20200903.model.Member;
import oracle.java.s20200903.service.MemberService;
import oracle.java.s20200903.service.Paging;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService ts;
	
	@RequestMapping(value="list")
	public String list(Member tbm, String currentPage, Model model) {
		int total = ts.total();
		System.out.println("total=>" + total);
		
		Paging pg = new Paging(total, currentPage);
		tbm.setStart(pg.getStart());
		tbm.setEnd(pg.getEnd());
		List<Member> list = ts.list(tbm);
		
		
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		
		
		return "list";
	}
	
	@RequestMapping (value="login", method=RequestMethod.POST)
	public String login(Member tbm, Model model) {
		
		return "login";
	}
	
	@RequestMapping (value="joinForm")
	public String joinForm(Model model) {

		return "joinForm";
		
	}
	
	@RequestMapping (value="joinMember", method=RequestMethod.POST)
	public String joinMember(Member tbm ,Model model) {
		System.out.println("joinMember() start,..");
		int result = ts.joinMember(tbm);
		System.out.println("TBController joinMember start..." + result);
		if(result > 0) {
			System.out.println("joinMember result 값 : " + result);
		} else {
			model.addAttribute("msg", "");
		}
		return "forward:list.do";
	}
	@RequestMapping(value="checkid", produces = "application/text;charset=UTF-8")
	@ResponseBody
	public String idCheck(String mId, Model model) {
//		System.out.println("mId => " + mId);
		String sId = ts.idCheck(mId);
		if(sId==null) {
			model.addAttribute("msg", "사용가능한 아이디 입니다.");
		} else {
			model.addAttribute("msg1", "중복된 아이디 입니다.");
		}
		System.out.println("sId => " +sId);
		return sId;
	}
	
}
