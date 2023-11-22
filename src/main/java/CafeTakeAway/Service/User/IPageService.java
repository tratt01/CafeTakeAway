package CafeTakeAway.Service.User;

import org.springframework.stereotype.Service;

import CafeTakeAway.Dto.PageDto;

@Service
public interface IPageService {
	public PageDto GetAllPages(int totalData, int limit, int currentPage);
}
