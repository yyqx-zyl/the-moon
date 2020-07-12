package cn.marry.service.realphoto;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.RealPhoto;

public interface RealPhotoService {
	List<RealPhoto> getrealthotolist();
	
    boolean deleteByPrimaryKey(@Param("rid") String rid);
														
    boolean insert(RealPhoto record);                     

    RealPhoto selectByPrimaryKey(@Param("rid") String rid);


    boolean updateByPrimaryKey(RealPhoto record);
}
