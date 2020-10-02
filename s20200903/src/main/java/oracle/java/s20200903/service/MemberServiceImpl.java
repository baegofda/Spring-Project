package oracle.java.s20200903.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.s20200903.dao.MemberDao;
import oracle.java.s20200903.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao td;
	
	
	@Override
	public List<Member> list(Member tbm) {
		// TODO Auto-generated method stub
		return td.list(tbm);
	}


	@Override
	public int total() {
		// TODO Auto-generated method stub
		return td.total();
	}


	@Override
	public int joinMember(Member tbm) {
		// TODO Auto-generated method stub
		return td.joinMember(tbm);
	}




	@Override
	public String idCheck(String mId) {
		System.out.println("TBService idCheck start...");
		return td.idCheck(mId);
	}




}
