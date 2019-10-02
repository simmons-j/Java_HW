<!--
Write a Java web application for the service CalQLator which

On first load, displays two text fields and a drop-down list of operators along with a submit button

    [    ] (+ - * / % ^) [    ]

    {Execute}
	
When the user enters two numbers and selects an operator, submitting the form returns a view displaying the result of the requested operation followed by the same form for entering a new operation followed by a growing list of previously requested calqlations

    Welcome to CalQLator

    2.0 + 3.5 = 5.5

    [    ] (+ - * / % ^) [    ]

    {Execute}

    Previous Calculations
    2.0 + 3.5 = 5.5
    21.0 / 3.0 = 7.0
    3.0 ^ 3.0 = 27.0
	
When the user submits two non-numbers or fails to select an operator, the form displays a red flash error message followed the same form again followed by a list of any previously requested calqlations.

    Welcome to CalQLator

    Foo is not a valid operand. Enter only real numbers, please.

    [    ] (+ - * / % ^) [    ]

    {Execute}

    Previous Calculations
    2.0 + 3.5 = 5.5
    21.0 / 3.0 = 7.0
    3.0 ^ 3.0 = 27.0
-->

<!DOCTYPE html>
<html>
	<head>
		<title>CalQLator</title>
	</head>
	<body>
		<h1>Welcome to CalQLator</h1>
		<hr>
		<br>
		<p><strong>Enter your Calculation</strong></p>
		<form method="POST" action="main" value="calculate">
			<input type="text" name="num1" size="2" placeholder="0.0" required> </input>
			<input list="operand" name="operand" size="1" required> </input>
				<datalist id="operand">
					<option name="+" value="+">
					<option name="-" value="-">
					<option name="*" value="*">
					<option name="/" value="/">
					<option name="mod" value="mod">
				</datalist>
			<input type="text" name="num1" size="2" placeholder="0.0" required> </input>
		<br>
			<input type="submit" value="Mathmatize!"/>
		</form>	
		<br>
		<br>
		<hr>	
		<p><strong>Previous Mathmatizations</strong></p>
		<p>previous calculations go here ${}</p>
	</body>
</html>

