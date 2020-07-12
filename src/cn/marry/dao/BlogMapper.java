package cn.marry.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.marry.pojo.Blog;

@Repository
public interface BlogMapper {

	
	List<Blog> selectall(@Param("caid") int caid);
	
	@Select("select * from blog where bid=#{bid}")
	Blog findByBid(@Param("bid") int bid);

	int insert(Blog record);
	
}
