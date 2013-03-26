
/*
To finish the program, I would create a generator of X's. They would be placed depending 
on where the user draws the circle. 
*/


Cell[][] board;  
int cols = 20;  
int rows = 20;  
void setup()  {   
  size(700,700);
  smooth();

  int w = width/cols;
  int h = height/rows;

  board = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i*w,j*h,w,h);
    }   
  }   
}   


void draw()  {   
  background(255);  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();  
    }   
  }  
}   



void mousePressed()  {   
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].click(mouseX,mouseY);  
    }   
  } 
} 


