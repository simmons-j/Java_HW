<!-- INITIAL/DEFAULT VIEW -->
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Guessing Game</title>
	</head>
	<body>
		
		<h1>Can you guess my number?</h1>
		
		<p>
			<strong>
			Rules of the game
			</strong>
		</p>
		
		<p>The rules are simple. The computer picks a random whole number between 1 and 100. You 
		have 8 attempts to correctly guess that number. If you are able to guess the number within 8 
		attempts, you win!</p>
		<!-- Clicking the button should take the user to a new view to start the game -->
		<form method="GET" action="guess.jsp">
			<input
				type="submit" 
				value="Click to Play">
			</input>
		</form>
	</body>
</html>

