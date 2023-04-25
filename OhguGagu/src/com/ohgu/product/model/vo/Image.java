package com.ohgu.product.model.vo;

public class Image {

	private int imgNo; 			
	private String fileName; 	
	private String thumbnail; 	
	private int productNo; 	
	
	public Image() {}

	public Image(int imgNo, String fileName, String thumbnail, int productNo) {
		super();
		this.imgNo = imgNo;
		this.fileName = fileName;
		this.thumbnail = thumbnail;
		this.productNo = productNo;
	}
	
	public Image(String fileName) {
		this.fileName = fileName;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	@Override
	public String toString() {
		return "Image [imgNo=" + imgNo + ", fileName=" + fileName + ", thumbnail=" + thumbnail + ", productNo="
				+ productNo + "]";
	}
	
	
}
