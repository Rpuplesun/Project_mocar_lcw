package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.mybatis.SqlMapConfig;

public class CarinfoDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public CarinfoDAO() {
		sqlsession = factory.openSession(true);
	}
	
	// 차량조회
	public List<CarinfoDTO> getCarinfoList(int startRow, int endRow){
		// 페이징 추가
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		
		List<CarinfoDTO> carinfoList = sqlsession.selectList("Carinfo.getCarinfoList", datas);
		return carinfoList;
		
	}
	
	// 차량 카테고리별 조회
	public List<CarinfoDTO> getCarFromCarType(int cartype){
		List<CarinfoDTO> carinfoList = sqlsession.selectList("Carinfo.getCarFromCarType",cartype);
		return carinfoList;
	}
	
	// 전체 글 개수
	public int getCarinfoCnt() {
		return sqlsession.selectOne("Carinfo.getCarinfoCnt");
	}

	public CarinfoDTO getDetail(int carnum) {
		return (CarinfoDTO)sqlsession.selectOne("Carinfo.getDetail", carnum);
	}
	
	// 렌트정보 넘기기 개발중
	public boolean carRent(CarRentDTO crdto) {
		boolean result = false;
		
		if(sqlsession.insert("Carinfo.getCarRent", crdto) == 1) {
			result = true;
		}
		
		return result;
	}
	
}
