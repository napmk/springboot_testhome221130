package com.napmkmk.testhome.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yaml.snakeyaml.tokens.DocumentEndToken;

import com.napmkmk.testhome.dao.IDao;
import com.napmkmk.testhome.dto.MemberDto;
import com.napmkmk.testhome.dto.QBoardDto;

@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping (value ="/")
	public String home () {
		
		return "index";
	}

	@RequestMapping (value ="index")
	public String index (Model model) {
	
			
	
			
			
		return "index";
	}
	
	@RequestMapping (value ="test")
	public String test () {
		
		return "test";
	}
	
	@RequestMapping (value ="profile")
	public String profile () {
		
		return "profile";
	}
	@RequestMapping (value ="contact")
	public String contact () {
		
		return "contact";
	}
	
	@RequestMapping (value ="login")
	public String login () {
		
		return "login";
	}
	
	@RequestMapping (value ="join")
	public String join () {
		
		return "join";
	}
	
	@RequestMapping (value ="joinOk")
	public String joinOk (HttpServletRequest request, HttpSession session, Model model) {
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int joinFlag = dao.memberJoin(mid, mpw, mname, mid);
		// joinFlag 가 1 이면 회원가입 성공, 아니면 실패
		//System.out.println("가입성공여부"+ joinFlag);
		
		if(joinFlag == 1 ) { //회원가입 성공시 바로 로그인 진행
			session.setAttribute("memberId", mid);
			session.setAttribute("memberName", mname);
		
			model.addAttribute("mid", mid);
			model.addAttribute("mname",mname );
			
			return "joinOk";
		} else { //회원가입 실패
				return "joinFail";
			}
	
	
	}

	@RequestMapping (value ="question")
	public String question (HttpSession session, Model model) {
		
		String sessionId= (String)session.getAttribute("memberId");
		
		if(sessionId == null) {//로그인확인
			model.addAttribute("memberId", "GUEST");
		}else {
			model.addAttribute("memberId", sessionId);
		}
		
		
		return "question";
	}
	
	
			
	@RequestMapping (value = "logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login";
	}
	
	@RequestMapping (value = "loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkId(mid); 
		//로그인하려는 아이디 존재시 1, 로그인하려는 아이디 존재하지 않으면 0이 반환
		int checkIdPwFlag = dao.checkIdAndPW(mid, mpw);
		//로그인하려는 아이디와 비밀번호가 모두 일치하는 데이터가 존재하면 1 아니면 0이 반환
		
		model.addAttribute("checkIdFlag",checkIdFlag);
		model.addAttribute("checkIdPwFlag",checkIdPwFlag);
		
		
		
		if(checkIdPwFlag == 1) {   //로그인실행
			session.setAttribute("memberId", mid);
			MemberDto memberDto = dao.getMemberInfo(mid);
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("mid",mid);
		}

		return "loginOk";
	}
	
	@RequestMapping(value = "memberModify")
	public String  memberModify(Model model, HttpSession session) {
	
		String sessionId = (String) session.getAttribute("memberId");
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.getMemberInfo(sessionId);
		model.addAttribute("memberDto", memberDto);
	
		return "memberModify";
}
	
	
	@RequestMapping(value = "memberModifyOk")
		public String  memberModifyOk(HttpServletRequest request,Model model) {
		
		String  mid = request.getParameter("mid");
		String  mpw = request.getParameter("mpw");
		String  mname = request.getParameter("mname");
		String  memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memberModify(mid, mpw, mname, memail);
		
		MemberDto memberDto = dao.getMemberInfo(mid);//수정된 회원정보 다시 가져오기
		model.addAttribute("memberDto", memberDto);// 바뀐내용 다시 보내기
		
			return "memberModifyOk";
	}
	
	@RequestMapping (value ="questionOk")
	public String questionOk(HttpServletRequest request) {
		
		String qid = request.getParameter("qid"); //글쓴유저아이디
		String qname = request.getParameter("qname");//글쓴유저이름
		String qcontent = request.getParameter("qcontent");//글쓴질문내용
		String qemail = request.getParameter("qemail");//글쓴유저이메일
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeQuestion(qid, qname, qcontent, qemail);
		
		return "redirect:list";
		
	}
	
	@RequestMapping (value = "list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		List<QBoardDto> qboardDtos = dao.questionList();
		
		model.addAttribute("qDtos",qboardDtos);
		
		return "questionList";
	}
	
		@RequestMapping (value =  "questionView")
		public String questionView(HttpServletRequest request, Model model) {
			String qnum = request.getParameter("qnum");
			
			IDao dao = sqlSession.getMapper(IDao.class);
			QBoardDto qBoardDto = dao.questionView(qnum);
			
			model.addAttribute("qDtos" , qBoardDto);
			
			model.addAttribute("qId" , qBoardDto.getQid());//글쓴 유저의 id값 전송
			return "questionView";
		}
		
		@RequestMapping(value = "questionModify")
		public String questionModify(HttpServletRequest request,Model model) {
			String qnum = request.getParameter("qnum");
			
			IDao dao = sqlSession.getMapper(IDao.class);
			QBoardDto qBoardDto = dao.questionView(qnum);
			
			model.addAttribute("qDtos" , qBoardDto);
			
			return "questionModify";
		}
		
		@RequestMapping(value = "questionModifyOk")
		public String questionModifyOk( HttpServletRequest request) {
		 
			String qnum = request.getParameter("qnum");
			String qname = request.getParameter("qname");
			String qcontent = request.getParameter("qcontent");
			String qemail = request.getParameter("qemail");
			
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.questionModify(qnum, qname, qcontent, qemail);
			return "redirect:list";
		}
		
		@RequestMapping(value = "questionDelete")
		public String questionDelete( HttpServletRequest request) {
			
			
			String qnum = request.getParameter("qnum");
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.questionDelete(qnum);
			
			return "redirect:list";
		}
		
	}

