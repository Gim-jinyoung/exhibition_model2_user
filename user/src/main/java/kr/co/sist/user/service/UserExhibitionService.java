package kr.co.sist.user.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.UserexhibitionDAO;
import kr.co.sist.user.mybatis.MyBatisFramework;
import kr.co.sist.user.vo.UserExhibitionHallVO;
import kr.co.sist.user.vo.UserExhibitionVO;

@Component
public class UserExhibitionService {

	@Autowired(required = false)
	private UserexhibitionDAO ueDAO;
	
	public List<UserExhibitionVO> exListView(int ex_hall_num) {
		List<UserExhibitionVO> list=null;
		
		try {
			list=ueDAO.selectAllExList(ex_hall_num);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	public List<UserExhibitionVO> exListAllView() {
		List<UserExhibitionVO> list=null;
		try {
			list=ueDAO.exListAllView();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	
	public List<UserExhibitionHallVO> searchLocEx(){
		List<UserExhibitionHallVO> list=null;
		
		try {
			list=ueDAO.selectLocalExList();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
}
