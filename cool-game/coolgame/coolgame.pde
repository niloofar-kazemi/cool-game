PImage gameBackground;
boolean puase = false;
Player player;

void setup() {
  size( 540 , 960);
  frameRate(60);
  gameBackground = loadImage("resources/bkg.jpg");
  player = new Player();
}

void draw() {
  background(gameBackground);
  player.drawMe();
}

void keyPressed(){
	println("keyCode: "+keyCode);
	if(keyCode == 32){
		if (puase) {
			loop();
			puase = false;
		}else{
			noLoop();
			puase = true;
		}
	}
}

void mousePressed() {
	player.buttonClicked(mouseX , mouseY);
}

