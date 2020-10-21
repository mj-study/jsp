package kr.or.ddit.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.member.model.MemberVO;

public class SessionAttributeListener implements HttpSessionAttributeListener{
	private static final Logger logger = LoggerFactory.getLogger(SessionAttributeListener.class);
	
	//			userid	MemberVo
	private Map<String, MemberVO> userMap = new HashMap<>();
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		if("S_MEMBER".equals(event.getName())){
//			HttpSession session = event.getSession();
//			MemberVO memberVo = (MemberVO)session.getAttribute("S_MEMBER");
			MemberVO memberVo = (MemberVO)event.getValue();
			logger.debug("사용자 로그인 : {}",memberVo.getUserid());
			userMap.put(memberVo.getUserid(), memberVo);
			ServletContext sc = event.getSession().getServletContext();
			sc.setAttribute("userMap", userMap);
		}
		
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		if("S_MEMBER".equals(event.getName())){
			MemberVO memberVo = (MemberVO)event.getValue();
			userMap.remove(memberVo.getUserid());
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
	}

}