package com.web.store.dao;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.web.store.model.CartOrderBean;
import com.web.store.model.FoodBean;
import com.web.store.model.FoodBeanWithImageData;
import com.web.store.model.Food_Genre;
import com.web.store.model.HomeBeanWithImageData;
import com.web.store.model.MovieBean;
import com.web.store.model.MovieBeanWithImageData;
import com.web.store.model.Movie_Genre;
import com.web.store.model.RoomBean;
import com.web.store.model.RoomBeanWithImageData;

public interface ProductDao {
	List<String> getAllCategories();
	//List<Map<String, String>> getAllCategories();
	List<FoodBean> getAllProducts();
	List<FoodBean> getFoodByCategory(String category);
	FoodBean getProductById(int productId);	
	List<FoodBean> getFoodType();
	

	List<String> getAllCategories1();
	List<MovieBean> getAllProducts1();	
	List<MovieBean> getProductsByCategory1(String category);	
	MovieBean getProductById1(int productId);
	
	List<String> getAllCategories2();
	List<RoomBean> getAllProducts2();	
	List<RoomBean> getProductsByCategory2(String category);	
	RoomBean getProductById2(int productId);
	
	List<FoodBeanWithImageData> getAllFoodsWithImageData();
	List<MovieBeanWithImageData> getAllMoviesWithImageData();
	List<RoomBeanWithImageData> getAllRoomsWithImageData();

	List<FoodBean> getPageFoods(Integer pageNo);
	List<FoodBean> getSelectfoodTypes();
	List<FoodBean> getSelectfoods(Integer foodTypeId);
	
	List<MovieBean> getPageMovies(Integer pageNo);
	List<MovieBean> getSelectmovies(Integer movieGenre1);
	List<MovieBean> getMovieType();
	List<MovieBean> getSelectmovieTypes();
	
	List<RoomBean> getSelectrooms(Integer roomNameId);
	List<RoomBean> getRoomType();
	List<RoomBean> getPageRooms(Integer pageNo);
	List<RoomBean> getSelectroomTypes();
	//新加的---------
	void cartToDB(CartOrderBean cob);
	Boolean checkOrderTime(int orderRoomId,String checkDay,String checkStart,String checkEnd)throws ParseException;
	List<HomeBeanWithImageData> getAllHomesWithImageData();
	
	//---------------
	Boolean checkOrderNo(String checkNum);
	List<Movie_Genre> getAllMovieType ();
	List<MovieBean> getMovieByString(String movieType);
	
	ArrayList<Integer> getBookedList();
	double getRate(int roomId);
	
	List<Food_Genre> getAllFoodType ();
	List<FoodBean> getFoodByString(String foodType);
	
	List<String> getAllRoom ();
	List<RoomBean> getRoomByString(String roomType);
}
