Sun s1;
Sun s2;
Sun s3;
Sun s4;

Asteroid ast1;
Asteroid ast2;

//Planet p;
Planet saturn;  // make planets to rotate around sun
Planet venus;
Planet earth;
Planet mars;

PImage solarSystem;
PImage saturnTexture;
PImage venusTexture;
PImage earthTexture;
PImage marsTexture;
float objectR = 90;
float orbitR = 100;
float dist = 200;
float angle = 0;

void setup() {
  size(1200, 900, P3D);
  solarSystem = loadImage("https://www.solarsystemscope.com/textures/download/2k_stars_milky_way.jpg");
  solarSystem.resize(800, 800);
  
  saturnTexture = loadImage("https://www.solarsystemscope.com/textures/download/2k_saturn.jpg");
  venusTexture = loadImage("https://www.solarsystemscope.com/textures/download/2k_venus_surface.jpg");
  earthTexture = loadImage("https://www.solarsystemscope.com/textures/download/2k_earth_daymap.jpg");
  marsTexture = loadImage("https://www.solarsystemscope.com/textures/download/2k_mars.jpg");
  
  saturn = new Planet(objectR/1.6, orbitR/2, dist+10, angle+50, 7, saturnTexture);
  venus = new Planet(objectR/1.6, orbitR/2, dist+90, angle+170, 9, venusTexture);
  earth = new Planet(objectR/2, orbitR/2, dist+110, angle+100, 7, earthTexture);
  mars = new Planet(objectR/4, orbitR/2, dist+45, angle+280, 13, marsTexture);
    
  s1 = new Sun(objectR, orbitR+PI*0.8, saturn);
  s2 = new Sun(objectR, orbitR+PI*0.25, venus);
  s3= new Sun(objectR, orbitR+HALF_PI, earth);  
  s4 = new Sun(objectR, orbitR*PI*3, mars);
  
  ast1 = new Asteroid(0.02, 0.12, PI/2, 485, 50, 0); // speed of asteroid around origin, speed of asteroid's rotation on axis, angle of axis of rotation, x, y, z
  ast2 = new Asteroid(0.05, 0.07, PI/4, 500, 0, 0);

}

void draw() {
  //background(solarSystem);
  background(0);
  lights();

  s1.display();
  s2.display();
  s3.display();
  s4.display();
  
  pushMatrix();
  translate(width/2, height/2);
  ast1.animate();
  ast1.display();
  ast2.animate();
  ast2.display();
  popMatrix();
}
