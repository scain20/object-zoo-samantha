class butterfly extends Animal{
  
  color bodyColor;
  color lowerWingColor;
  color upperWingColor; 
  color upperInnerWingColor;
  color antennaColor;
  
  
 public butterfly(color ac, color bc, color lwc, color uwc, color uiwc, int y, int x, int Size) {
    super(x, y, Size);
    this.antennaColor = ac;
    this.bodyColor = bc;
    this.lowerWingColor = lwc;
    this.upperWingColor = uwc;
    this.upperInnerWingColor = uiwc;  
  }
  
  public void draw (){
    
    fill(antennaColor);
    ellipse(getX() + getSize() * (-0.4), getY() + getSize() * (-5), 0.2 * getSize(), 2 * getSize());
    ellipse(getX() + getSize() * 0.4, getY() + getSize() * (-5), 0.2 * getSize(), 2 * getSize());
    
    fill(lowerWingColor);
    ellipse(getX() + getSize() * (-1.9), getY() + getSize() * 0.9, 6 * getSize(), 6 * getSize());
    ellipse(getX() + getSize() * 1.9, getY() + getSize() * 0.9, 6 * getSize(), 6 * getSize());
    
    fill(upperWingColor);
    ellipse(getX() + getSize() * (-2.5), getY() - getSize() * 2, 5 * getSize(), 5 * getSize());
    ellipse(getX() + getSize() * 2.5, getY() - getSize() * 2, 5 * getSize(), 5 * getSize());
      
    fill(upperInnerWingColor);
    ellipse(getX() + getSize()*(-2.5), getY() - getSize()*2, 2 * getSize(), 2 * getSize());
    ellipse(getX() + getSize()*2.5, getY() - getSize()*2, 2 * getSize(), 2 * getSize());
    
    fill(bodyColor);
    ellipse(getX(), getY(), 2 * getSize(), 9 * getSize() );
  }
}
    
    
    
