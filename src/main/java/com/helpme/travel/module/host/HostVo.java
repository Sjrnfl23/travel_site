package com.helpme.travel.module.host;

public class HostVo {

	private String tvcpSeq;
	private String tvamSeq;
	private Integer tvmmSeq;
	private String tvmmDelNy;
	private String tvamDelNy;
//	paging

	private int thisPage = 1; // 현재 페이지
	private int rowNumToShow = 8; // 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5; // 화면에 보여줄 페이징 번호 갯수

	private int totalRows; // 전체 데이터 갯수
	private int totalPages; // 전체 페이지 번호
	private int startPage; // 시작 페이지 번호
	private int endPage; // 마지막 페이지 번호

	private int startRnumForOracle = 1; // 쿼리 시작 row
	private int endRnumForOracle; // 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0; // 쿼리 시작 row

	//delete
	private String[] checkboxSeqArray;
	private String checkboxSeq;
	
	// search
	private String shOption;
	private String shValue;
	private String tvamCategory;
	
	private String tvmmName;

    // dm
	private String tvamHostName;

	public void setParamsPaging(int totalRowsParam) {

		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages + 1;
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
		if (startRnumForOracle < 1)
			startRnumForOracle = 1;

		if (thisPage == 1 || thisPage == 0) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage - 1)));
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

	public String getTvamCategory() {
		return tvamCategory;
	}

	public void setTvamCategory(String tvamCategory) {
		this.tvamCategory = tvamCategory;
	}

	public String getTvcpSeq() {
		return tvcpSeq;
	}

	public void setTvcpSeq(String tvcpSeq) {
		this.tvcpSeq = tvcpSeq;
	}

	public String getTvamSeq() {
		return tvamSeq;
	}

	public void setTvamSeq(String tvamSeq) {
		this.tvamSeq = tvamSeq;
	}

	public Integer getTvmmSeq() {
		return tvmmSeq;
	}

	public void setTvmmSeq(Integer tvmmSeq) {
		this.tvmmSeq = tvmmSeq;
	}

	public String getTvmmDelNy() {
		return tvmmDelNy;
	}

	public void setTvmmDelNy(String tvmmDelNy) {
		this.tvmmDelNy = tvmmDelNy;
	}

	public String getTvamDelNy() {
		return tvamDelNy;
	}

	public void setTvamDelNy(String tvamDelNy) {
		this.tvamDelNy = tvamDelNy;
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

	public String getTvamHostName() {
		return tvamHostName;
	}

	public void setTvamHostName(String tvamHostName) {
		this.tvamHostName = tvamHostName;
	}

	public String getTvmmName() {
		return tvmmName;
	}

	public void setTvmmName(String tvmmName) {
		this.tvmmName = tvmmName;
	}
	
	
}
