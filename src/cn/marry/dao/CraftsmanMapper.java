package cn.marry.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.marry.pojo.Craftsman;
import cn.marry.pojo.RealPhoto;
@Repository
public interface CraftsmanMapper {

	    @Select("select * from craftsman")
	    List<Craftsman> selectAll();

	    @Delete("delete from craftsman  where cId = #{cId}")
	    int deleteByPrimaryKey(@Param("cId") String cId);
															
	    @Insert("insert into craftsman (cId,cPath, cName,cAge,cSkill,cDescribe)" + 
	    		"values (#{cId},#{cPath}, #{cName}, #{cAge},#{cSkill}, #{cDescribe})")
	    int insert(Craftsman record);                     

	    @Select("select cId, cPath, cName,cAge,cSkill,cDescribe from craftsman  where cId = #{cId}")
	    Craftsman selectByPrimaryKey(@Param("cId") String cId);


	    int updateByPrimaryKey(Craftsman record);
}
