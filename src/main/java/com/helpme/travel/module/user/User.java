package com.helpme.travel.module.user;

import java.util.Date;

public class User {
	
	// 숙소정보
	private String tvamSeq;
	private String tvamLodgingName;
	private String tvamAcName;
	private String tvamHostName;
	private Integer tvamDelNy;
	private String tvamDesc;
	private String tvamZipCode;
	private String tvamAddress1;
	private String tvamAddress2;
	private String tvamAddressFull;
	private String tvamAddressState;
	private String tvamAddressCity;
	private String tvamLat;
	private String tvamLng;
	private Integer tvamPrice;
	private Integer tvamMaxPersonCount;
	private Integer tvamBedCount;
	private Integer tvamRoomCount;
	private Integer tvamShowerRoomCount;
	private Integer tvamApproveNy;
	private Integer tvamPoolNy;
	private Integer tvamJacuzziNy;
	private Integer tvamBbqGrillNy;
	private Integer tvamFirePlace;
	private Integer tvamGymNy;
	private Integer tvamWifiNy;
	private Integer tvamTvNy;
	private Integer tvamParkingRoomNy;
	private Integer tvamHeaterNy;
	private Integer tvamFridgeNy;
	private Integer tvamMicrowaveNy;
	private String tvamCheckInTime;
	private String tvamCheckOutTime;
	private Integer tvamSmokeNy;
	private Integer tvamCookingNy;
	
	private Date regDateTime;
	private Date regDateTimeSvr;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
	
	// 회원정보 member
	
	private String tvmmSeq;
	private String tvmmName;
	private String tvmmPassword;
	private String tvmmDob;
	private Integer tvmmZipCode;
	private String tvmmAddress1;
	private String tvmmAddress2;
	private String tvmmAddressFull;
	private String tvmmEmailAccount;
	private String tvmmEmailDomain;
	private Integer tvmmEmailDomainCd;
	private Integer tvmmTelecomCd;
	private String tvmmTelNumber;
	private Integer tvmmAdminNy;
	private Integer tvmmHostNy;
	private String tvmmDesc;
	private Integer tvmmDelNy;
	
	// photomap
	private Integer tvplSeq;
	private double tvplLat;
	private double tvplLng;
	private String tvplTitle;
	private String tvplDesc;
	private String tvplMarkerImage;
	private String tvplEmotionCd;
	
	
	
	
//	===============================================	
	
	
	
