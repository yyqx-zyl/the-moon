package cn.marry.dao;

import cn.marry.pojo.Img;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
@Repository
public interface ImgMapper {
	
    int deleteByPrimaryKey(@Param("pid") String pid);
    
    @Insert(" insert into img (iid, imgid, src) values (#{iid}, #{imgid}, #{src})")
    int insert(Img record);
    
    @Select("select * from img   where imgid = #{pid}")
    List<Img> selectByPrimaryKey(@Param("pid") String pid);
    
    @Select("select iid, imgid, src from img")
    List<Img> selectAll();
    
    @Update("update img set imgid = #{imgid}, src = #{src} where imgid = #{imgid}")
    int updateByPrimaryKey(Img record);
}