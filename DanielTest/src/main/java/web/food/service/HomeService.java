package web.food.service;

import java.util.Map;

import web.food.model.HomeBean;

public interface HomeService {

	Map<Integer, HomeBean> getHome();

	void HomeUpdata(HomeBean homeBean, long sizeInBytes);

	void saveHome(HomeBean homeBean);

	HomeBean getHomeImg(Integer homeId);

	void HomeDelete(Integer homeId);

}
