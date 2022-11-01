class Fish extends Animal {
  color bodyColor;
  color eyeColor;

  public Fish (color bc, color ec, int x, int y, int size) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
  }

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
