/* GUESSMYNUMBER FRONT CONTROLLER */
package edu.acc.java3.guessmynumber;

import java.io.*;                   // for IOException and PrintWriter
import java.util.*;
import javax.servlet.*;             // for ServletException
import javax.servlet.http.*;        // for HttpServlet, HttpServletRequest, and HttpServletResponse

public class FrontController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		final int theNumber = 1 + (int)(Math.random() * 100);
		request.setAttribute("theNumber", number);
		request.getRequestDispatcher("guess.jsp").forward(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}
}

