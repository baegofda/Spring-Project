package oracle.java.s20200903.dao;

import java.util.List;

import oracle.java.s20200903.model.NEJoin;
import oracle.java.s20200903.model.NEPost;

public interface NEDao {


	int bTotal();

	List<NEPost> bList(NEPost npost);

	List<NEJoin> saSList(NEJoin neJoin);

	List<NEJoin> shSList(NEJoin neJoin);

	List<NEJoin> bSList(NEJoin neJoin);

	int searchInsert(NEJoin neJoin);

	int swordYN(NEJoin neJoin);

	void searchUpdate(NEJoin neJoin);

	void InsertBuyPost(NEJoin neJoin);

}
