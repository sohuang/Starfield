Particle[] theParticles = new Particle[10];

void setup() {
	size(600, 400);
	background(255);
	if (theParticles.length >= 3) {
		theParticles[0] = new OddballParticle();
		theParticles[1] = new JumboParticle();
		for (int i = 2; i < theParticles.length; i++) {
			theParticles[i] = new NormalParticle();
		}
	}
}

void draw() {
	for (int i = 0; i < theParticles.length; i++) {
		theParticles[i].move();
		theParticles[i].show();
	}
}

void mouseClicked() {
	for (int i = 0; i < theParticles.length; i++) {
		theParticles[i].restart();
	}
}

void keyPressed() {
	if (key == ' ')
	background(255);
}

class NormalParticle implements Particle {
	int myWidth, myHeight, myColor;
	double myX, myY, mySpeed, myAngle;

	NormalParticle() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 10 - 5;
		myAngle = Math.random() * PI;
		myWidth = myHeight = 5;
	}

	void show() {
		ellipse((float)myX, (float)myY, myWidth, myHeight);
	}

	void move() {
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}

	void restart() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 10 - 5;
		myAngle = Math.random() * PI;
	}
}

interface Particle {
	public void show();
	public void move();
	public void restart();
}

class OddballParticle implements Particle {
	int myWidth, myHeight, myColor;
	double myX, myY, mySpeed, myAngle;

	OddballParticle() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 6 - 3;
		myAngle = Math.random() * PI;
		myWidth = 30;
		myHeight = 20;
	}

	void show() {
		rectMode(CENTER);
		rect((float)myX, (float)myY, myWidth, myHeight);
	}

	void move() {
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}

	void restart() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 6 - 3;
		myAngle = Math.random() * PI;
	}
}

class JumboParticle extends NormalParticle {
	JumboParticle() {
		myWidth = myHeight = 50;
	}
}