package cn.marry.pojo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Blog {

	private int bid;
	private int uid;
	private String bname;
	private String fimg;
	private Date time;
	private int cateid;
	private String bimg;
	private String bdesc1;
	private String bdesc2;
	private String bdesc3;
	private Category category;
}
