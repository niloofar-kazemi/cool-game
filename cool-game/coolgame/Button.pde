public class Button{
	float buttonWidth;
	float buttonHeight;
	float x;
	float y;
	String text;

	PImage img;

	public Button(float x,float y,float buttonWidth,float buttonHeight,String text){
		this.x = x;
		this.y = y;
		this.buttonWidth = buttonWidth;
		this.buttonHeight = buttonHeight;
		this.text = text;

		img = loadImage("resources/" + text);
	}

	public void drawMe(){
		fill(255);		

		image(img, x , y,buttonWidth,buttonHeight);
	}

	public boolean hasPressed(float pressedX , float pressedY){
		if (pressedX > x && pressedX < x + buttonWidth && pressedY > y && pressedY < y + buttonHeight) {
			return true;
		}
		return false;
	}
}