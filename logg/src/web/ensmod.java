package web;
import logg.ens;
import logg.etu;
import java.util.ArrayList;
import java.util.List;
public class ensmod {
	private String nm;
	private String pnm;
public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getPnm() {
		return pnm;
	}
	public void setPnm(String pnm) {
		this.pnm = pnm;
	}
private ens en;
private String cls;
public ens getEn() {
	return en;
}
public void setEn(ens en) {
	this.en = en;
}
private int id;
private String modd="abs";
public String getModd() {
	return modd;
}
public void setModd(String mod) {
	this.modd = mod;
}
private List<etu> et=new ArrayList<etu>();
public String getCls() {
	return cls;
}
public void setCls(String cls) {
	this.cls = cls;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public List<etu> getEt() {
	return et;
}
public void setEt(List<etu> et) {
	this.et = et;
}
}
