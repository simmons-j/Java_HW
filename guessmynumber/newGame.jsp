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
		<!-- Clicking the button should take the user to a new view to start the game -->
		<form method="GET" action="guess.jsp">
			<input
				type="submit" 
				value="Click to Play">
			</input>
		</form>
	</body>
</html>

