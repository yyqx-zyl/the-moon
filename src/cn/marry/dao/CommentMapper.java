package cn.marry.dao;

import cn.marry.pojo.AnComment;
import cn.marry.pojo.Comment;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface CommentMapper {
    int deleteByPrimaryKey(@Param("cid") int cid);

    int insert(Comment record);

    Comment selectByPrimaryKey(@Param("cid") int cid);

    List<Comment> selectAll(@Param("bid") int bid);

    int updateByPrimaryKey(Comment record);
    
    //回复评论的方法
    List<AnComment> selectAnComment(@Param("ruid") int ruid);
    int insertAncomment(AnComment record);
}