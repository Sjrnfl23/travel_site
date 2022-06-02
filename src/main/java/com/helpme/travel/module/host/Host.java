package com.helpme.travel.module.host;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Host {

	// coupon
	private Integer tvcpSeq;

	private String tvcpName;
	private String tvcpNumber;
	private String tvcpPrice;
	private String tvcpStartDate;
	private String tvcpEndDate;
	private String tvcpAdminNy;
	private String tvcpDelNy;
	private String tvcpDesc;
	private Integer tvamSeq;

	// lodging
	private String tvamTelNumber;
	private String tvamLodgingName;
	private String tvamHostName;
	private String tvamDelNy;
	private String tvamDesc;
	private String tvamAddress1;
	private String tvamAddress2;
	private String tvamAddressFull;
	private String tvamState;
	private String tvamCity;
	private String tvamLat;
	private String tvamLng;
	private String tvamChildPrice;
	private String tvamAdultPrice;
	private String tvamMaxPersonCount;
	private String tvamBedCount;
	private String tvamShowerRoomCount;
	private String tvamApproveNy;
	private String tvamCategoryCd;
	private String tvamPoolNy;
	private String tvamJacuzziNy;
	private String tvamBbbqGrillNy;
	private String tvamFirePlaceNy;
	private String tvamGymNy;
	private String tvamWifiNy;
	private String tvamTvNy;
	private String tvamParkingRoomNy;
	private String tvamAirConditionerNy;
	private String tvamHeaterNy;
	private String tvamFridgeNy;
	private String tvamMicrowaveNy;
	private String tvamCheckInTime;
	private String tvamCheckOutTime;
	private String tvamSmokeNy;
	private String tvamCookingNy;
	private Integer tvmmSeq;
	private String tvamCategory;
	private String tvamRoomCount;
	// common
	private String regDateTime;
	
	
	//member
	private String tvmmEmailAccount;
	private String tvmmPassword;
	private String tvmmName;
	private Integer tvmmHostNy;
	private String tvmmTelNumber;
	private String tvmmDob;
	private String tvmmDesc;
	private String tvmmAddressFull;
	private String tvmmAddress1;
	private String tvmmAddress2;
	
	//reservation
	private String tvpmAdNumber;
	private String tvpmStartDate;
	private String tvpmEndDate;
	private String tvpmtotalPrice;
	private String tvpmSeq;
	private String tvpmPrice;
	private String tvpmDelNy;
	private String tvpmDesc;
	
	//mainView
	private Integer sales;
	private String reservationCount;
	
	//search
	private String shOption;
	private String shValue;
	
	// image
		private String seq;
		private Integer type;
		private Integer defaultNy;
		private Integer sort;
		private String originalName;
		private String uuidName;
		private String fileName;
		private String ext;
		private Long size;
		private Integer delNy;
		private Integer pseq;
		private String tableName;
		
		
		// image date 
		private String year;
		private String month;
		private String day;
		
		private String originalFileName;
		private String uuidFileName;
		private MultipartFile[] file0;
	    private MultipartFile[] file1;
	
	
	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public Integer getSales() {
		return sales;
	}

	public void setSales(Integer sales) {
		this.sales = sales;
	}

	public String getReservationCount() {
		return reservationCount;
	}

	public void setReservationCount(String reservationCount) {
		this.reservationCount = reservationCount;
	}

	// coupon
	public Integer getTvcpSeq() {
		return tvcpSeq;
	}

	public void setTvcpSeq(Integer tvcpSeq) {
		this.tvcpSeq = tvcpSeq;
	}

	public String getTvcpName() {
		return tvcpName;
	}

	public void setTvcpName(String tvcpName) {
		this.tvcpName = tvcpName;
	}

	public String getTvcpNumber() {
		return tvcpNumber;
	}

	public void setTvcpNumber(String tvcpNumber) {
		this.tvcpNumber = tvcpNumber;
	}

	public String getTvcpPrice() {
		return tvcpPrice;
	}

	public void setTvcpPrice(String tvcpPrice) {
		this.tvcpPrice = tvcpPrice;
	}

	public String getTvcpStartDate() {
		return tvcpStartDate;
	}

	public void setTvcpStartDate(String tvcpStartDate) {
		this.tvcpStartDate = tvcpStartDate;
	}

	public String getTvcpEndDate() {
		return tvcpEndDate;
	}

	public void setTvcpEndDate(String tvcpEndDate) {
		this.tvcpEndDate = tvcpEndDate;
	}

	public String getTvcpAdminNy() {
		return tvcpAdminNy;
	}

	public void setTvcpAdminNy(String tvcpAdminNy) {
		this.tvcpAdminNy = tvcpAdminNy;
	}

	public String getTvcpDelNy() {
		return tvcpDelNy;
	}

	public void setTvcpDelNy(String tvcpDelNy) {
		this.tvcpDelNy = tvcpDelNy;
	}

	public String getTvcpDesc() {
		return tvcpDesc;
	}

	public void setTvcpDesc(String tvcpDesc) {
		this.tvcpDesc = tvcpDesc;
	}

	// lodging

	public String getTvamTelNumber() {
		return tvamTelNumber;
	}

	public void setTvamTelNumber(String tvamTelNumber) {
		this.tvamTelNumber = tvamTelNumber;
	}

	public String getTvamCategoryCd() {
		return tvamCategoryCd;
	}

	public void setTvamCategoryCd(String tvamCategoryCd) {
		this.tvamCategoryCd = tvamCategoryCd;
	}

	public Integer getTvamSeq() {
		return tvamSeq;
	}

	public void setTvamSeq(Integer tvamSeq) {
		this.tvamSeq = tvamSeq;
	}

	public String getTvamLodgingName() {
		return tvamLodgingName;
	}

	public void setTvamLodgingName(String tvamLodgingName) {
		this.tvamLodgingName = tvamLodgingName;
	}

	public String getTvamHostName() {
		return tvamHostName;
	}

	public void setTvamHostName(String tvamHostName) {
		this.tvamHostName = tvamHostName;
	}

	public String getTvamDelNy() {
		return tvamDelNy;
	}

	public void setTvamDelNy(String tvamDelNy) {
		this.tvamDelNy = tvamDelNy;
	}

	public String getTvamDesc() {
		return tvamDesc;
	}

	public void setTvamDesc(String tvamDesc) {
		this.tvamDesc = tvamDesc;
	}

	public String getTvamAddress1() {
		return tvamAddress1;
	}

	public void setTvamAddress1(String tvamAddress1) {
		this.tvamAddress1 = tvamAddress1;
	}

	public String getTvamAddress2() {
		return tvamAddress2;
	}

	public void setTvamAddress2(String tvamAddress2) {
		this.tvamAddress2 = tvamAddress2;
	}

	public String getTvamAddressFull() {
		return tvamAddressFull;
	}

	public void setTvamAddressFull(String tvamAddressFull) {
		this.tvamAddressFull = tvamAddressFull;
	}

	public String getTvamState() {
		return tvamState;
	}

	public void setTvamState(String tvamState) {
		this.tvamState = tvamState;
	}

	public String getTvamCity() {
		return tvamCity;
	}

	public void setTvamCity(String tvamCity) {
		this.tvamCity = tvamCity;
	}

	public String getTvamLat() {
		return tvamLat;
	}

	public void setTvamLat(String tvamLat) {
		this.tvamLat = tvamLat;
	}

	public String getTvamLng() {
		return tvamLng;
	}

	public void setTvamLng(String tvamLng) {
		this.tvamLng = tvamLng;
	}

	public String getTvamChildPrice() {
		return tvamChildPrice;
	}

	public void setTvamChildPrice(String tvamChildPrice) {
		this.tvamChildPrice = tvamChildPrice;
	}

	public String getTvamAdultPrice() {
		return tvamAdultPrice;
	}

	public void setTvamAdultPrice(String tvamAdultPrice) {
		this.tvamAdultPrice = tvamAdultPrice;
	}

	public String getTvamMaxPersonCount() {
		return tvamMaxPersonCount;
	}

	public void setTvamMaxPersonCount(String tvamMaxPersonCount) {
		this.tvamMaxPersonCount = tvamMaxPersonCount;
	}

	public String getTvamBedCount() {
		return tvamBedCount;
	}

	public void setTvamBedCount(String tvamBedCount) {
		this.tvamBedCount = tvamBedCount;
	}

	public String getTvamShowerRoomCount() {
		return tvamShowerRoomCount;
	}

	public void setTvamShowerRoomCount(String tvamShowerRoomCount) {
		this.tvamShowerRoomCount = tvamShowerRoomCount;
	}

	public String getTvamApproveNy() {
		return tvamApproveNy;
	}

	public void setTvamApproveNy(String tvamApproveNy) {
		this.tvamApproveNy = tvamApproveNy;
	}

	public String getTvamPoolNy() {
		return tvamPoolNy;
	}

	public void setTvamPoolNy(String tvamPoolNy) {
		this.tvamPoolNy = tvamPoolNy;
	}

	public String getTvamJacuzziNy() {
		return tvamJacuzziNy;
	}

	public void setTvamJacuzziNy(String tvamJacuzziNy) {
		this.tvamJacuzziNy = tvamJacuzziNy;
	}

	public String getTvamBbbqGrillNy() {
		return tvamBbbqGrillNy;
	}

	public void setTvamBbbqGrillNy(String tvamBbbqGrillNy) {
		this.tvamBbbqGrillNy = tvamBbbqGrillNy;
	}

	public String getTvamFirePlaceNy() {
		return tvamFirePlaceNy;
	}

	public void setTvamFirePlaceNy(String tvamFirePlaceNy) {
		this.tvamFirePlaceNy = tvamFirePlaceNy;
	}

	public String getTvamGymNy() {
		return tvamGymNy;
	}

	public void setTvamGymNy(String tvamGymNy) {
		this.tvamGymNy = tvamGymNy;
	}

	public String getTvamWifiNy() {
		return tvamWifiNy;
	}

	public void setTvamWifiNy(String tvamWifiNy) {
		this.tvamWifiNy = tvamWifiNy;
	}

	public String getTvamTvNy() {
		return tvamTvNy;
	}

	public void setTvamTvNy(String tvamTvNy) {
		this.tvamTvNy = tvamTvNy;
	}

	public String getTvamParkingRoomNy() {
		return tvamParkingRoomNy;
	}

	public void setTvamParkingRoomNy(String tvamParkingRoomNy) {
		this.tvamParkingRoomNy = tvamParkingRoomNy;
	}

	public String getTvamAirConditionerNy() {
		return tvamAirConditionerNy;
	}

	public void setTvamAirConditionerNy(String tvamAirConditionerNy) {
		this.tvamAirConditionerNy = tvamAirConditionerNy;
	}

	public String getTvamHeaterNy() {
		return tvamHeaterNy;
	}

	public void setTvamHeaterNy(String tvamHeaterNy) {
		this.tvamHeaterNy = tvamHeaterNy;
	}

	public String getTvamFridgeNy() {
		return tvamFridgeNy;
	}

	public void setTvamFridgeNy(String tvamFridgeNy) {
		this.tvamFridgeNy = tvamFridgeNy;
	}

	public String getTvamMicrowaveNy() {
		return tvamMicrowaveNy;
	}

	public void setTvamMicrowaveNy(String tvamMicrowaveNy) {
		this.tvamMicrowaveNy = tvamMicrowaveNy;
	}

	public String getTvamCheckInTime() {
		return tvamCheckInTime;
	}

	public void setTvamCheckInTime(String tvamCheckInTime) {
		this.tvamCheckInTime = tvamCheckInTime;
	}

	public String getTvamCheckOutTime() {
		return tvamCheckOutTime;
	}

	public void setTvamCheckOutTime(String tvamCheckOutTime) {
		this.tvamCheckOutTime = tvamCheckOutTime;
	}

	public String getTvamSmokeNy() {
		return tvamSmokeNy;
	}

	public void setTvamSmokeNy(String tvamSmokeNy) {
		this.tvamSmokeNy = tvamSmokeNy;
	}

	public String getTvamCookingNy() {
		return tvamCookingNy;
	}

	public void setTvamCookingNy(String tvamCookingNy) {
		this.tvamCookingNy = tvamCookingNy;
	}

	

	public Integer getTvmmSeq() {
		return tvmmSeq;
	}

	public void setTvmmSeq(Integer tvmmSeq) {
		this.tvmmSeq = tvmmSeq;
	}

	public String getTvamCategory() {
		return tvamCategory;
	}

	public void setTvamCategory(String tvamCategory) {
		this.tvamCategory = tvamCategory;
	}

	public String getTvamRoomCount() {
		return tvamRoomCount;
	}

	public void setTvamRoomCount(String tvamRoomCount) {
		this.tvamRoomCount = tvamRoomCount;
	}

	// common
	public String getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}
	
	
	//member
	

	public String getTvmmEmailAccount() {
		return tvmmEmailAccount;
	}

	public Integer getTvmmHostNy() {
		return tvmmHostNy;
	}

	public void setTvmmHostNy(Integer tvmmHostNy) {
		this.tvmmHostNy = tvmmHostNy;
	}

	public void setTvmmEmailAccount(String tvmmEmailAccount) {
		this.tvmmEmailAccount = tvmmEmailAccount;
	}

	public String getTvmmPassword() {
		return tvmmPassword;
	}

	public void setTvmmPassword(String tvmmPassword) {
		this.tvmmPassword = tvmmPassword;
	}

	public String getTvmmName() {
		return tvmmName;
	}

	public void setTvmmName(String tvmmName) {
		this.tvmmName = tvmmName;
	}

	public String getTvmmTelNumber() {
		return tvmmTelNumber;
	}

	public void setTvmmTelNumber(String tvmmTelNumber) {
		this.tvmmTelNumber = tvmmTelNumber;
	}

	public String getTvmmDob() {
		return tvmmDob;
	}

	public void setTvmmDob(String tvmmDob) {
		this.tvmmDob = tvmmDob;
	}

	public String getTvmmDesc() {
		return tvmmDesc;
	}

	public void setTvmmDesc(String tvmmDesc) {
		this.tvmmDesc = tvmmDesc;
	}

	public String getTvmmAddressFull() {
		return tvmmAddressFull;
	}

	public void setTvmmAddressFull(String tvmmAddressFull) {
		this.tvmmAddressFull = tvmmAddressFull;
	}

	public String getTvpmAdNumber() {
		return tvpmAdNumber;
	}

	public void setTvpmAdNumber(String tvpmAdNumber) {
		this.tvpmAdNumber = tvpmAdNumber;
	}

	public String getTvpmStartDate() {
		return tvpmStartDate;
	}

	public void setTvpmStartDate(String tvpmStartDate) {
		this.tvpmStartDate = tvpmStartDate;
	}

	public String getTvpmEndDate() {
		return tvpmEndDate;
	}

	public void setTvpmEndDate(String tvpmEndDate) {
		this.tvpmEndDate = tvpmEndDate;
	}

	public String getTvpmtotalPrice() {
		return tvpmtotalPrice;
	}

	public void setTvpmtotalPrice(String tvpmtotalPrice) {
		this.tvpmtotalPrice = tvpmtotalPrice;
	}

	public String getTvpmSeq() {
		return tvpmSeq;
	}

	public void setTvpmSeq(String tvpmSeq) {
		this.tvpmSeq = tvpmSeq;
	}

	public String getTvmmAddress1() {
		return tvmmAddress1;
	}

	public void setTvmmAddress1(String tvmmAddress1) {
		this.tvmmAddress1 = tvmmAddress1;
	}

	public String getTvmmAddress2() {
		return tvmmAddress2;
	}

	public void setTvmmAddress2(String tvmmAddress2) {
		this.tvmmAddress2 = tvmmAddress2;
	}

	public String getTvpmPrice() {
		return tvpmPrice;
	}

	public void setTvpmPrice(String tvpmPrice) {
		this.tvpmPrice = tvpmPrice;
	}

	public String getTvpmDelNy() {
		return tvpmDelNy;
	}

	public void setTvpmDelNy(String tvpmDelNy) {
		this.tvpmDelNy = tvpmDelNy;
	}

	public String getTvpmDesc() {
		return tvpmDesc;
	}

	public void setTvpmDesc(String tvpmDesc) {
		this.tvpmDesc = tvpmDesc;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getDefaultNy() {
		return defaultNy;
	}

	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Integer getDelNy() {
		return delNy;
	}

	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}

	public Integer getPseq() {
		return pseq;
	}

	public void setPseq(Integer pseq) {
		this.pseq = pseq;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getUuidFileName() {
		return uuidFileName;
	}

	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}

	public MultipartFile[] getFile0() {
		return file0;
	}

	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}

	public MultipartFile[] getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	
	
	
}
