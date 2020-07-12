package cn.marry.service.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.CommentMapper;
import cn.marry.pojo.AnComment;
import cn.marry.pojo.Comment;
@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public boolean deleteByPrimaryKey(Integer cid) {
		int result=commentMapper.deleteByPrimaryKey(cid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean insert(Comment record) {
		int result=commentMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Comment selectByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return commentMapper.selectByPrimaryKey(cid);
	}

	@Override
	public List<Comment> selectAll(int bid) {
		return commentMapper.selectAll(bid);
	}

	@Override
	public boolean updateByPrimaryKey(Comment record) {
		int result=commentMapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<AnComment> selectAnComment(int ruid) {
		// TODO Auto-generated method stub
		return commentMapper.selectAnComment(ruid);
	}

	@Override
	public boolean insertAncomment(AnComment record) {
		int result=commentMapper.insertAncomment(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	

}
