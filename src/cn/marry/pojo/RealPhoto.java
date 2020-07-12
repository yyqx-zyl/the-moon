package cn.marry.pojo;



import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class RealPhoto {

	private String rid;
	private String realimg;
	private String realname;
	private String realdesc;
	private Date time;
	private int modifyBy;
}
