Particle[] theParticles = new Particle[10];

void setup() {
	size(600, 400);
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
		// theParticles[i].bounce();
		theParticles[i].move();
		theParticles[i].show();
	}
}

class NormalParticle implements Particle {
	int myWidth, myHeight, myColor;
	double myX, myY, mySpeed, myAngle;

	NormalParticle() {
		myX = Math.random() * width;
		myY = Math.random() * height;
		mySpeed = Math.random() * 10;
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
		mySpeed = Math.random() * 6;
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
}

class JumboParticle extends NormalParticle {
	JumboParticle() {
		myWidth = myHeight = 50;
	}
}