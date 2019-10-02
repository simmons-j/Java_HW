<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Guessing Game</title>
	</head>
	<body>
	
		<h1>You guessed my number in <c:out value"${guesses}"> guesses!</h1>

		<p>
			<strong> 
			Want to play again? 
			</strong>
		</p>
		<form method="GET" action="guess.jsp">
			<input
				type="submit" 
				value="Yes, please!">
			</input>
		</form>
		<form method="GET" action="main.jsp">
			<input
				type="submit" 
				value="No, thanks.">
			</input>
		</form>
	</body>
</html>