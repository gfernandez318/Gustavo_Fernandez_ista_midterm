// A Cell object  
class Cell  {   
  float x,y;  
  float w,h;  
  int state;  

  // Cell Constructor  
  Cell(float tempX, float tempY, float tempW, float tempH)  {   
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = int(0); 
  }   

  void click(int mx, int my)  {   
    if (mx > x && mx < x + w && my > y && my < y + h) {
      state = (state + 1) % 2; 
    }
  }   

  void display()  {   
    stroke(0);
    noFill();
    rect(x,y,w,h);    
    int b = 8;

    if (state == 0) {
      // nothing
    } else if (state == 1) {
      // Draw an O
      ellipse(x+w/2,y+h/2,w-b,h-b);
    } 
  }
}
