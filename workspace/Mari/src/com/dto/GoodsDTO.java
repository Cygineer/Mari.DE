package com.dto;

public class GoodsDTO {

	
	 String gcode;
	 String gcategory;
	 String gname;
	 String gprice;
	 String gimage;
	 
	public GoodsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsDTO(String gcode, String gcategory, String gname, String gcontent, String gprice, String gimage) {
		super();
		this.gcode = gcode;
		this.gcategory = gcategory;
		this.gname = gname;
		this.gprice = gprice;
		this.gimage = gimage;
	}

	

	@Override
	public String toString() {
		return "GoodsDTO [gcode=" + gcode + ", gcategory=" + gcategory + ", gname=" + gname + ", gprice=" + gprice
				+ ", gimage=" + gimage + "]";
	}

	public String getGcode() {
		return gcode;
	}

	public void setGcode(String gcode) {
		this.gcode = gcode;
	}

	public String getGcategory() {
		return gcategory;
	}

	public void setGcategory(String gcategory) {
		this.gcategory = gcategory;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGprice() {
		return gprice;
	}

	public void setGprice(String gprice) {
		this.gprice = gprice;
	}

	public String getGimage() {
		return gimage;
	}

	public void setGimage(String gimage) {
		this.gimage = gimage;
	}

	
	
	
	
	
	
	
	
	
}
