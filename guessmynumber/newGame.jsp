<!-- INITIAL/DEFAULT VIEW -->
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
		
		<!-- Display this section only if the user has submitted a prior guess -->
		<c:if test="${not empty guessList}">
		<%include file="/WEB-INF/views/guessList.jspf"%>
			<h2>You guessed <tt>${lastGuess}</tt>.</h2><br></c:if>

		<!-- Display this message is the user guesses too low -->
		<p>Guess higher!</p>
			
			
			
		</form>
	</body>
</html>

