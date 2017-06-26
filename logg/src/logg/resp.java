package logg;

import java.io.Serializable;

public class resp implements Serializable{
private int id;
private String nmr;
private String pnmr;
private String passr;
private String nutir;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNmr() {
	return nmr;
}
public void setNmr(String nmr) {
	this.nmr = nmr;
}
public String getPnmr() {
	return pnmr;
}
public void setPnmr(String pnmr) {
	this.pnmr = pnmr;
}
public String getPassr() {
	return passr;
}
public void setPassr(String passr) {
	this.passr = passr;
}
public String getNutir() {
	return nutir;
}
public void setNutir(String nutir) {
	this.nutir = nutir;
}
public resp() {
	super();
}
public resp(int id, String nmr, String pnmr, String passr, String nutir) {
	super();
	this.id = id;
	this.nmr = nmr;
	this.pnmr = pnmr;
	this.passr = passr;
	this.nutir = nutir;
}
}
