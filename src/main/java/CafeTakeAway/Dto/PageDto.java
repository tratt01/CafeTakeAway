package CafeTakeAway.Dto;

public class PageDto {
	private int currentPage, limit, startPage, endPage, totalPage;

	public PageDto() {
		super();
	}

	public PageDto(int currentPage, int limit, int startPage, int endPage, int totalPage) {
		super();
		this.currentPage = currentPage;
		this.limit = limit;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getstartPage() {
		return startPage;
	}

	public void setstartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getendPage() {
		return endPage;
	}

	public void setendPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
	
}
