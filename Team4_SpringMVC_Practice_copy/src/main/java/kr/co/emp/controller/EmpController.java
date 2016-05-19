package kr.co.emp.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.emp.DAO.EmpDAO;
import kr.co.emp.DTO.EmpDTO;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//1.emp회원 전체 조회(multi row)
	//@RequestMapping("/empList.htm")
	/*public String getAllEmplist(String pg, Model model) throws ClassNotFoundException, SQLException
	{
		System.out.println("회원 전체 조회");
		int page = 1;
		
		if(pg !=null && pg.equals(""))
		{
			page = Integer.parseInt(pg);
		}
		
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		List<EmpDTO> list = empDao.getAllEmplist(page);
		
		model.addAttribute("list", list);
		
		
		return "emp.empList";
	}*/
	
	@RequestMapping("/empList.htm")
	public String getAllEmplist(String pg, Model model) throws ClassNotFoundException, SQLException
	{
		System.out.println("emp 사원 전체 목록");
		
		int page=1;
		String Strpg = pg;
		if(Strpg != null)
		{
			page = Integer.parseInt(Strpg);
		}
		
		int rowSize = 5;
		int start = (page*rowSize) - (rowSize - 1);
		int end = page*rowSize;
		
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		int total = empDao.getEmpCount();
		
		System.out.println("start_page : " +  start);
		System.out.println("end_page :  " +  end );
		System.out.println("총 게시물 건수 : " + total);
		
	   //... 목록
	   int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
	   // int totalPage = total/rowSize + (total%rowSize==0?0:1);
	   System.out.println("페이지수 : " + allPage);

	   int block = 5; 
	   // 한페이지에 보여줄 범위 << [1] [2] [3] [4] [5] >>
	   int fromPage = ((page - 1) / block * block) + 1; // 보여줄 페이지의 시작
	   // ((1-1)/10*10)
	   int toPage = ((page - 1) / block * block) + block; // 보여줄 페이지의 끝
	   if (toPage > allPage) // 예) 20>17
	   { 
		   toPage = allPage;
	   }		
		
		//start와 end 값을 map에 담음
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		
		List<EmpDTO> list = empDao.getAllEmplist(map);
		
		model.addAttribute("list",list);
		model.addAttribute("pg",page);
		model.addAttribute("allPage",allPage);
		model.addAttribute("block",block);
		model.addAttribute("fromPage",fromPage);
		model.addAttribute("toPage",toPage);
		return "emp.empList";
	
	}
	
	
	
	//2.emp회원 1건(single row)_상세조회
	@RequestMapping("/empDetail.htm")
	public String empDetail()
	{
		return "emp.empDetail";
	}
			
	//3.emp회원 추가(insert)
	//3.1 회원 추가 화면
	@RequestMapping(value="empReg.htm", method=RequestMethod.GET)
	public String empinsert()
	{
		return "emp.empReg";
	}
	
	//3.emp회원 추가(insert)
	//3.2 회원 추가 로직
	@RequestMapping(value="empReg.htm", method=RequestMethod.POST)
	public String empinsertOk()
	{
		return "emp.empReg";
	}
			
	//4.emp회원 삭제(delete)
	@RequestMapping("/empDel.htm")
	public String empDelete(int empno, int pg)
	{
		return "redirect:empList.htm?pg=" + pg;
	}
	
		
    //5.emp회원 수정(update_ 사원이름, 직종, 급여)
	//5.1 회원 수정 화면
	@RequestMapping(value="empEdit.htm", method=RequestMethod.GET)
	public String empModifyView()
	{
		return "emp.empEdit";
	}
	
	//5.emp회원 수정(update_ 사원이름, 직종, 급여)
	//5.2 회원 수정 로직
	@RequestMapping(value="empEdit.htm", method=RequestMethod.POST)
	public String empModifyOk(EmpDTO empDTO, int pg)
	{
		return "redirect:empList.htm?pg=" + pg;
	}
	

}
