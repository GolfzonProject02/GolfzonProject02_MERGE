package worktalk.com.user.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 
 * @author Juhee Fred Lee (이주희)
 * Interceptor class for mypage
 *
 */
public class MypageInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(MypageInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String sPath = request.getServletPath();
		logger.info("preHandle: {}",sPath);
		
		HttpSession session = request.getSession();
		String user_name = (String) session.getAttribute("user_name");
		logger.info("{}", user_name);
		
		if (sPath.equals("/mypage/update.do")||sPath.equals("/mypage/leave.do")
				|| sPath.equals("/mypage/reservation.do")||sPath.equals("/mypage/findByStatus.do")
				) {
			if (user_name == null) {
				response.sendRedirect("http://localhost:8100/user/login.do");
				return false;
			}
		}
		
		return true;
	}

}
