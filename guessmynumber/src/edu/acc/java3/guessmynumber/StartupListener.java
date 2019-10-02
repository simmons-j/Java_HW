package edu.acc.java3.guessmynumber;

import javax.servlet.*;

public class StartupListener implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext sc = event.getServletContext();
		;
		sc.setAttribute("magicNumber", magicNumber);
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
	}
}

/*
catch (GuessTooHigh gth) {
	request.setAttribute("flash", + gth.getMessage() + " is too high. Guess LOWER!");
catch (GuessTooLow gtl) {
	request.setAttribute("flash", + gtl.getMessage() + " is too low. Guess HIGHER!");
*/