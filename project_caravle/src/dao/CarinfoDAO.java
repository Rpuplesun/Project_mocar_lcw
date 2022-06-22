package dao;

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
	
	public List<CarinfoDTO> getCarinfoList(){
		System.out.println("getCarinfoList 도착");
		List<CarinfoDTO> carinfoList = sqlsession.selectList("Carinfo.getCarinfoList");
		System.out.println("carinfoList 도착");
		
		return carinfoList;
		
	}
	
}
