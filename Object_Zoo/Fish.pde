/**
* This class creates a fish using different shapes.
* It has a superclass that extends the Animal class and inherits the methods
* within that class including, walk, getSize, getY, and getX.

* @author S. Cain
* @version 1.0.0
*/

class Fish extends Animal {
  color bodyColor;
  color eyeColor;

  /**
  * Constructs a fish at a given location using the colors and size given.
  *
  * @param bc The body color of the fish.
  * @param ec The eye color of the fish.
  * @param x The x-coordinate of the fish.
  * @param y The y-coordinate of the fish.
  * @param size The scale factor of the fish.
  */
  public Fish (color bc, color ec, int x, int y, int size) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
  }
  
  /**
  * Draws the fish on the canvas using the size and color parameters given.
  */
  @Override 
  public void draw() {
    fill(bodyColor);
    stroke(bodyColor);
    ellipse(getX(), getY(), 70 * getSize(), 50 * getSize());
    triangle(getX() + getSize() * 25, getY(), getX() + getSize() * 50, getY() - getSize() * 25, getX() + getSize() * 50, getY() + getSize() * 25);
    fill(eyeColor);
    stroke(eyeColor);
    ellipse(getX() - getSize() * 15, getY() - getSize() * 10, 10 * getSize(), 10 * getSize());
  }
}
