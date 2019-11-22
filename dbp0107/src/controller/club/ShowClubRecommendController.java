package controller.club;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.customer.CustomerSessionUtils;
import model.Club;
import model.Customer;
import model.service.ClubManager;
import model.service.CustomerManager;
import controller.customer.*;

public class ShowClubRecommendController  implements Controller {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ClubManager manager = ClubManager.getInstance();
		
		String customerId = CustomerSessionUtils.getLoginCustomerId(request.getSession());
		
		//int customer_no = getLoginCustomerNo(request.getSession());
		//int customer_no = CustomerSessionUtils.getLoginCustomerNo(request.getSession());
		//int customer_no = 9;
		
		//HttpSession session = request.getSession();
		//int customer_no = (int)session.getAttribute("customer_no");

		List<Club> clubList = manager.showRecommend(customerId);
		
		request.setAttribute("clubList", clubList);	
	    return "/club/recommend.jsp";
	}
	

}
