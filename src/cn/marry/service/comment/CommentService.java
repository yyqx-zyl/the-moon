package cn.marry.service.comment;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.AnComment;
import cn.marry.pojo.Comment;

public interface CommentService {
	 boolean deleteByPrimaryKey(Integer cid);

	 boolean insert(Comment record);

	    Comment selectByPrimaryKey(Integer cid);

	    List<Comment> selectAll(int bid);

	    boolean updateByPrimaryKey(Comment record);
	    //回复评论的方法
	    List<AnComment> selectAnComment(int ruid);
	    boolean insertAncomment(AnComment record);
}
