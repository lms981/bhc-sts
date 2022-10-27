package com.mybhc.vo;

import java.util.ArrayList;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class BhcEventVO {
	
	int rno;
	String eid, etitle, esdate, eedate, efile1, esfile1, efile2, esfile2, edate;
	
	CommonsMultipartFile file1[];
	ArrayList<String> efiles = new ArrayList<String>(); ;
	ArrayList<String> esfiles = new ArrayList<String>(); ;
	
	

	public String getEfile1() {
		return efile1;
	}

	public void setEfile1(String efile1) {
		this.efile1 = efile1;
	}

	public String getEsfile1() {
		return esfile1;
	}

	public void setEsfile1(String esfile1) {
		this.esfile1 = esfile1;
	}

	public String getEfile2() {
		return efile2;
	}

	public void setEfile2(String efile2) {
		this.efile2 = efile2;
	}

	public String getEsfile2() {
		return esfile2;
	}

	public void setEsfile2(String esfile2) {
		this.esfile2 = esfile2;
	}


	public ArrayList<String> getEfiles() {
		return efiles;
	}

	public void setEfiles(ArrayList<String> efiles) {
		this.efiles = efiles;
	}

	public ArrayList<String> getEsfiles() {
		return esfiles;
	}

	public void setEsfiles(ArrayList<String> esfiles) {
		this.esfiles = esfiles;
	}

	public CommonsMultipartFile[] getFile1() {
		return file1;
	}

	public void setFile1(CommonsMultipartFile[] file1) {
		this.file1 = file1;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	
	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getEtitle() {
		return etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String getEsdate() {
		return esdate;
	}

	public void setEsdate(String esdate) {
		this.esdate = esdate;
	}

	public String getEedate() {
		return eedate;
	}

	public void setEedate(String eedate) {
		this.eedate = eedate;
	}


	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	
}
