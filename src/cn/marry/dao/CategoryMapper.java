package cn.marry.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.marry.pojo.Category;
@Repository
public interface CategoryMapper {
	@Select("SELECT * FROM `category`")
	List<Category> getcategory();
}
