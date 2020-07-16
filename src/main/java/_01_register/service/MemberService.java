package _01_register.service;

import _01_register.model.MemberBean;

public interface MemberService {
	boolean idExists(String id);
	int saveMember(MemberBean mb);
	MemberBean queryMember(String id);
	MemberBean checkIdPassword(String userId, String password) ;
}
