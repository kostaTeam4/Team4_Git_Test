package kr.co.emp.controller;


import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.emp.DAO.EmpDAO;
import kr.co.emp.DTO.EmpDTO;
import kr.co.emp.Service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {

	

}
