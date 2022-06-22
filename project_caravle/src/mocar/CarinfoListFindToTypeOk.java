package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class CarinfoListFindToTypeOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		int cartype =  Integer.parseInt(req.getParameter("cartype"));
		
		req.setAttribute("carinfoList", cidao.getCarFromCarType(cartype));
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/rent2.jsp");
		
		return forward;
	}
	

}
