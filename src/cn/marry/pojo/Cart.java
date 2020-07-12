package cn.marry.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Cart {
	private int cid;
	private String productid;
	private int uid;
	private String pname;
	private Double pprice;
	private int pcount;
	private Double ptotalprice;
	private String pimage;
}
