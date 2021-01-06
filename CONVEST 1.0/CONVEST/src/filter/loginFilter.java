package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class loginFilter {
	
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession(true);
		res.setContentType("text/html");
		res.setCharacterEncoding("UTF-8");
		PrintWriter out = res.getWriter();
		String request_uri = req.getRequestURI();
		String ctxPath = req.getContextPath();
		String uri = request_uri.substring(ctxPath.length());
		
		if(uri.contains("login")) {//登录页面则继续
			if(null != session.getAttribute("id")) {//已登录则返回首页
				res.setHeader("refresh", "1; url=" + ctxPath + "/首页.jsp");
			} else {
				chain.doFilter(request, response);
			}
		}else
			if(null != session.getAttribute("id")) {//已登录
				chain.doFilter(request, response);
			} else {//未登录
				res.setHeader("refresh", "1; url=" + ctxPath + "/个人中心.jsp");
				return;
			}
	}

	
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
