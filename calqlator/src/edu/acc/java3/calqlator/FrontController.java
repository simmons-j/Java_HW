package edu.acc.java3.calqlator;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FrontController extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		if (request.getMethod().equalsIgnoreCase("GET")) return destination;
		
		String operand = request.getParameter("operand"), destination;
		
		double op1 = Double.parseDouble(num1)
		double op2 = Double.parseDouble(num2)
		switch (action) {
			case "+" : return = op1 + op2; 
				break;
			case "-" : return = op1 - op2; 
				break;
			case "/" : return = op1 / op2; 
				break;
			case "*" : return = op1 * op2; 
				break;
			case "mod" : return = op1 % op2; 
				break;
			default: 
				throw IllegalArgumentException();
		}

		request.getRequestDispatcher(destination + ".jsp")
			.forward(request,response);
	}

	protected String add(HttpServletRequest request) {
		if (request.getMethod().equalsIgnoreCase("GET"))
			return "add";
		String email = request.getParameter("email");
		email = email.trim().toLowerCase();
		if (!email.matches("^.+@.+\\..+$")) {
			request.setAttribute("flash", "Invalid email address");
			return "subscribe";
		}
		Set<String> subscribed = (Set<String>)this.getServletContext().getAttribute("subscribed");
		Set<String> unsubscribed = (Set<String>)this.getServletContext().getAttribute("unsubscribed");
		subscribed.add(email);
		unsubscribed.remove(email);
		request.setAttribute("success", "Thank you for subscribing!");
		return "subscribe";
	}