<!-- GUESSMYNUMBER PRIMARY IN-PLAY VIEW -->
<!DOCTYPE html>
<html>
	<head>
		<title>Guessing Game</title>
	</head>
	<body>	
		<h1>Can you guess my number?</h1>
		<p>
			<strong> 
			A whole number between 1 and 100 has been chosen. See if you can guess the number. 
			</strong>
		</p>
		<!-- Prompt the user to enter their guess -->
		<form method="POST" action="main">
			Enter your guess: <input type="text" name="guess" required/>
			<input type = "submit" value = "Submit"></input>
		</form>

<!-- My thought was to create cookies for the random number and the number of incorrect guesses by user -->
		Cookie theNumber = new Cookie("theNumber", request.getParameter("theNumber"));
		Cookie guesses = new Cookie("guesses", request.getParameter("guesses"));
<!-- Here I am trying to store these cookies in the response header -->
		response.addCookie(${num:generateNumber()});
		response.addCookie(guesses);
		
<!-- Still working on the scriptlet below. I'm thinking this needs to be done in a separate file though --> 		
		<%=
		while (input != theNumber) {
            request.getAttribut("guesses");
			int guesses++;
            try {
                guess = Integer.parseInt(input);
            } catch (NumberFormatException nfe) {
                System.out.println("<p>Only numbers between 1 and 100, please!</p>");
                continue;
            }
            if (guess < theNumber)
                System.out.println("<p>Guess higher!</p>");
            else if (guess > theNumber)
                System.out.println("<p>Guess lower!</p>");
            else break;
        }
		%>
		<form method="GET" action="main.jsp">
			<input type="submit" value="Quit"></input>
		</form>
		<br>
		<p>You have used <c:out value"${guesses}"> out of 8 attempts.</p>
	</body>
</html>

