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
			<input type="hidden" name="action" value="guess"></input>
			<input type="text" name="action" value="guess"></input>
			<input type = "submit" value = "Submit"></input>
		</form>
		<form method="GET" action="guess.jsp">

		</form>
	</body>
</html>

