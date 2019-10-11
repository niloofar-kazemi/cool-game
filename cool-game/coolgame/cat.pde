public class Cat {

	float speed = 1;
	float catSize = 100;
	float x;
	float y;

	PImage img;

	public Cat(float startX , float startY){
		x = startX;
		y = startY;

		img = loadImage("resources/cat.png");
	}

	public void drawMe(Mouse mouse){
		float mX = mouse.getX();
		float mY = mouse.getY();

		for (float i = 0; i < speed; i++) {
			if (x > mX) {
				x -= 1;
			}
			if (x < mX) {
				x += 1;
			}
			if (y > mY) {
				y -= 1;
			}
			if (y < mY) {
				y += 1;
			}
		}

		fill(255);
		image(img, x - catSize/2 , y - catSize/2, catSize , catSize);
	}

	public void setSpeed(float newSpeed){
		speed = newSpeed;
	}

	public void setPosition(float newX , float newY){
		x = newX;
		y = newY;
	}

	public boolean gotMouse(Mouse mouse){
		float mX = mouse.getX();
		float mY = mouse.getY();
		float mSize = mouse.getSize();

		float distance = sqrt(pow(x - mX,2) + pow(y - mY,2));
		if (distance < catSize/2 + mSize/2 - 10) {
			return true;
		}

		return false;
	}
}