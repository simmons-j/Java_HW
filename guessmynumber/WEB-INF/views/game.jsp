<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Guessing Game</title>
	</head>
	<body>
		<h1>Can you guess my number?</h1>
		<p><strong>Rules of the game</strong></p>
		<p>The rules are simple. I pick a random whole number between 1 and 100; then you try to guess it. 
		If you are able to guess the number within 8 attempts, you win!</p>
		<br>
		<br>
		<form method="POST" action="main">
			Enter your guess: 
			<input type="hidden" name="action" value="guess">
			<input type="text" name="guess">
			<input type="submit" value="Submit">
		</form>
		<br>
		<br>
		<!-- Display the last guess here -->
		<c:if test="${not empty lastGuess}"><p>You guessed ${lastGuess}.</p>
		</c:if>
		
		<!-- Display the message to guess higher or lower 
		<c:if test=>
		</c:if> 
		-->
			
		<!-- Display this section only if the user has submitted a prior guess -->
		<c:if test="${not empty guessList}">
		<p><strong>You have used ${game.guesses} out of your 8 guesses.</strong></p>
		<br>
		<%include file="/WEB-INF/views/guessList.jspf"%>
		</c:if>
	</body>
</html>

