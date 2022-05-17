package com.helpme.travel.module.admin;

import java.sql.Date;

public class AdminVo {

	// VO
//	host, member
	private String tvmmSeq;
	
//	lodging
	private String tvamSeq;
	
//	coupon
	private String tvcpSeq;	
	
//	payment
	private String tvpmSeq;	
	
//	code
	private String tvcgSeq;	

	
//	lodging search
	private Integer shTvamDelNy;
	private String shTvamLodgingName;

//	common
	private String shOption;
	private String shValue;
	private String[] checkboxSeqArray;
	private String checkboxSeq;
	
//	paging

	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 8;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row		

	
	
//	------------------------	
	

	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1 || thisPage == 0 ) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
	}
	
	
	
	public String getTvmmSeq() {
		return tvmmSeq;
	}

	public void setTvmmSeq(String tvmmSeq) {
		this.tvmmSeq = tvmmSeq;
	}

	public String getTvamSeq() {
		return tvamSeq;
	}

	public void setTvamSeq(String tvamSeq) {
		this.tvamSeq = tvamSeq;
	}

	public String getTvcpSeq() {
		return tvcpSeq;
	}

	public void setTvcpSeq(String tvcpSeq) {
		this.tvcpSeq = tvcpSeq;
	}

	public String getTvpmSeq() {
		return tvpmSeq;
	}

	public void setTvpmSeq(String tvpmSeq) {
		this.tvpmSeq = tvpmSeq;
	}

	public String getTvcgSeq() {
		return tvcgSeq;
	}

	public void setTvcgSeq(String tvcgSeq) {
		this.tvcgSeq = tvcgSeq;
	}

	public Integer getShTvamDelNy() {
		return shTvamDelNy;
	}

	public void setShTvamDelNy(Integer shTvamDelNy) {
		this.shTvamDelNy = shTvamDelNy;
	}

	public String getShTvamLodgingName() {
		return shTvamLodgingName;
	}

	public void setShTvamLodgingName(String shTvamLodgingName) {
		this.shTvamLodgingName = shTvamLodgingName;
	}

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


	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public String getCheckboxSeq() {
		return checkboxSeq;
	}

	public void setCheckboxSeq(String checkboxSeq) {
		this.checkboxSeq = checkboxSeq;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	


	
	
}
