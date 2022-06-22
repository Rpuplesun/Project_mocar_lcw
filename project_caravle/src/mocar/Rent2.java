package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class Rent2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward af = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		req.setAttribute("carinfoList", cidao.getCarinfoList());
		af.setRedirect(false);
		af.setPath(req.getContextPath() +"rent2.jsp");
		return af;
	}

}
