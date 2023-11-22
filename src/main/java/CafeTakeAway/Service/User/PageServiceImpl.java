package CafeTakeAway.Service.User;

import org.springframework.stereotype.Service;

import CafeTakeAway.Dto.PageDto;

@Service
public class PageServiceImpl implements IPageService {
	public PageDto GetAllPages(int totalData, int limit, int currentPage) {
		PageDto page = new PageDto();
		
		page.setLimit(limit);
		page.setTotalPage(getTotalPage(totalData, limit));
		page.setCurrentPage(checkCurrentPage(currentPage, page.getTotalPage()));
		
		int startPage = findStartPage(page.getCurrentPage(), limit);
		page.setstartPage(startPage);
		int endPage = findEndPage(page.getstartPage(), limit, totalData);
		page.setendPage(endPage);
		
		return page;
	}

	private int findStartPage(int currentPage, int limit) {
		return (currentPage - 1) * limit;
	}
	
	private int findEndPage(int startPage, int limit, int totalData) {
		return startPage + limit >  totalData ? totalData : (startPage + limit);
	}

	private int getTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	
	public int checkCurrentPage(int currentPage, int totalpage) {
		if (currentPage < 1 ) {
			return 1;
		}
		if (currentPage > totalpage) {
			return totalpage;
		}
		
		return currentPage;
	}
}
