/**
* This class draws various animals depending on which key is pressed before
* the mouse is clicked.
* It uses an array list to store the different animals and their given parameters.
*
* @author S. Cain
* @version 1.0.0
*/

int animalToDraw;
ArrayList<Animal>zoo;

/** 
* Sets the size of the sketch using size imputs and calls setDim() to tell 
* the Animal class the size of the sketch.
* Creates a new array list named zoo.
*/
void setup() {
  size(500,500);
  Animal.setDim(500,500);
  zoo = new ArrayList<Animal> ();   
}

/**
* Sets the background color of the sketch, draws and makes the animal drawn walk.
*/
void draw() {
  background(255);
  for(int i=0; i < zoo.size(); i++){
    zoo.get(i).draw();
    zoo.get(i).walk();
  }
}

/**
* Sets animalToDraw equal to a number based on the key that is pressed.
*/
void keyPressed(){
  if(key == 'f')
    animalToDraw = 0;
  if(key == 'b')
    animalToDraw = 1;
  if(key == 'c')
    animalToDraw = 2;
}

/**
*draws an animal based on the number that is stored in animalToDraw
*/
void mouseClicked(){
  if(animalToDraw == 0)
    zoo.add(new Fish(color (116,204,186), color(99,98,96), mouseX, mouseY, 1));
  if(animalToDraw == 1)
    zoo.add(new butterfly(color (#e28743), color (#eab676), color (#76b5c5), color (#1e81b0), color (#abdbe3), mouseY, mouseX, 10));
  if(animalToDraw == 2)
    zoo.add(new Creature(color (#d1a0de), color (#703780), 1, mouseX, mouseY));
}
