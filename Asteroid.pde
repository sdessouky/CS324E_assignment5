PShape asteroid;

class Asteroid {
  float x;
  float y; 
  float z;
  float angleRotation; //angle of asteroid on its origin
  float angleOriginRotation; //angle of asteroid's rotation around another origin point
  float angleAxisPoint; //angle of axis of rotation
  float rotSpeed; //speed of asteroid's rotation
  float astSpeed; //speed of asteroid's rotation around another point
  
  Asteroid(float speedAst, float speedRot, float rotateAng, float X, float Y, float Z) {
     asteroid = loadShape("Asteroid_1_LOW_MODEL_.obj");
     x = X; 
     y = Y; 
     z = Z;
     angleOriginRotation = speedAst;  //speed/angle of asteroid's rotation around another origin point
     angleRotation = speedRot;  //speed/angle of asteroid on its origin
     angleAxisPoint = rotateAng; //angle of axis of rotation
  }

  void display() {
    pushMatrix();
    rotateX(angleAxisPoint); //angle of axis of rotation (axis of another rotation point)
    rotateY(astSpeed); //speed of asteroid around another rotation point
    translate(x, y, z);
    rotateZ(rotSpeed); //speed of asteroid rotating on its own axis
    scale(18);
    shape(asteroid, 0, 0);
    popMatrix();
  }

  void animate() {
    rotSpeed += angleRotation; //animates asteroid on its own axis
    astSpeed += angleOriginRotation; //animates asteroid around another point
  }
}
