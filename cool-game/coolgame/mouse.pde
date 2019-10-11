public class Mouse{
	float mouseSize = 70;
	float x;
	float y;

	PImage img;

	public Mouse(float startX , float startY){
		x = startX;
		y = startY;

		img = loadImage("resources/mouse.png");
	}

	public void drawMe(float x , float y) {
		this.x = x;
		this.y = y;
		fill(255);
		image(img, x - mouseSize/2 , y - mouseSize/2, mouseSize , mouseSize);
	}

	public float getX(){
		return x;
	}

	public float getY(){
		return y;
	}

	public float getSize(){
		return mouseSize;
	}

	public void setPosition(float newX , float newY){
		x = newX;
		y = newY;
	}

	public boolean gotCheese(Cheese cheese){
		float cX = cheese.getX();
		float cY = cheese.getY();
		float cSize = cheese.getSize();

		float distance = sqrt(pow(x - cX,2) + pow(y - cY,2));
		if (distance < mouseSize/2 + cSize/2 ) {
			return true;
		}

		return false;
	}
}