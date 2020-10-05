package oracle.java.s20200903.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.s20200903.dao.NEDao;
import oracle.java.s20200903.model.NEJoin;
import oracle.java.s20200903.model.NEPost;

@Service
public class NEServiceImpl implements NEService {
	
	@Autowired
	private NEDao nd;

	@Override
	public int bTotal() {
		return nd.bTotal();
	}

	@Override
	public List<NEPost> bList(NEPost npost) {
		return nd.bList(npost);
	}

	@Override
	public List<NEJoin> saSList(NEJoin neJoin) {
		return nd.saSList(neJoin);
	}

	@Override
	public List<NEJoin> shSList(NEJoin neJoin) {
		return nd.shSList(neJoin);
	}

	@Override
	public List<NEJoin> bSList(NEJoin neJoin) {
		return nd.bSList(neJoin);
	}

	@Override
	public int searchInsert(NEJoin neJoin) {
		return nd.searchInsert(neJoin);
	}

	@Override
	public int swordYN(NEJoin neJoin) {
		return nd.swordYN(neJoin);
	}

	@Override
	public void searchUpdate(NEJoin neJoin) {
		nd.searchUpdate(neJoin);
	}

	@Override
	public void InsertBuyPost(NEJoin neJoin) {
		nd.InsertBuyPost(neJoin);
	}

	@Override
	public NEJoin buyPostDetail(NEJoin neJoin) {
		return nd.buyPostDetail(neJoin);
	}

	@Override
	public int buyPostDelete(NEJoin neJoin) {
		return nd.buyPostDelete(neJoin);
	}

	@Override
	public NEJoin buyPostUpdateForm(NEJoin neJoin) {
		return nd.buyPostUpdateForm(neJoin);
	}
	
	@Override
	public int buyPostUpdate(NEJoin neJoin) {
		return nd.buyPostUpdate(neJoin);
	}



}
