package cn.marry.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Craftsman {
	private String cId;
	private String cPath;
	private String cName;
	private int cAge;
	private String cSkill;
	private String cDescribe;
	private int modifyBy;
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcPath() {
		return cPath;
	}
	public void setcPath(String cPath) {
		this.cPath = cPath;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcAge() {
		return cAge;
	}
	public void setcAge(int cAge) {
		this.cAge = cAge;
	}
	public String getcSkill() {
		return cSkill;
	}
	public void setcSkill(String cSkill) {
		this.cSkill = cSkill;
	}
	public String getcDescribe() {
		return cDescribe;
	}
	public void setcDescribe(String cDescribe) {
		this.cDescribe = cDescribe;
	}
	
}