package cn.marry.service.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.BlogMapper;
import cn.marry.pojo.Blog;
@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogMapper blogMapper;
	@Override
	public List<Blog> selectall(int caid) {
		return blogMapper.selectall(caid);
	}
	@Override
	public Blog findByBid(int bid) {
		return blogMapper.findByBid(bid);
	}
	@Override
	public boolean insert(Blog record) {
		int result=blogMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
		
	}

}
