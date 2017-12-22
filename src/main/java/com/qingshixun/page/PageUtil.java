package com.qingshixun.page;

public class PageUtil {

	/**
	 * 
	 * @param page
	 * @param totalcount
	 * @return
	 */
	public static Page creatPage(Page page, int totalcount) {
		int everycount = getEverycount(page.getEveryCount());
		int currentpage = getCurrentpage(page.getCurrentPage());
		int totalpage = getTotalPage(everycount, totalcount);
		int beginindex = getbrginindex(currentpage, everycount);
		boolean hasprepage = gethasprepage(currentpage);
		boolean hasnextpage = gethasnextpage(currentpage, totalpage);
		return new Page(everycount, totalcount, totalpage, currentpage, beginindex, hasprepage, hasnextpage);
	}

	// 每页的记录条数
	public static int getEverycount(int everycount) {
		// 默认为5条记录
		return everycount == 0 ? 5 : everycount;
	}

	// 当前页
	public static int getCurrentpage(int currentpage) {
		// 默认为第一页
		return currentpage == 0 ? 1 : currentpage;
	}

	// 总页数
	public static int getTotalPage(int everycount, int totalcount) {
		int totalPage = 0;
		// 总记录数除以除以记录数，看是否有余
		// 有余总页数等总记录除以每页记录的商加一，无余数等于商
		if (totalcount % everycount == 0) {
			totalPage = totalcount / everycount;
		} else {
			totalPage = totalcount / everycount + 1;
		}
		return totalPage;
	}

	// 起始点
	public static int getbrginindex(int everycount, int currentpage) {
		// 当前页减一乘于每页记录数
		return ((currentpage - 1) * everycount);
	}

	// 是否有上一页
	public static Boolean gethasprepage(int currentpage) {
		// 当前页为一则为上一页
		return currentpage == 1 ? false : true;
	}

	// 是否有下一页
	public static Boolean gethasnextpage(int currentpage, int totalpage) {
		// 当前页等于总页数或总页数为0时无下一页
		return currentpage == totalpage || totalpage == 0 ? false : true;
	}

}
