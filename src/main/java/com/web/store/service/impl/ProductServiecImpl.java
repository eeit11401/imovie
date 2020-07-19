package com.web.store.service.impl;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ProductDao;
import com.web.store.model.CartOrderBean;
import com.web.store.model.FoodBean;
import com.web.store.model.FoodBeanWithImageData;
import com.web.store.model.HomeBeanWithImageData;
import com.web.store.model.MovieBean;
import com.web.store.model.MovieBeanWithImageData;
import com.web.store.model.RoomBean;
import com.web.store.model.RoomBeanWithImageData;
import com.web.store.service.ProductServiec;

@Service
public class ProductServiecImpl implements ProductServiec {

	@Autowired
	ProductDao productDao;
	//Food
	@Transactional
	@Override
	public List<FoodBean> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Transactional
	@Override
	public List<String> getAllCategories() {  
	
		return productDao.getAllCategories();
		
	}
	@Transactional
	@Override
	public List<FoodBean> getFoodByCategory(String category) {
		return productDao.getFoodByCategory(category);
	}
	@Transactional
	@Override
	public FoodBean getProductById(int productId) {
		return productDao.getProductById(productId);
	}
	//movie方法
	@Transactional
	@Override
	public List<MovieBean> getAllProducts1() {
		return productDao.getAllProducts1();
	}
	@Transactional
	@Override
	public List<String> getAllCategories1() {
		return productDao.getAllCategories1();
	}
	@Transactional
	@Override
	public List<MovieBean> getProductsByCategory1(String category) {
		return productDao.getProductsByCategory1(category);
	}
	@Transactional
	@Override
	public MovieBean getProductById1(int productId) {
		return productDao.getProductById1(productId);
	}
	//Room
	@Transactional
	@Override
	public List<RoomBean> getAllProducts2() {
		return productDao.getAllProducts2();
	}
	@Transactional
	@Override
	public List<String> getAllCategories2() {
		return productDao.getAllCategories2();
	}
	@Transactional
	@Override
	public List<RoomBean> getProductsByCategory2(String category) {
		return productDao.getProductsByCategory2(category);
	}
	@Transactional
	@Override
	public RoomBean getProductById2(int productId) {
		return productDao.getProductById2(productId);
	}

	@Transactional
	@Override
	public List<FoodBeanWithImageData> getAllFoodsWithImageData() {
		return productDao.getAllFoodsWithImageData();
	}
	@Transactional
	@Override
	public List<MovieBeanWithImageData> getAllMoviesWithImageData() {
		return productDao.getAllMoviesWithImageData();
	}
	@Transactional
	@Override
	public List<RoomBeanWithImageData> getAllRoomsWithImageData() {
		return productDao.getAllRoomsWithImageData();
	}
	@Transactional
	@Override
	public List<FoodBean> getFoodType() {
		
		return productDao.getFoodType();
	}
	@Transactional
	@Override
	public List<FoodBean> getSelectfoodTypes() {
		
		return productDao.getSelectfoodTypes();
	}
	@Transactional
	@Override
	public List<FoodBean> getSelectfoods(Integer foodTypeId) {
		return productDao.getSelectfoods(foodTypeId);
	}
	@Transactional
	@Override
	public List<MovieBean> getSelectmovies(Integer movieTypeId) {
		return productDao.getSelectmovies(movieTypeId);
	}
	@Transactional
	@Override
	public List<MovieBean> getSelectmovieTypes() {
		
		return productDao.getSelectmovieTypes();
	}
	@Transactional
	@Override
	public List<RoomBean> getSelectrooms(Integer roomNameId) {
		
		return productDao.getSelectrooms(roomNameId);
	}
	@Transactional
	@Override
	public List<RoomBean> getSelectroomTypes() {
		
		return productDao.getSelectroomTypes();
	}

	@Transactional
	@Override
	public void cartToDB(CartOrderBean cob) {
		productDao.cartToDB(cob);	
	}
	
	@Transactional
	@Override
	public boolean checkOrderTime(int orderRoomId, String checkDay, String checkStart, String checkEnd)
			throws ParseException {
		
		return productDao.checkOrderTime(orderRoomId,checkDay,checkStart,checkEnd);
	}
	@Transactional
	@Override
	public List<HomeBeanWithImageData> getAllHomesWithImageData() {
		return productDao.getAllHomesWithImageData();
	}

}