	public String getTvamSeq() {
		return tvamSeq;
	}
	public void setTvamSeq(String tvamSeq) {
		this.tvamSeq = tvamSeq;
	}
	public String getTvamAcName() {
		return tvamAcName;
	}
	public void setTvamAcName(String tvamAcName) {
		this.tvamAcName = tvamAcName;
	}
	public String getTvamHostName() {
		return tvamHostName;
	}
	public void setTvamHostName(String tvamHostName) {
		this.tvamHostName = tvamHostName;
	}
	public Integer getTvamDelNy() {
		return tvamDelNy;
	}
	public void setTvamDelNy(Integer tvamDelNy) {
		this.tvamDelNy = tvamDelNy;
	}
	public String getTvamDesc() {
		return tvamDesc;
	}
	public void setTvamDesc(String tvamDesc) {
		this.tvamDesc = tvamDesc;
	}
	public String getTvamZipCode() {
		return tvamZipCode;
	}
	public void setTvamZipCode(String tvamZipCode) {
		this.tvamZipCode = tvamZipCode;
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
	public String getTvamAddressState() {
		return tvamAddressState;
	}
	public void setTvamAddressState(String tvamAddressState) {
		this.tvamAddressState = tvamAddressState;
	}
	public String getTvamAddressCity() {
		return tvamAddressCity;
	}
	public void setTvamAddressCity(String tvamAddressCity) {
		this.tvamAddressCity = tvamAddressCity;
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
	public Integer getTvamPrice() {
		return tvamPrice;
	}
	public void setTvamPrice(Integer tvamPrice) {
		this.tvamPrice = tvamPrice;
	}
	public Integer getTvamMaxPersonCount() {
		return tvamMaxPersonCount;
	}
	public void setTvamMaxPersonCount(Integer tvamMaxPersonCount) {
		this.tvamMaxPersonCount = tvamMaxPersonCount;
	}
	public Integer getTvamBedCount() {
		return tvamBedCount;
	}
	public void setTvamBedCount(Integer tvamBedCount) {
		this.tvamBedCount = tvamBedCount;
	}
	public Integer getTvamRoomCount() {
		return tvamRoomCount;
	}
	public void setTvamRoomCount(Integer tvamRoomCount) {
		this.tvamRoomCount = tvamRoomCount;
	}
	public Integer getTvamShowerRoomCount() {
		return tvamShowerRoomCount;
	}
	public void setTvamShowerRoomCount(Integer tvamShowerRoomCount) {
		this.tvamShowerRoomCount = tvamShowerRoomCount;
	}
	public Integer getTvamApproveNy() {
		return tvamApproveNy;
	}
	public void setTvamApproveNy(Integer tvamApproveNy) {
		this.tvamApproveNy = tvamApproveNy;
	}
	public Integer getTvamPoolNy() {
		return tvamPoolNy;
	}
	public void setTvamPoolNy(Integer tvamPoolNy) {
		this.tvamPoolNy = tvamPoolNy;
	}
	public Integer getTvamJacuzziNy() {
		return tvamJacuzziNy;
	}
	public void setTvamJacuzziNy(Integer tvamJacuzziNy) {
		this.tvamJacuzziNy = tvamJacuzziNy;
	}
	public Integer getTvamBbqGrillNy() {
		return tvamBbqGrillNy;
	}
	public void setTvamBbqGrillNy(Integer tvamBbqGrillNy) {
		this.tvamBbqGrillNy = tvamBbqGrillNy;
	}
	public Integer getTvamFirePlace() {
		return tvamFirePlace;
	}
	public void setTvamFirePlace(Integer tvamFirePlace) {
		this.tvamFirePlace = tvamFirePlace;
	}
	public Integer getTvamGymNy() {
		return tvamGymNy;
	}
	public void setTvamGymNy(Integer tvamGymNy) {
		this.tvamGymNy = tvamGymNy;
	}
	public Integer getTvamWifiNy() {
		return tvamWifiNy;
	}
	public void setTvamWifiNy(Integer tvamWifiNy) {
		this.tvamWifiNy = tvamWifiNy;
	}
	public Integer getTvamTvNy() {
		return tvamTvNy;
	}
	public void setTvamTvNy(Integer tvamTvNy) {
		this.tvamTvNy = tvamTvNy;
	}
	public Integer getTvamParkingRoomNy() {
		return tvamParkingRoomNy;
	}
	public void setTvamParkingRoomNy(Integer tvamParkingRoomNy) {
		this.tvamParkingRoomNy = tvamParkingRoomNy;
	}
	public Integer getTvamHeaterNy() {
		return tvamHeaterNy;
	}
	public void setTvamHeaterNy(Integer tvamHeaterNy) {
		this.tvamHeaterNy = tvamHeaterNy;
	}
	public Integer getTvamFridgeNy() {
		return tvamFridgeNy;
	}
	public void setTvamFridgeNy(Integer tvamFridgeNy) {
		this.tvamFridgeNy = tvamFridgeNy;
	}
	public Integer getTvamMicrowaveNy() {
		return tvamMicrowaveNy;
	}
	public void setTvamMicrowaveNy(Integer tvamMicrowaveNy) {
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
	public Integer getTvamSmokeNy() {
		return tvamSmokeNy;
	}
	public void setTvamSmokeNy(Integer tvamSmokeNy) {
		this.tvamSmokeNy = tvamSmokeNy;
	}
	public Integer getTvamCookingNy() {
		return tvamCookingNy;
	}
	public void setTvamCookingNy(Integer tvamCookingNy) {
		this.tvamCookingNy = tvamCookingNy;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public String getTvmmSeq() {
		return tvmmSeq;
	}
	public void setTvmmSeq(String tvmmSeq) {
		this.tvmmSeq = tvmmSeq;
	}
	public String getTvmmName() {
		return tvmmName;
	}
	public void setTvmmName(String tvmmName) {
		this.tvmmName = tvmmName;
	}
	public String getTvmmPassword() {
		return tvmmPassword;
	}
	public void setTvmmPassword(String tvmmPassword) {
		this.tvmmPassword = tvmmPassword;
	}
	public String getTvmmDob() {
		return tvmmDob;
	}
	public void setTvmmDob(String tvmmDob) {
		this.tvmmDob = tvmmDob;
	}
	public Integer getTvmmZipCode() {
		return tvmmZipCode;
	}
	public void setTvmmZipCode(Integer tvmmZipCode) {
		this.tvmmZipCode = tvmmZipCode;
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
	public String getTvmmAddressFull() {
		return tvmmAddressFull;
	}
	public void setTvmmAddressFull(String tvmmAddressFull) {
		this.tvmmAddressFull = tvmmAddressFull;
	}
	public String getTvmmEmailAccount() {
		return tvmmEmailAccount;
	}
	public void setTvmmEmailAccount(String tvmmEmailAccount) {
		this.tvmmEmailAccount = tvmmEmailAccount;
	}
	public String getTvmmEmailDomain() {
		return tvmmEmailDomain;
	}
	public void setTvmmEmailDomain(String tvmmEmailDomain) {
		this.tvmmEmailDomain = tvmmEmailDomain;
	}
	public Integer getTvmmEmailDomainCd() {
		return tvmmEmailDomainCd;
	}
	public void setTvmmEmailDomainCd(Integer tvmmEmailDomainCd) {
		this.tvmmEmailDomainCd = tvmmEmailDomainCd;
	}
	public Integer getTvmmTelecomCd() {
		return tvmmTelecomCd;
	}
	public void setTvmmTelecomCd(Integer tvmmTelecomCd) {
		this.tvmmTelecomCd = tvmmTelecomCd;
	}
	public String getTvmmTelNumber() {
		return tvmmTelNumber;
	}
	public void setTvmmTelNumber(String tvmmTelNumber) {
		this.tvmmTelNumber = tvmmTelNumber;
	}
	public Integer getTvmmAdminNy() {
		return tvmmAdminNy;
	}
	public void setTvmmAdminNy(Integer tvmmAdminNy) {
		this.tvmmAdminNy = tvmmAdminNy;
	}
	public Integer getTvmmHostNy() {
		return tvmmHostNy;
	}
	public void setTvmmHostNy(Integer tvmmHostNy) {
		this.tvmmHostNy = tvmmHostNy;
	}
	public String getTvmmDesc() {
		return tvmmDesc;
	}
	public void setTvmmDesc(String tvmmDesc) {
		this.tvmmDesc = tvmmDesc;
	}
	public Integer getTvmmDelNy() {
		return tvmmDelNy;
	}
	public void setTvmmDelNy(Integer tvmmDelNy) {
		this.tvmmDelNy = tvmmDelNy;
	}
	public String getTvamLodgingName() {
		return tvamLodgingName;
	}
	public void setTvamLodgingName(String tvamLodgingName) {
		this.tvamLodgingName = tvamLodgingName;
	}
	public Integer getTvplSeq() {
		return tvplSeq;
	}
	public void setTvplSeq(Integer tvplSeq) {
		this.tvplSeq = tvplSeq;
	}
	public double getTvplLat() {
		return tvplLat;
	}
	public void setTvplLat(double tvplLat) {
		this.tvplLat = tvplLat;
	}
	public double getTvplLng() {
		return tvplLng;
	}
	public void setTvplLng(double tvplLng) {
		this.tvplLng = tvplLng;
	}
	public String getTvplMarkerImage() {
		return tvplMarkerImage;
	}
	public void setTvplMarkerImage(String tvplMarkerImage) {
		this.tvplMarkerImage = tvplMarkerImage;
	}
	public String getTvplEmotionCd() {
		return tvplEmotionCd;
	}
	public void setTvplEmotionCd(String tvplEmotionCd) {
		this.tvplEmotionCd = tvplEmotionCd;
	}
	public String getTvplTitle() {
		return tvplTitle;
	}
	public void setTvplTitle(String tvplTitle) {
		this.tvplTitle = tvplTitle;
	}
	public String getTvplDesc() {
		return tvplDesc;
	}
	public void setTvplDesc(String tvplDesc) {
		this.tvplDesc = tvplDesc;
	}	

	
	
	
}
	

	
	
