package cn.marry.service.Category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.CategoryMapper;
import cn.marry.pojo.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Category> getcategory() {
		return categoryMapper.getcategory();
	}

}
