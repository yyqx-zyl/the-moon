package cn.marry.service.blog;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.Blog;

public interface BlogService {
	List<Blog> selectall(int caid);
	Blog findByBid(int bid);
	boolean insert(Blog record);
}
