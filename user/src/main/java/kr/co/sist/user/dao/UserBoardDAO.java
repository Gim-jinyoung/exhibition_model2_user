//package kr.co.sist.user.dao;
//
//import java.util.List;
//
//import org.apache.ibatis.exceptions.PersistenceException;
//import org.apache.ibatis.session.SqlSession;
//
//import kr.co.sist.user.mybatis.MyBatisFramework;
//import kr.co.sist.user.vo.UserBoardVO;
//
//public class UserBoardDAO {
//	
//	/**
//	 * 카테고리에 따라 전체 게시글 리스트 출력
//	 * @param ubVO 검색(아이디, 제목)
//	 * @return 게시글 리스트
//	 * @throws PersistenceException
//	 */
//	public List<UserBoardVO> selectBoard(UserBoardVO ubVO) throws PersistenceException{
//		List<UserBoardVO> list=null;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		list=ss.selectList("kr.co.sist.user.board.selectBoard");
//		if(ss != null) {
//			ss.close();
//		}//end if
//		
//		return list;
//	}//selectCountry
//	
//
//	/**
//	 * 페이징을 위한 전체 게시글 수
//	 * @param cat_num
//	 * @return
//	 */
//	public int selectTotalCount( int cat_num ) {
//		int totalCnt=0;
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		totalCnt=ss.selectOne("kr.co.sist.user.board.totalBoardCnt", cat_num);
//		if( ss !=null ) { ss.close(); }
//		return totalCnt;
//	}//selectTotalCount
//	
//	/**
//	 * 게시글 삭제
//	 * @param bd_id
//	 * @return
//	 */
//	public int deleteBoard( int bd_id ) {
//		int success=0;
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		success=ss.selectOne("kr.co.sist.user.board.deleteBoard", bd_id);
//		if( ss !=null ) { ss.close(); }
//		return success;
//	}//deleteBoard
//	
//	/**
//	 * 게시글 추가
//	 * @param ubVO
//	 */
//	public void insertBoard( UserBoardVO ubVO) {
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		ss.selectOne("kr.co.sist.user.board.insertBoard", ubVO);
//		if( ss !=null ) { ss.close(); }
//	}//insertBoard
//	
//	/**
//	 * 게시글
//	 * @param ubVO
//	 * @return 성공 여부
//	 */
//	public int updateBoard( UserBoardVO ubVO) {
//		int success=0;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		success=ss.selectOne("kr.co.sist.user.board.insertupdateBoard", ubVO);
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return success;
//	}//updateBoard
//	
//	/**
//	 * 게시글 상세 
//	 * @param bd_id
//	 * @return
//	 */
//	public UserBoardVO selectBoardDetail( int bd_id) {
//		UserBoardVO ubVO=new UserBoardVO();
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		ubVO=ss.selectOne("kr.co.sist.user.board.selectBoardDetail", bd_id);
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return ubVO;
//	}//selectBoardDetail
//	
//	/**
//	 * 카테고리 조회
//	 * @return
//	 */
//	public List<UserBoardVO> selectCat( ) {
//		List<UserBoardVO> list=null;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		list=ss.selectList("kr.co.sist.user.board.selectCat");
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return list;
//	}//selectCat
//	
//	/**
//	 * view 수 수정
//	 * @param bd_id
//	 */
//	public void updateView( int bd_id) {
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		ss.selectOne("kr.co.sist.user.board.updateView");
//		
//		if( ss !=null ) { ss.close(); }
//		
//	}//updateView
//	
//	/**
//	 * 댓글 보여주기
//	 * @param bd_id
//	 * @return
//	 */
//	public List<UserBoardVO> selectCom(int bd_id) {
//		List<UserBoardVO> list=null;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		list=ss.selectList("kr.co.sist.user.board.selectCom");
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return list;
//	}//selectCom
//	
//	/**
//	 * 댓글 삭제
//	 * @param cm_id
//	 * @return
//	 */
//	public int deleteCom(int cm_id) {
//		int success=0;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		success=ss.selectOne("kr.co.sist.user.board.deleteCom");
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return success;
//	}//deleteCom
//	
//	/**
//	 * 댓글 추가
//	 * @param ubVO
//	 * @return
//	 */
//	public int insertCom(UserBoardVO ubVO) {
//		int success=0;
//		
//		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
//		success=ss.selectOne("kr.co.sist.user.board.insertCom");
//		
//		if( ss !=null ) { ss.close(); }
//		
//		return success;
//	}//insertCom
//	
//	
//	
//	
//}//class
