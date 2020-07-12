package cn.marry.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.marry.pojo.Promarry;
import cn.marry.pojo.RealPhoto;
@Repository
public interface RealPhotoMapper {

	@Select("select * from real_photo")
	List<RealPhoto> getrealthotolist();
	
	
	@Delete("delete from real_photo  where rid = #{rid}")
    int deleteByPrimaryKey(@Param("rid") String rid);
														
    @Insert("insert into real_photo (rid,realimg, realname,  realdesc)" + 
    		"values (#{rid},#{realimg}, #{realname}, #{realdesc})")
    int insert(RealPhoto record);                     

    @Select("select rid, realimg, realname,  realdesc from real_photo  where rid = #{rid}")
    RealPhoto selectByPrimaryKey(@Param("rid") String rid);


    int updateByPrimaryKey(RealPhoto record);
}
