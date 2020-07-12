package cn.marry.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.marry.pojo.Pro;


@Repository
public interface ProMapper {
	List<Pro> findById(@Param("caid") int caid);
}
