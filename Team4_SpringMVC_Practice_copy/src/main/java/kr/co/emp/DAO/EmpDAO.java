package kr.co.emp.DAO;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import kr.co.emp.DTO.EmpDTO;

public interface EmpDAO {
	
	//CRUD 작업
	
	//1.emp회원 전체 조회(multi row)
	List<EmpDTO> getAllEmplist(HashMap maps)throws SQLException, ClassNotFoundException;
	
	//2.emp회원 1건(single row)_상세조회
	EmpDTO getEmp(int empno) throws SQLException, ClassNotFoundException;
	
	//3.emp회원 추가(insert)
	int insertEmp(EmpDTO empDto) throws SQLException, ClassNotFoundException;
	
	//4.emp회원 삭제(delete)
	int deleteEmp(int empDto) throws SQLException, ClassNotFoundException;
	
	//5.emp회원 수정(update_ 사원이름, 직종, 급여)
	int updateEmp(EmpDTO empDto) throws SQLException, ClassNotFoundException;
	
	//6. emp회원 전체 사원 수
	int getEmpCount() throws SQLException, ClassNotFoundException;
	
	
	

}
