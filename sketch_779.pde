//Global Variables
Boolean circle1Move = false, circle2Move = false, circle1Target = false, circle2Target = false;
int circle1TargetX, circle1TargetY, circle2TargetX, circle2TargetY;


void setup() {
  size(800, 600);
  screenSizeChecker();
  //GUI_Design();
  origonalPieces();
}

void draw() {
  if (circle1Move == true) {
    origonalPieces();
    fill(purple);
    circleDiameter = width*1/8;
    ellipse(mouseX, mouseY, circleDiameter, circleDiameter); // Circle #1
    fill(reset);
  }
  
  if (circle2Move == true) { //Moving Circle 2
    origonalPieces();
    fill(yellow);
    ellipse(mouseX, mouseY, circleDiameter, circleDiameter);// Circle #2
    fill(reset);
  }
 //2println("MouseX: ", mouseX, "MouseY: ", mouseY); 
}

void mouseClicked() {
  if (mouseX>width*1/4-circleDiameter/2 && mouseX<width*1/4+circleDiameter/2 && mouseY>height*3/4-circleDiameter/2 && mouseY<height*3/4+circleDiameter/2) {
    circle1Move = true;
    println("Clicked Inside Circle 1");
  }
  
  if (mouseX>width*3/4-circleDiameter/2 && mouseX<width*3/4+circleDiameter/2 && mouseY>height*3/4-circleDiameter/2 && mouseY<height*3/4+circleDiameter/2) {
    circle2Move = true;
    println("Clicked Inside Circle 2");
  }
  
  if (mouseX>width*1/8 && mouseX<(width*1/8+width*1/4) && mouseY>height*1/8 && mouseY<(height*1/8+height*1/4)) { // Target Area 1
    println("Clicked Inside Target 1");
    circle1Move = false;
    circle1TargetX = mouseX;
    circle1TargetY = mouseY;
    circle1Target = true;
  }

  if (mouseX>width*5/8 && mouseX<(width*5/8+width*1/4) && mouseY>height*1/8 && mouseY<(height*1/8+height*1/4)) { // Target Area 2
    println("Clicked Inside Target 2");
    circle2Move = false;
    circle2TargetX = mouseX;
    circle2TargetY = mouseY;
    circle2Target = true;
  }
}
