package com.yd.lib.users.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yd.lib.book.vo.BookVO;
import com.yd.lib.users.vo.UserLoanInfoVO;
import com.yd.lib.users.vo.UserWishInfoVO;
import com.yd.lib.users.vo.UserYeyakInfoVO;
import com.yd.lib.users.vo.UsersVO;

@Repository("UsersDAO")
public class UsersServiceImpl {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public void userInsert(HashMap<String, Object> param) {
		
		sqlSession.insert("userJoin", param);
	}
	//로그인시 확인사항
	
	public UsersVO userLoginCheck(UsersVO vo) {
		
		return sqlSession.selectOne("loginCheck",vo);
	}
	
	
	//회원가입시 확인사항
	public UsersVO emailCheck(@Param("p") String email) {
		
		return sqlSession.selectOne("emailCheck",email);
	}

	public UsersVO phoneCheck(@Param("p") String tel) {
		
		return sqlSession.selectOne("telCheck",tel);
	}

	public UsersVO idCheck(@Param("p") String id) {
		
		return sqlSession.selectOne("idCheck",id);
	}

	
	//회원정보 업데이트
	public void userPwUpdate(HashMap<String, Object> param) {
		
		sqlSession.update("userPwUpdate", param);
	}
	
	public void userEmailUpdate(HashMap<String, Object> param) {
	
		sqlSession.update("userEmailUpdate", param);
	}

	public void userPhoneUpdate(HashMap<String, Object> param) {
	
	sqlSession.update("userPhoneUpdate", param);
	}
	public void userAddrUpdate(HashMap<String, Object> param) {
	
	sqlSession.update("userAddrUpdate", param);
	}
	


	
	//회원 대출내역조회
	public List<UserLoanInfoVO> userLoanList(String user_Id) {
		return sqlSession.selectList("userLoanList" , user_Id);
	}
	
	//대출중인도서 권수
		public int loanBooksCount(String user_Id) {
				return sqlSession.selectOne("loanBooksCount" , user_Id);
	}
		
	//연체중인도서 권수
		public int overDueBooksCount(String user_Id) {
			return sqlSession.selectOne("overDueBooksCount" , user_Id);
	}
	//대출정지 만료일
		public String loanSuspensionDate(String user_Id) {
			return sqlSession.selectOne("loanSuspensionDate" , user_Id);
	}
		
	//회원 예약현황조회
	public List<UserYeyakInfoVO> userYeyakList(String user_Id) {
		return sqlSession.selectList("userYeyakList" , user_Id);
	}
	
	//예약취소
		public void yeyakCancel(String yeyak_Num) {
			
			sqlSession.delete("yeyakCancel", yeyak_Num);
		}
	
	//회원 희망도서내역조회
	public List<UserWishInfoVO> userWishList(String user_Id) {
		return sqlSession.selectList("userWishList" , user_Id);
	}
	

}
