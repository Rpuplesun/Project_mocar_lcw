package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class CarinfoListAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("CarinfoListAction 도착");
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		
		req.setAttribute("carinfoList", cidao.getCarinfoList());
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/rent2.jsp");
		
		return forward;
	}

}
