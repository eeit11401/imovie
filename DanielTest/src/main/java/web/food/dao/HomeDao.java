package web.food.dao;

import java.util.Map;

import web.food.model.HomeBean;

public interface HomeDao {

	Map<Integer, HomeBean> getHome();

	void HomeUpdata(HomeBean homeBean, long sizeInBytes);

	void HomeDelete(Integer homeId);

	void saveHome(HomeBean homeBean);

	HomeBean getHomeImg(Integer homeId);
	
}
