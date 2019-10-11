public class Cheese{
	float cheeseSize = 40;
	float x;
	float y;

	PImage img;

	public Cheese(float startX , float startY){
		x = startX;
		y = startY;

		img = loadImage("resources/cheese.png");
	}

	public void drawMe() {
		fill(255);		
		image(img, x - cheeseSize/2 , y - cheeseSize/2, cheeseSize , cheeseSize);
	}

	public float getSize(){
		return cheeseSize;
	}

	public float getX(){
		return x;
	}

	public float getY(){
		return y;
	}

	public void setPosition(float newX , float newY){
		x = newX;
		y = newY;
	}
}