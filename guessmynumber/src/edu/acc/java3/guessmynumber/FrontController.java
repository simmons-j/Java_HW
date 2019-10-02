package edu.acc.java3.guessmynumber;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FrontController extends HttpServlet {
	
	private String actionDefault; // the initial action of your app
	private String viewDir;		  // the folder where your JSPs are stored
	private String viewType;	  // the filename extension of your preferred view language (.jsp for us)
	
	@Override
	public void init() {
		ServletContext sc = this.getServletContext();
		actionDefault = sc.getInitParameter("action.default");
		viewDir = sc.getInitParameter("view.dir");
		viewType = sc.getInitParameter("view.type");
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		String action = request.getParameter("action"), destination = actionDefault;
		if (action == null || action.length() < 1) action = actionDefault;
		switch (action) {
			default:
		}
		request.getRequestDispatcher(viewDir + "/" + destination + viewType).forward(request, response);		
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		processRequest(request, response);
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		processRequest(request, response);
	}
}