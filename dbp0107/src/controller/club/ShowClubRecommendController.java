package controller.club;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import model.Club;
import model.Customer;
import model.service.ClubManager;

public class ShowClubRecommendController  implements Controller {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		int customer_no = Integer.parseInt(request.getParameter("customer_no"));
		
		ClubManager manager = ClubManager.getInstance();
		List<Club> clubList = manager.showRecommend(customer_no);

		// commList 객체를 request에 저장하여 커뮤니티 리스트 화면으로 이동(forwarding)
		request.setAttribute("clubList", clubList);				
		return "/community/recommend.jsp";   
	}
}
