package com.web.store.dao.impl;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ProductDao;
import com.web.store.model.CartOrderBean;
import com.web.store.model.FoodBean;
import com.web.store.model.FoodBeanWithImageData;
import com.web.store.model.HomeBean;
import com.web.store.model.HomeBeanWithImageData;
import com.web.store.model.MovieBean;
import com.web.store.model.MovieBeanWithImageData;
import com.web.store.model.RoomBean;
import com.web.store.model.RoomBeanWithImageData;

import _00_init.util.GlobalService;
import antlr.StringUtils;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	ServletContext ctx;
	
	String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Imovie";
    String userid = "sa";
    String passwd = "sa123456";
	
    private static final String SELECT_all_foodTypes = "Select Distinct b.foodType , b.foodTypeId From Food b";
    private static final String SELECT_foods = "Select * From Food where foodTypeId=?";
    private static final String SELECT_all_movieTypes = "Select Distinct m.movieGenre1 , m.movieTypeId From Movie m";
    private static final String SELECT_movies = "Select * From Movie where movieTypeId=?";
    private static final String SELECT_all_roomTypes = "Select Distinct r.roomName , r.roomNameId From Room r";
    private static final String SELECT_rooms = "Select * From Room where roomNameId=?";
    
	Integer foodId;
	Integer movieId;
	Integer roomId;
	Integer recordsPerPage = GlobalService.RECORDS_PER_PAGE;
	public Integer getFoodId() {
		return foodId;
	}

	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public void setFoodId(Integer foodId) {
		this.foodId = foodId;
	}
	
	public Integer getMovieId() {
		return movieId;
	}

	public void setMovieId(Integer movieId) {
		this.movieId = movieId;
	}
	//首頁 顯示
	@Override
	public List<HomeBeanWithImageData> getAllHomesWithImageData() {
		List<HomeBean> listSource = getAllHomesJson();
		List<HomeBeanWithImageData> listTarget = new ArrayList<>();
		for(HomeBean bean : listSource) {
			listTarget.add(addImageData(bean));
		}
		return listTarget;
	}
	
	private HomeBeanWithImageData addImageData(HomeBean bean) {
		HomeBeanWithImageData bbwid = null;
		try {
			StringBuffer sb = new StringBuffer();
			String fileName = bean.getHomeFileName();
			String mimeType = ctx.getMimeType(fileName);
			Blob blob = bean.getHomeImg();
			byte[] bytes = blob.getBytes(1, (int) blob.length());
			String prefix = "data:" + mimeType + ";base64,";
			sb.append(prefix);
			Base64.Encoder be = Base64.getEncoder();
			String str = new String(be.encode(bytes));
			sb.append(str);
			String iamgeData = sb.toString();
			bbwid = new HomeBeanWithImageData(bean, iamgeData);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return bbwid;		
	}

	private List<HomeBean> getAllHomesJson() {
		String hql = "FROM HomeBean";
		Session session = factory.getCurrentSession();
		List<HomeBean> list = session.createQuery(hql).getResultList();
		return list;
	}

	//Food的方法
	@Override
	@SuppressWarnings("unchecked")
	public List<FoodBean> getAllProducts() {
		String hql ="From FoodBean";
		Session session = factory.getCurrentSession();
		List<FoodBean> beans = session.createQuery(hql)
										.getResultList();
		return beans;
	}


	//取得類型
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories() { 
		String hql="Select Distinct foodType,foodTypeId From FoodBean ";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<FoodBean> getFoodByCategory(String category) {
		String hql="From FoodBean bb ";
		Session session = factory.getCurrentSession();		
		if(!"foodall".equals(category)) {
			hql+="Where bb.foodType = :category";
			return session.createQuery(hql)
					   .setParameter("category",category)
					   .getResultList();
		}else {
			return session.createQuery(hql).getResultList();
		}
		
	}


	@Override
	public FoodBean getProductById(int productId) {
		Session session = factory.getCurrentSession();
		return session.get(FoodBean.class,productId);
	}
	
	public FoodBeanWithImageData addImageData(FoodBean bean) {
		FoodBeanWithImageData bbwid = null;
		try {
			StringBuffer sb = new StringBuffer();
			String fileName = bean.getFoodFileName();
			String mimeType = ctx.getMimeType(fileName);
			Blob blob = bean.getFoodImg();
			byte[] bytes = blob.getBytes(1, (int) blob.length());
			String prefix = "data:" + mimeType + ";base64,";
			sb.append(prefix);
			Base64.Encoder be = Base64.getEncoder();
			String str = new String(be.encode(bytes));
			sb.append(str);
			String iamgeData = sb.toString();
			bbwid = new FoodBeanWithImageData(bean, iamgeData);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return bbwid;		
	}
	@Override
	public List<FoodBeanWithImageData> getAllFoodsWithImageData() {
		List<FoodBean> listSource = getAllFoodsJson();
		List<FoodBeanWithImageData> listTarget = new ArrayList<>();
		for(FoodBean bean : listSource) {
			listTarget.add(addImageData(bean));
		}
		return listTarget;
	}

	@SuppressWarnings("unchecked")
	public List<FoodBean> getAllFoodsJson()  {
		String hql = "FROM FoodBean";
		Session session = factory.getCurrentSession();
		List<FoodBean> list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//movie 的方法
	@SuppressWarnings("unchecked")
	@Override
	public List<MovieBean> getAllProducts1() {
		String hql ="From MovieBean";
		Session session = factory.getCurrentSession();
		List<MovieBean> beans = session.createQuery(hql)
										.getResultList();
		return beans;
	}
	//取得類型
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories1() {
		String hql="Select Distinct movieGenre1,movieTypeId From MovieBean ";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<MovieBean> getProductsByCategory1(String category) {
		String hql="From MovieBean mm ";
		Session session = factory.getCurrentSession();
		if(!"movieall".equals(category)) {
			hql+="Where mm.movieGenre1 = :category";
			return session.createQuery(hql)
					   .setParameter("category",category)
					   .getResultList();
		}else {
			return session.createQuery(hql).getResultList();
		}
		
	}

	@Override
	public MovieBean getProductById1(int productId) {
		Session session = factory.getCurrentSession();
		return session.get(MovieBean.class,productId);
	}
	
	public MovieBeanWithImageData addImageData(MovieBean bean) {
		MovieBeanWithImageData bbwid = null;
		try {
			StringBuffer sb = new StringBuffer();
			String fileName = bean.getMovieFileName();
			String mimeType = ctx.getMimeType(fileName);
			Blob blob = bean.getMovieImg();
			byte[] bytes = blob.getBytes(1, (int) blob.length());
			String prefix = "data:" + mimeType + ";base64,";
			sb.append(prefix);
			Base64.Encoder be = Base64.getEncoder();
			String str = new String(be.encode(bytes));
			sb.append(str);
			String iamgeData = sb.toString();
			bbwid = new MovieBeanWithImageData(bean, iamgeData);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return bbwid;		
	}
	@Override
	public List<MovieBeanWithImageData> getAllMoviesWithImageData() {
		List<MovieBean> listSource = getAllMoviesJson();
		List<MovieBeanWithImageData> listTarget = new ArrayList<>();
		for(MovieBean bean : listSource) {
			listTarget.add(addImageData(bean));
		}
		return listTarget;
	}
	@SuppressWarnings("unchecked")
	public List<MovieBean> getAllMoviesJson()  {
		String hql = "FROM MovieBean";
		Session session = factory.getCurrentSession();
		List<MovieBean> list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//room方法
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories2() {
		String hql="Select Distinct r.roomSize From RoomBean r";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql).getResultList();
	}
	//取得類型
	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> getAllProducts2() {
		String hql ="From RoomBean";
		Session session = factory.getCurrentSession();
		List<RoomBean> beans = session.createQuery(hql)
										.getResultList();
		return beans;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> getProductsByCategory2(String category) {
		String hql="From RoomBean rr ";
		Session session = factory.getCurrentSession();		
		if(!"roomall".equals(category)) {
			hql+="Where rr.roomSize = :category";
			return session.createQuery(hql)
					   .setParameter("category",category)
					   .getResultList();
		}else {
			return session.createQuery(hql).getResultList();
		}
	}
	@Override
	public RoomBean getProductById2(int productId) {
		Session session = factory.getCurrentSession();
		return session.get(RoomBean.class,productId);
	}
	
	public RoomBeanWithImageData addImageData(RoomBean bean) {
		RoomBeanWithImageData bbwid = null;
		try {
			StringBuffer sb = new StringBuffer();
			String fileName = bean.getRoomFileName();
			String mimeType = ctx.getMimeType(fileName);
			Blob blob = bean.getRoomImg();
			byte[] bytes = blob.getBytes(1, (int) blob.length());
			String prefix = "data:" + mimeType + ";base64,";
			sb.append(prefix);
			Base64.Encoder be = Base64.getEncoder();
			String str = new String(be.encode(bytes));
			sb.append(str);
			String iamgeData = sb.toString();
			bbwid = new RoomBeanWithImageData(bean, iamgeData);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return bbwid;		
	}
	
	@Override
	public List<RoomBeanWithImageData> getAllRoomsWithImageData() {
		List<RoomBean> listSource = getAllRoomsJson();
		List<RoomBeanWithImageData> listTarget = new ArrayList<>();
		for(RoomBean bean : listSource) {
			listTarget.add(addImageData(bean));
		}
		return listTarget;
	}

	@SuppressWarnings("unchecked")
	public List<RoomBean> getAllRoomsJson()  {
		String hql = "FROM RoomBean";
		Session session = factory.getCurrentSession();
		List<RoomBean> list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//Movie Json 分類顯示
	@SuppressWarnings("unchecked")
	@Override
	public List<MovieBean> getPageMovies(Integer pageNo) {
		int startRecordNo = 0;
        startRecordNo = (pageNo - 1) * recordsPerPage;
        List<MovieBean> list = new ArrayList<MovieBean>();
        String hql = "FROM MovieBean";
        Session session = factory.getCurrentSession();
		list = session.createQuery(hql)
                      .setFirstResult(startRecordNo)
                      .setMaxResults(recordsPerPage)
                      .getResultList();        						
		return list;
	}
	
	//Foood Json 分類顯示
		@SuppressWarnings("unchecked")
		@Override
		public List<FoodBean> getPageFoods(Integer pageNo) {
			int startRecordNo = 0;
	        startRecordNo = (pageNo - 1) * recordsPerPage;
	        List<FoodBean> list = new ArrayList<FoodBean>();
	        String hql = "FROM FoodBean";
	        Session session = factory.getCurrentSession();
			list = session.createQuery(hql)
	                      .setFirstResult(startRecordNo)
	                      .setMaxResults(recordsPerPage)
	                      .getResultList();        						
			return list;
		}
		
		//Foood Json 分類顯示
		@SuppressWarnings("unchecked")
		@Override
		public List<FoodBean> getFoodType() {
			String hql="Select Distinct b.foodType From FoodBean b";
			Session session = factory.getCurrentSession();
			return session.createQuery(hql).getResultList();
		}
		
		public List<FoodBean> getSelectfoodTypes(){
			Connection con = null;
			PreparedStatement ps = null;
			List<FoodBean> list = new LinkedList<FoodBean>();
			
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, userid, passwd);
				ps = con.prepareStatement(SELECT_all_foodTypes);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					FoodBean foodBean = new FoodBean();
					foodBean = new FoodBean();
					foodBean.setFoodTypeId(rs.getInt("foodTypeId"));
					foodBean.setFoodType(rs.getString("foodType"));
					list.add(foodBean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		//Foood Json 分類顯示
		@Override
		public List<FoodBean> getSelectfoods(Integer foodTypeId) {
			Connection con = null;
			PreparedStatement ps = null;
			List<FoodBean> list = new LinkedList<FoodBean>();
			
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, userid, passwd);
				ps = con.prepareStatement(SELECT_foods);
				ps.setInt(1, foodTypeId);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					FoodBean foodBean = new FoodBean();
					foodBean = new FoodBean();
					//圖片轉檔
					StringBuffer sb = new StringBuffer();
					String fileName = rs.getString("foodFileName");
					String mimeType = ctx.getMimeType(fileName);
					Blob blob = rs.getBlob("foodImg");
					byte[] bytes = blob.getBytes(1, (int) blob.length());
					String prefix = "data:" + mimeType + ";base64,";
					sb.append(prefix);
					Base64.Encoder be = Base64.getEncoder();
					String str = new String(be.encode(bytes));
					sb.append(str);
					String iamgeData = sb.toString();				
					foodBean.setFoodTypeId(rs.getInt("foodTypeId"));
					foodBean.setFoodType(rs.getString("foodType"));
					foodBean.setFoodName(rs.getString("foodName"));
					foodBean.setFoodPrice(rs.getInt("foodPrice"));
					foodBean.setFoodImg(rs.getBlob("foodImg"));
					foodBean.setFoodFileName(iamgeData);
					list.add(foodBean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
	
	//Movie Json 分類顯示
	@SuppressWarnings("unchecked")
	@Override
	public List<MovieBean> getMovieType() {
		String hql="Select Distinct m.movieGenre1 From MovieBean m";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql).getResultList();
	}
	
	public List<MovieBean> getSelectmovieTypes(){
		Connection con = null;
		PreparedStatement ps = null;
		List<MovieBean> list = new LinkedList<MovieBean>();
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			ps = con.prepareStatement(SELECT_all_movieTypes);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				MovieBean movieBean = new MovieBean();
				movieBean = new MovieBean();
				movieBean.setMovieTypeId(rs.getInt("movieTypeId"));
				movieBean.setMovieGenre1(rs.getString("movieGenre1"));
				list.add(movieBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	//Movie Json 分類顯示
	@Override
	public List<MovieBean> getSelectmovies(Integer movieTypeId) {
		Connection con = null;
		PreparedStatement ps = null;
		List<MovieBean> list = new LinkedList<MovieBean>();
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			ps = con.prepareStatement(SELECT_movies);
			ps.setInt(1, movieTypeId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				MovieBean movieBean = new MovieBean();
				//圖片轉檔
				StringBuffer sb = new StringBuffer();
				String fileName = rs.getString("movieFileName");
				String mimeType = ctx.getMimeType(fileName);
				Blob blob = rs.getBlob("movieImg");
				byte[] bytes = blob.getBytes(1, (int) blob.length());
				String prefix = "data:" + mimeType + ";base64,";
				sb.append(prefix);
				Base64.Encoder be = Base64.getEncoder();
				String str = new String(be.encode(bytes));
				sb.append(str);
				String iamgeData = sb.toString();
				movieBean.setMovieId(rs.getInt("movieId"));
				movieBean.setMovieGenre1(rs.getString("movieGenre1"));
				movieBean.setMovieEName(rs.getString("movieEName"));
				movieBean.setMovieName(rs.getString("movieName"));
				movieBean.setMovieLength(rs.getString("movieLength"));
				movieBean.setMovieNote(rs.getString("movieNote"));
				movieBean.setMovieRated(rs.getString("movieRated"));
				movieBean.setMovieTypeId(rs.getInt("movieTypeId"));
				movieBean.setMovieImg(rs.getBlob("movieImg"));

				movieBean.setMovieFileName(iamgeData);
				list.add(movieBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//Room Json 分類顯示
	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> getPageRooms(Integer pageNo) {
		int startRecordNo = 0;
        startRecordNo = (pageNo - 1) * recordsPerPage;
        List<RoomBean> list = new ArrayList<RoomBean>();
        String hql = "FROM RoomBean";
        Session session = factory.getCurrentSession();
		list = session.createQuery(hql)
                      .setFirstResult(startRecordNo)
                      .setMaxResults(recordsPerPage)
                      .getResultList();        						
		return list;
	}
	
	//Room Json 分類顯示
	@SuppressWarnings("unchecked")
	@Override
	public List<RoomBean> getRoomType() {
		String hql="Select Distinct r.roomName From RoomBean r";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql).getResultList();
	}
	
	public List<RoomBean> getSelectroomTypes(){
		Connection con = null;
		PreparedStatement ps = null;
		List<RoomBean> list = new LinkedList<RoomBean>();
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			ps = con.prepareStatement(SELECT_all_roomTypes);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				RoomBean roomBean = new RoomBean();
				roomBean.setRoomNameId(rs.getInt("roomNameId"));
				roomBean.setRoomName(rs.getString("roomName"));
				list.add(roomBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	//Room Json 分類顯示
	@Override
	public List<RoomBean> getSelectrooms(Integer roomNameId) {
		Connection con = null;
		PreparedStatement ps = null;
		List<RoomBean> list = new LinkedList<RoomBean>();
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			ps = con.prepareStatement(SELECT_rooms);
			ps.setInt(1, roomNameId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				RoomBean roomBean = new RoomBean();
				roomBean = new RoomBean();
				//圖片轉檔
				StringBuffer sb = new StringBuffer();
				String fileName = rs.getString("roomFileName");
				String mimeType = ctx.getMimeType(fileName);
				Blob blob = rs.getBlob("roomImg");
				byte[] bytes = blob.getBytes(1, (int) blob.length());
				String prefix = "data:" + mimeType + ";base64,";
				sb.append(prefix);
				Base64.Encoder be = Base64.getEncoder();
				String str = new String(be.encode(bytes));
				sb.append(str);
				String iamgeData = sb.toString();				
				roomBean.setRoomNameId(rs.getInt("roomNameId"));
				roomBean.setRoomName(rs.getString("roomName"));
				roomBean.setRoomSize(rs.getString("roomSize"));
				roomBean.setRoomPrice(rs.getString("roomPrice"));
				roomBean.setRoomImg(rs.getBlob("roomImg"));
				roomBean.setRoomFileName(iamgeData);
				list.add(roomBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

	
	
	@Override
	public void cartToDB(CartOrderBean cob) {
		Session session = factory.getCurrentSession();
        session.save(cob);
	}
	


	@SuppressWarnings("unchecked")
	@Override
	public Boolean checkOrderTime(int orderRoomId, String checkDay, String checkStart, String checkEnd) throws ParseException{
		Session session = factory.getCurrentSession();
		String hqlStr ="FROM CartOrderBean cob WHERE cob.roomId = :rId and cob.orderDate = :rDate";

		List<CartOrderBean> listbean = session.createQuery(hqlStr).setParameter("rId", orderRoomId).setParameter("rDate", checkDay).getResultList();
		System.out.println("********listDate = "+listbean.size());
		
//		String[] forStart
		int testDB = 0;
		if(listbean.size() == 0) {
			return true;  //代表此房型在該天無任何訂單
		}
		
		for(CartOrderBean cob : listbean) {
			
			if(compareTime(checkStart,checkEnd,cob.getOrderDateStart(),cob.getOrderDateEnd())) {
				;
			}else {
				testDB++;
			}
		}
		if(testDB == 0) {
			return true;
		}else {
			return false;
		}
			
		
	}
	public static boolean compareTime(String myStart,String myEnd,String dbStart,String dbEnd) throws ParseException {
		
		String[] mysList = myStart.split(":");
		int mys = Integer.parseInt(mysList[0])*60+Integer.parseInt(mysList[1]);
		
		String[] myeList = myEnd.split(":");
		int mye = Integer.parseInt(myeList[0])*60+Integer.parseInt(myeList[1]);
		
		String[] dbsList = dbStart.split(":");
		int dbs = Integer.parseInt(dbsList[0])*60+Integer.parseInt(dbsList[1]);
		
		String[] dbeList = dbEnd.split(":");
		int dbe = Integer.parseInt(dbeList[0])*60+Integer.parseInt(dbeList[1]);
	
		if(mye-dbs<0) {
			System.out.println("***完全在前面哦 = "+(mye-dbs));
			return true;
		}else if(mys-dbe>0) {
			System.out.println("***完全在後面哦 = "+(mys-dbe));
			return true;
		}else {
			return false;
		}
	
	}



}
