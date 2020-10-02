package oracle.java.s20200903.dao;

import java.util.List;

import oracle.java.s20200903.model.Member;


public interface MemberDao {
	List<Member> 	list(Member tbm);
	int				total();
	int				joinMember(Member tbm);
	Member		confirm(String mId);
	String				idCheck(String mId);
}
