package web.room.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.RoomBean;

import web.room.dao.RoomDao;


@Repository
public class RoomDaoImpl implements RoomDao{

	@Autowired
	SessionFactory factory;
	
	@Override
	public int saveRoom(RoomBean room) {
		int n=0;
		Session session = factory.getCurrentSession();
		session.save(room);
		n++;
		return n;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Integer, RoomBean> getRoom() {
		Map<Integer, RoomBean> map = new LinkedHashMap<>();
		String hql = "FROM RoomBean ORDER BY roomDate DESC";
		Session session = factory.getCurrentSession();
		List<RoomBean> list = session.createQuery(hql).getResultList();
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		for (RoomBean room : list) {
			if (room.getRoomDate() != null) {
				date = room.getRoomDate();
				String roomDateString = sdFormat.format(date);
				room.setRoomDateString(roomDateString);
			}
			map.put(room.getRoomId(), room);
		}
		return map;
	}

	@Override
	public RoomBean getRoomImg(int Id) {
		RoomBean bean = null;
		Session session = factory.getCurrentSession();
		bean = session.get(RoomBean.class,Id);
		return bean;
	}

	@Override
	public int RoomDelete(Integer roomId) {
		int n = 0;
        Session session = factory.getCurrentSession();
        RoomBean roomBean = new RoomBean();
        roomBean.setRoomId(roomId);
        session.delete(roomBean);
        n++;
        return n;
	}

	@Override
	public int RoomUpdata(RoomBean newRoomBean, long sizeInBytes) {
		int n = 0;
		if (sizeInBytes == -1) { // 不修改圖片
            n = updateBook(newRoomBean);
            return n;
        }
        Session session = factory.getCurrentSession();
        session.saveOrUpdate(newRoomBean);
        n++;

		return n;
	}

	private int updateBook(RoomBean newRoomBean) {
		int n = 0;
        RoomBean room = null;
        Session session = factory.getCurrentSession();
        room = session.get(RoomBean.class, newRoomBean.getRoomId());
        newRoomBean.setRoomPrice(room.getRoomPrice());
        newRoomBean.setRoomImg(room.getRoomImg());
        newRoomBean.setRoomFileName(room.getRoomFileName());
        session.evict(room);
        session.saveOrUpdate(newRoomBean);
        n++;
        return n;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> AddRoomAjax(RoomBean roomBean) {
		Session session = factory.getCurrentSession();
		session.save(roomBean);
		String hql = "From RoomBean Where roomDate IN (Select MAX(roomDate) From RoomBean)";
		List<RoomBean> list = session.createQuery(hql).getResultList();
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		for (RoomBean roomlist : list) {
			if (roomlist.getRoomDate() != null) {
				date = roomlist.getRoomDate();
				String roomDate = sdFormat.format(date);
				roomBean.setRoomDateString(roomDate);
			}
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> getUpRoom(Integer roomId) {
		String hql = "From RoomBean WHERE roomId = :roomId";
		Session session = factory.getCurrentSession();
		List<RoomBean> list = session.createQuery(hql).setParameter("roomId", roomId).getResultList();
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		for (RoomBean roomBean : list) {
			if (roomBean.getRoomDate() != null) {
				date = roomBean.getRoomDate();
				String roomDate = sdFormat.format(date);
				roomBean.setRoomDateString(roomDate);
			}
		}
		return list;
	}
	
}
