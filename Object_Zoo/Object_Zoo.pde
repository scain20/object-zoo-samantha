Fish Fred;
Fish Bob;
int move;
boolean goingdown;
void setup() {
  size(500,500);
  Bob = new Fish(color (116,204,186), color(99,98,96), 100, 50, 1);
  Fred = new Fish(color (255,197,148), color (99,98,96), 100, 50, 2);
  goingdown = true;
}

void draw() {
  background(255);
  Fred.draw();
  Fred.move(mouseX, mouseY);
  Bob.draw();
  if (goingdown == true)
    move += 1;
  if (goingdown == false)
    move -= 1;
  if (move == 450)
    goingdown = false;
  if (move == 30)
    goingdown = true;
  Bob.move(move,move);
}
