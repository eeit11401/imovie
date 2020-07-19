package _01_register.dao.impl;

import java.sql.Connection;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import _01_register.dao.MemberDao;
import _01_register.model.MemberBean;

// 本類別使用為標準的Hibernate+Spring技術來存取資料庫。
@Repository
public class MemberDaoImpl_Hibernate implements MemberDao {
	
	@Autowired
	SessionFactory factory;
	
	public MemberDaoImpl_Hibernate() {
	}
	// 儲存MemberBean物件，將參數mb新增到Member表格內。
	public int saveMember(MemberBean mb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		session.save(mb);
		n++;
		return n;
	}
	// 判斷參數id(會員帳號)是否已經被現有客戶使用，如果是，傳回true，表示此id不能使用，
	// 否則傳回false，表示此id可使用。
	@Override
	public boolean idExists(String id) {
		Session session = factory.getCurrentSession();
		boolean exist = false;
		String hql = "FROM MemberBean m WHERE m.memberId = :mid";
		@SuppressWarnings("unchecked")
		List<MemberBean> beans = (List<MemberBean>) session.createQuery(hql)
										.setParameter("mid", id)
										.getResultList();
		
		if (beans.size() > 0) {
			exist = true;
		}
		return exist;
	}
	// 由參數 id (會員帳號) 到Member表格中 取得某個會員的所有資料，傳回值為一個MemberBean物件，
	// 如果找不到對應的會員資料，傳回值為null。
	@Override
	public MemberBean queryMember(String id) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean m WHERE m.memberId = :mid";
		@SuppressWarnings("unchecked")
		List<MemberBean> beans = (List<MemberBean>) session.createQuery(hql)
										.setParameter("mid", id)
										.getResultList();
		if (beans.size() > 0) {
			mb = beans.get(0);
		}
		return mb;

	}
	// 檢查使用者在登入時輸入的帳號與密碼是否正確。如果正確，傳回該帳號所對應的MemberBean物件，
	// 否則傳回 null。
	@Override
	public MemberBean checkIdPassword(String userId, String password) {
		MemberBean mb = null;
		String hql = "FROM MemberBean m WHERE m.memberId = :mid and m.password = :pwsd";
		Session session = factory.getCurrentSession();
		try {
			mb = (MemberBean)session.createQuery(hql)
								.setParameter("mid", userId)
								.setParameter("pwsd", password)
								.getSingleResult();
		} catch(NoResultException ex) {
			;
		} catch(NonUniqueResultException ex) {
			;
		} 	
		return mb;
	}

	
	@Override
	public void setConnection(Connection conn) {
		throw new RuntimeException("本類別為提供此功能");
	}
}
