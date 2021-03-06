package kr.co.sist.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.user.dao.UserJoinDAO;
import kr.co.sist.user.vo.MemberVO;

@Service("userJoinService")
public class UserJoinServiceImpl implements UserJoinService {

	@Autowired(required = false)
	private UserJoinDAO ujDAO;
	
	@Override
	public void joinUser(MemberVO mVO) {
		ujDAO.joinUser(mVO);
	}
	@Override
	public MemberVO idCheck(String userId) {
		return ujDAO.idCheck(userId);
	}
	
}
