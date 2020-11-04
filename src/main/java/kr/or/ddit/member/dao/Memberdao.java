package kr.or.ddit.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.or.ddit.member.db.MybatisUtil;
import kr.or.ddit.member.model.MemberVo;

@Repository("memberDao")
public class Memberdao implements MemberDaoI {

	@Override
	public MemberVo getMember(String userid) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		MemberVo mvo = sqlSession.selectOne("member.getMember",userid);
		sqlSession.close();
		return mvo;
	}

}
