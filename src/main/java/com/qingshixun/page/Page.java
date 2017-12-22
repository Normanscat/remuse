package com.qingshixun.page;

public class Page {

	// 每页的记录数
	private int everyCount;

	// 总记录数
	private int totleCount;

	// 总页数
	private int totalPage;

	// 当前页
	private int currentPage;

	// 起始点
	private int beginIndex;

	// 是否有上一页
	private boolean hasPrePage;

	// 是否有下一页
	private boolean hasNextPage;

	public Page(int everyCount, int totleCount, int totalPage, int currentPage, int beginIndex, boolean hasPrePage,
			boolean hasNextPage) {
		super();
		this.everyCount = everyCount;
		this.totleCount = totleCount;
		this.totalPage = totalPage;
		this.currentPage = currentPage;
		this.beginIndex = beginIndex;
		this.hasPrePage = hasPrePage;
		this.hasNextPage = hasNextPage;
	}

	public int getEveryCount() {
		return everyCount;
	}

	public void setEveryCount(int everyCount) {
		this.everyCount = everyCount;
	}

	public int getTotleCount() {
		return totleCount;
	}

	public void setTotleCount(int totleCount) {
		this.totleCount = totleCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public boolean isHasPrePage() {
		return hasPrePage;
	}

	public void setHasPrePage(boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

}
