package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class CarRentViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		
		int carnum = Integer.parseInt(req.getParameter("carnum"));
		System.out.println("1111111111111");
		req.setAttribute("carinfoList", cidao.getDetail(carnum));
		System.out.println("2222222");
		forward.setRedirect(false);
		forward.setPath("/carrentview.jsp");
		System.out.println("23333333");
		
		return forward;
	}

}
