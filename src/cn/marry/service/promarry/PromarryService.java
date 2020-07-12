package cn.marry.service.promarry;

import java.util.List;

import cn.marry.pojo.Promarry;

public interface PromarryService {
	 boolean deleteByPrimaryKey(String mid);

	 boolean insert(Promarry record);

	    Promarry selectByPrimaryKey(String mid);

	    List<Promarry> selectAll();

	    boolean updateByPrimaryKey(Promarry record);
}
