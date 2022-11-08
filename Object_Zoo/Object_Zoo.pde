//declaring variables
// stores what animal to draw
int animalToDraw;
ArrayList<Animal>zoo;
 
void setup() {
  //sets size of the sketch
  size(500,500);
  //tells Animal class what the size of the sketch is 
  Animal.setDim(500,500);
  //creates new array list called zoo
  zoo = new ArrayList<Animal> ();   
}


void draw() {
  //sets the background color of the sketch
  background(255);
  //draws each animal and makes them walk
  for(int i=0; i < zoo.size(); i++){
    zoo.get(i).draw();
    zoo.get(i).walk();
  }
}

//sets animalToDraw equal to a number based on the key that is pressed
void keyPressed(){
  if(key == 'f')
    animalToDraw = 0;
  if(key == 'b')
    animalToDraw = 1;
  if(key == 'c')
    animalToDraw = 2;
}

//draws an animal based on the number that is stored in animalToDraw
void mouseClicked(){
  if(animalToDraw == 0)
    zoo.add(new Fish(color (116,204,186), color(99,98,96), mouseX, mouseY, 1));
  if(animalToDraw == 1)
    zoo.add(new butterfly(color (#e28743), color (#eab676), color (#76b5c5), color (#1e81b0), color (#abdbe3), mouseY, mouseX, 10));
  if(animalToDraw == 2)
    zoo.add(new Creature(color (#d1a0de), color (#703780), 1, mouseX, mouseY));
}
