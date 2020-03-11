// the sun is a space object with large radius, small orbit radius

class Sun extends SpaceObject {
  float x;
  float y;
  PShape sun;  // create sun
  
  PImage planetSkin;
  PImage sunSurface;  
  Planet p;  // create a planet object
    
  Sun(float objectR, float orbitR, Planet p) {
    super(objectR, orbitR);
    this.x = width/2;  // put sun in center of screen
    this.y = height/2;
    this.p = p;  // object, Planet
    
    sun = createShape(SPHERE, objectR);  // create sun with radius objectR
    sunSurface = loadImage("https://www.solarsystemscope.com/textures/download/2k_sun.jpg");
    noStroke();
  }
  
  void display() {     
    pushMatrix();
      translate(x, y, 0); // put sun in center
      lights();  // add lights for aesthetic effect
      rotateY(radians(5*HALF_PI/7 * frameCount));  // spin the sun
      rotateX(orbitR); orbitR += TWO_PI;
      sun.setTexture(sunSurface); // add sun texture
      shape(sun);  // draw sun
      p.display();  // draw planets!
    popMatrix();
  }
}
