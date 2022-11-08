Fish Fred;
Fish Bob;
butterfly Butter;
Creature Rock;
int animalToDraw;

/*
0 - fish
1 - butterfly
2 - creature */

ArrayList<Animal>zoo;
int move;
boolean goingdown;

void setup() {
  size(500,500);
  Animal.setDim(500,500);
  zoo = new ArrayList<Animal> ();
   
  goingdown = true;
}

void draw() {
  background(255);
  for(int i=0; i < zoo.size(); i++){
    zoo.get(i).draw();
    zoo.get(i).walk();
  }
}

void keyPressed(){
  if(key == 'f')
    animalToDraw = 0;
  if(key == 'b')
    animalToDraw = 1;
  if(key == 'c')
    animalToDraw = 2;
}

void mouseClicked(){
  if(animalToDraw == 0)
    zoo.add(new Fish(color (116,204,186), color(99,98,96), mouseX, mouseY, 1));
  if(animalToDraw == 1)
    zoo.add(new butterfly(color (#e28743), color (#eab676), color (#76b5c5), color (#1e81b0), color (#abdbe3), mouseY, mouseX, 10));
  if(animalToDraw == 2)
    zoo.add(new Creature(color (#d1a0de), color (#703780), 1, mouseX, mouseY));
}
