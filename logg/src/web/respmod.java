package web;

import java.util.ArrayList;
import java.util.List;

import logg.etu;

public class respmod {
	private String msg;
public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
private List<etu>list=new ArrayList<etu>();
public List<etu> getList() {
	return list;
}
public void setList(List<etu> list) {
	this.list = list;
}
public etu getEt() {
	return et;
}
public void setEt(etu et) {
	this.et = et;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getClls() {
	return clls;
}
public void setClls(String clls) {
	this.clls = clls;
}
private etu et=new etu();
private int id;
private String clls ;

	
	
	
	
	
	
}
