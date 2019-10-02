package edu.acc.java3.guessmynumber;

import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StartupListener implements ServletContextListener {
	// I want to save the player's wrong guesses so I can display them in the guess.jsp view
	@Override //initialze the database connection and store prior guesses as a context attribute
	public void contextInitialized(ServletContextEvent event) {
		Set<String> previousGuesses = new HashSet<>();
		event.getServletContext().setAttribute("previousGuesses", previousGuesses);
	}
	
	@Override //close the database connection
	public void contextDestroyed(ServletContextEvent event) {
		
	}
	
}