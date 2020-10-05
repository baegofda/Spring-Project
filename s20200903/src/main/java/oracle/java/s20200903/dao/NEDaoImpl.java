package oracle.java.s20200903.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.s20200903.model.NEJoin;
import oracle.java.s20200903.model.NEPost;

@Repository
public class NEDaoImpl implements NEDao {

	@Autowired
	private SqlSession session;
	

	@Override
	public int bTotal() {
		return session.selectOne("NEbTotal");
	}

	@Override
	public List<NEPost> bList(NEPost npost) {
		return session.selectList("NEbList", npost);
	}

	@Override
	public List<NEJoin> saSList(NEJoin neJoin) {
		return session.selectList("NEsaSList", neJoin);
	}

	@Override
	public List<NEJoin> shSList(NEJoin neJoin) {
		return session.selectList("NEshSList", neJoin);
	}

	@Override
	public List<NEJoin> bSList(NEJoin neJoin) {
		return session.selectList("NEbSList", neJoin);
	}

	@Override
	public int swordYN(NEJoin neJoin) {
		int result = session.selectOne("NEswordYN",neJoin);
		System.out.println("dapimpl-------------------"+result);
		return result;
	}
	
	@Override
	public int searchInsert(NEJoin neJoin) {
		return session.insert("NEsearchInsert", neJoin);
	}


	@Override
	public void searchUpdate(NEJoin neJoin) {
		session.update("NEsearchUpdate", neJoin);
	}

	@Override
	public void InsertBuyPost(NEJoin neJoin) {
		int pnum = session.selectOne("NEgetBuyPnum");
		pnum = pnum + 1;
		neJoin.setPnum(pnum);
		System.out.println("InsertBuyPost ==pNum=="+pnum);
		session.insert("NEInsertBuyPost", neJoin);
	}

	@Override
	public NEJoin buyPostDetail(NEJoin neJoin) {
		return session.selectOne("NEBuyPostDetail", neJoin);
	}

	@Override
	public int buyPostDelete(NEJoin neJoin) {
		return session.delete("NEbuyPostDelete", neJoin);
	}

	@Override
	public NEJoin buyPostUpdateForm(NEJoin neJoin) {
		return session.selectOne("NEBuyPostDetail", neJoin);	// select해 올 데이터가 같기 때문에 재사용
	}
	
	@Override
	public int buyPostUpdate(NEJoin neJoin) {
		return session.update("NEbuyPostUpdate", neJoin);
	}


}
