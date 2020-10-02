package oracle.java.s20200903.dao;

import java.util.List;

import javax.mail.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.java.s20200903.model.Member;

 
@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<Member> list(Member tbm) {
		
		
		// TODO Auto-generated method stub
		return session.selectList("MemberAll", tbm);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return session.selectOne("total");
	}

	@Override
	public int joinMember(Member tbm) {
		int result = 0;
		try {
			result = session.insert("joinMember", tbm);
			if(result == 0) {
				System.out.println("result �� : " + result);
			}
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
		
	}

	@Override
	public Member confirm(String mId) {
		
		return session.selectOne("tbSelOne", mId);
	}

	@Override
	@ResponseBody
	public String idCheck(String mId) {
		// TODO Auto-generated method stub
		System.out.println(mId);
		return session.selectOne("idCheck", mId);
	}
 

}
