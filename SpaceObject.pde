// this is a class for all large spherical objects in space
// all space objects have a radius, and an orbit radius

class SpaceObject {
  float objectR;  // radius of planet
  float orbitR;   // radius of orbit
  
  SpaceObject(float objectR, float orbitR) {
    this.objectR = objectR;
    this.orbitR = orbitR;
  }
}
