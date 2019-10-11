public class Player{
	int score = 0;
	String state = "start";
	Button startButton;
	Button resetButton;
	Mouse mouse;
	Cat cat;
	Cheese cheese;

	public Player(){		
		mouse = new Mouse(400 , 700);
		cat = new Cat(0 , 0);
		cheese = new Cheese(random(0, width-30),random(0, height-30));
		startButton = new Button(width/2 - 600/2, height/2 - 522/2 , 600, 522 , "start.jpg");
		resetButton = new Button(width/2 - 2310/10 , height/2 - 2168/10 , 2310/5, 2168/5 , "tryagain.png");
	}

	public void gameOver(){
		state = "gameOver";
	}

	public void startGame(){
		cat.setPosition(0 , 0);
		mouse.setPosition(400 , 700);
		cat.setSpeed(1);
		score = 0;

		state = "playing";
	}

	public void drawMe(){
		if(state.equals("start")){
			startButton.drawMe();
		}else if(state.equals("playing")){
			mouse.drawMe(mouseX , mouseY);
			cat.drawMe(mouse);
			cheese.drawMe();

			if (mouse.gotCheese(cheese)) {
				score ++;				
				cheese.setPosition(random(0, width-30),random(0, height-30));
				cat.setSpeed(1+score/3);
			}

			if (cat.gotMouse(mouse)) {
				gameOver();
			}


			textSize(40);			
			float textWidth = textWidth("Score : " + score);
			fill(0);
			text("Score : " + score , width/2 - textWidth/2 , 40);

		}else if(state.equals("gameOver")){
			resetButton.drawMe();
		}
	}

	public void buttonClicked(float pressedX , float pressedY){
		if(state.equals("start")){
			if (startButton.hasPressed(pressedX , pressedY)) {
				startGame();
			}
		}else if(state.equals("gameOver")){
			if (resetButton.hasPressed(pressedX , pressedY)) {
				startGame();
			}
		}
	}
}