package cn.marry.pojo;
import java.util.Date;
/**
 * 风格表
 * @author Zylyyqx
 * 2020年7月2日
 */
import lombok.Data;

@Data
public class Designer {
	private String desid;
	private String title;//标题
	private String src;//展示图片
	private String caid;//风格
	private Date creationDate ;//发布时间
}
