package kr.co.sist.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.user.service.UserIdFindSerivce;
import kr.co.sist.user.vo.MemberVO;
@Controller
@SessionAttributes("IdPassFind")
public class IdPassFindController {
	@Autowired(required = false)
	private UserIdFindSerivce idfindService;
	
	//아이디찾기 폼으로 들어갈때
		@RequestMapping(value ="/user/idfind.do",method =RequestMethod.GET)
		public void getIdFind()throws Exception{
			
		}//getIdFind
	//아이디찾기 실행
		@RequestMapping(value ="/user/idfind.do",method =RequestMethod.POST)
		public String FindId(MemberVO mVO,Model model)throws Exception{
			MemberVO member=idfindService.findId(mVO);
			if(member==null) {
				model.addAttribute("check",1);
				
			}else {
				model.addAttribute("check",0);
				model.addAttribute("id",member.getUserId());
			}
			return "user/idfind";
		}//FindId
		
}
