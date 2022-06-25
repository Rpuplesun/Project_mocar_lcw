package mocar;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;

@WebServlet("*.mc")
public class MocarFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;

		switch (requestURI) {
		case "/rent2.mc":
			forward = new Rent2().execute(req, resp);
			break;
		case "/CarinfoList.mc":
			System.out.println("/CarinfoList.mc 도착"); // 메인에서 렌트예약 페이지 클릭 시 
			forward = new CarinfoListAction().execute(req, resp);
			break;
		case "/carinfoListFindToType.mc":
			forward = new CarinfoListFindToTypeOk().execute(req, resp);
			break;
		case "/CarinfoList/CarRentview.mc":
			System.out.println("CarRentview.mc 도착"); // 렌트예약 페이지에서 특정차량 예약신청 클릭 시, 예약하기 버튼 클릭 후 다시 돌아옴(5번)
			forward = new CarRentViewAction().execute(req, resp);
			break;
		case "/CarRent.mc":
			System.out.println("CarRent 1번"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 (1번)
			forward = new CarRentAction().execute(req, resp);
			break;
		}

		if (forward != null) {
			if (forward.isRedirect()) { // redirect
				resp.sendRedirect(forward.getPath());
			} else { // forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}
}
