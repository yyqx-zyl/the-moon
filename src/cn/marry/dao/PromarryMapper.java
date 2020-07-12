package cn.marry.dao;

import cn.marry.pojo.Promarry;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
@Repository
public interface PromarryMapper {
	@Delete("delete from pro_marry  where mid = #{mid}")
    int deleteByPrimaryKey(@Param("mid") String mid);
														
    @Insert("insert into pro_marry (mid, mName, mDesc,  mprice,idPicPath, createdBy, creationDate)" + 
    		"values (#{mid}, #{mname}, #{mdesc},#{mprice},#{idpicpath}, #{createdby},  #{creationdate})")
    int insert(Promarry record);                     

    @Select("select mid, mName, mDesc, mprice, idPicPath, createdBy, creationDate, modifyDate,  modifyBy  from pro_marry where mid = #{mid}")
    Promarry selectByPrimaryKey(@Param("mid") String mid);

    @Select("select mid, mName, mDesc, mprice, idPicPath, createdBy, creationDate, modifyDate, modifyBy  from pro_marry")
    List<Promarry> selectAll();

    int updateByPrimaryKey(Promarry record);
    
    
}