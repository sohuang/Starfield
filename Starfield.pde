NormalParticle test = new NormalParticle();

void setup() {
	//your code here
}

void draw() {
	//your code here
	test.move();
	test.show();
}

class NormalParticle {
	int myColor;
	double myX, myY, mySpeed, myAngle;

	NormalParticle() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 10;
		myAngle = Math.random() * PI;
	}

	void show() {
		ellipse((int)myX, (int)myY, 5, 5);
	}

	void move() {
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}
}

interface Particle {
	public void show();
	public void move();
}

class OddballParticle { //uses an interface
	//your code here
}

class JumboParticle { //uses inheritance
	//your code here
}