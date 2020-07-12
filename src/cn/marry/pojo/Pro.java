package cn.marry.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Pro {

	private int caid;
	private int categoryid;
	private String pname;
	private String img;
	private Category cate;
}
