package cn.marry.service.craftsman;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.Craftsman;
import cn.marry.pojo.RealPhoto;

public interface CraftsmanService {
	 List<Craftsman> selectAll();
	 
	 
	 boolean deleteByPrimaryKey(@Param("cId") String cId);
		
	    boolean insert(Craftsman record);                     

	    Craftsman selectByPrimaryKey(@Param("cId") String cId);


	    boolean updateByPrimaryKey(Craftsman record);
	 
	 
	 
	 
}
