package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarRentDTO;
import dao.CarinfoDAO;

public class CarRentAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = null;
		CarinfoDAO cidao = new CarinfoDAO();
		CarRentDTO crdto = new CarRentDTO();
		
		System.out.println("렌트액션 도착-------------");
		
		int carnum = Integer.parseInt(req.getParameter("carnum"));
		
		crdto.setCarnum(Integer.parseInt(req.getParameter("carnum")));
		crdto.setRentday(req.getParameter("rentday"));
		crdto.setRentnum(Integer.parseInt(req.getParameter("rentnum")));
		
		System.out.println("파라미터 도착-------------");
		
		if(cidao.carRent(crdto)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/CarinfoList/CarRentview.mc?carnum=" + carnum);
		}
		
		System.out.println("if문 도착-------------");
		return forward;
	}

}
