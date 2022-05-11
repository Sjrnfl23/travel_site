package com.helpme.travel.module.admin;

import java.util.Date;

public class Admin {
	
	// 숙소정보
	private String tvamSeq;
	private String tvamLodgingName;
	private String tvamHostName;
	private Integer tvamDelNy;
	private String tvamDesc;
	private String tvamZipCode;
	private String tvamAddress1;
	private String tvamAddress2;
	private String tvamAddressFull;
	private String tvamState;
	private String tvamCity;
	private String tvamLat;
	private String tvamLng;
	private Integer tvamAdultPrice;
	private Integer tvamMaxPersonCount;
	private Integer tvamBedCount;
	private Integer tvamRoomCount;
	private Integer tvamShowerRoomCount;
	private Integer tvamApproveNy;
	private Integer tvamCategoryCd;
	private Integer tvamPoolNy;
	private Integer tvamJacuzziNy;
	private Integer tvamBbqGrillNy;
	private Integer tvamFirePlaceNy;
	private Integer tvamGymNy;
	private Integer tvamWifiNy;
	private Integer tvamTvNy;
	private Integer tvamParkingRoomNy;
	private Integer tvamAirConditionerNy;
	private Integer tvamHeaterNy;
	private Integer tvamFridgeNy;
	private Integer tvamMicrowaveNy;
	private String tvamCheckInTime;
	private String tvamCheckOutTime;
	private String tvamTelNumber;
	private String host;
	
	
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
	
	
	// 쿠폰정보
	private String tvcpSeq;
	private String tvcpName;
	private String tvcpNumber;
	private String tvcpPrice;
	private String tvcpStartDate;
	private String tvcpEndDate;
	private Integer tvcpDelNy;
	private String tvcpDesc;
	
	
//	===============================================	
	
	public String getTvamSeq() {
		return tvamSeq;
	}
	public void setTvamSeq(String tvamSeq) {
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
	public Integer getTvamAdultPrice() {
		return tvamAdultPrice;
	}
	public void setTvamAdultPrice(Integer tvamAdultPrice) {
		this.tvamAdultPrice = tvamAdultPrice;
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
	public Integer getTvamCategoryCd() {
		return tvamCategoryCd;
	}
	public void setTvamCategoryCd(Integer tvamCategoryCd) {
		this.tvamCategoryCd = tvamCategoryCd;
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
	public Integer getTvamFirePlaceNy() {
		return tvamFirePlaceNy;
	}
	public void setTvamFirePlaceNy(Integer tvamFirePlaceNy) {
		this.tvamFirePlaceNy = tvamFirePlaceNy;
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
	public Integer getTvamAirConditionerNy() {
		return tvamAirConditionerNy;
	}
	public void setTvamAirConditionerNy(Integer tvamAirConditionerNy) {
		this.tvamAirConditionerNy = tvamAirConditionerNy;
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
	public String getTvamTelNumber() {
		return tvamTelNumber;
	}
	public void setTvamTelNumber(String tvamTelNumber) {
		this.tvamTelNumber = tvamTelNumber;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
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
	public String getTvcpSeq() {
		return tvcpSeq;
	}
	public void setTvcpSeq(String tvcpSeq) {
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
	public Integer getTvcpDelNy() {
		return tvcpDelNy;
	}
	public void setTvcpDelNy(Integer tvcpDelNy) {
		this.tvcpDelNy = tvcpDelNy;
	}
	public String getTvcpDesc() {
		return tvcpDesc;
	}
	public void setTvcpDesc(String tvcpDesc) {
		this.tvcpDesc = tvcpDesc;
	}
	


	

	
	



	
}
	

	
	
