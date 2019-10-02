package edu.acc.java3.guessmynumber;

public class Inurds {
	private int magicNumber;
	private int guesses;
	private int lastGuess;


	public Inurds(int magicNumber) {
		this.setAnswer(magicNumber);
		answer = 1 + (int)(Math.random() * 100);
	}

	public int getGuesses() { return guesses; }
	public int getAnswer() {return answer; }
	public int getLastGuess() { return lastGuess; }

	public int guess(int guess) {
		lastGuess = guess;
		guesses++;
		if (guess == answer) return 1; // Get it? 'Cause you "one". Hahahahah!
		else if (guess < answer) return 0;
		else return 2;
		
	}
}