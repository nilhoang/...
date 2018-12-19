color purple=#C408FF, yellow=#F6FF00, blue=#000AFF, green=#00FF0E, reset=#FFFFFF;

void origonalPieces() {
  circleDiameter = width*1/8; //copied from GUI_Design, might through error
  background(reset);
  fill(purple);
  ellipse(width*1/4, height*3/4, circleDiameter, circleDiameter); // Circle #1
  fill(yellow);
  ellipse(width*3/4, height*3/4, circleDiameter, circleDiameter);// Circle #2
  fill(blue);
  rect(width*1/8, height*1/8, circleDiameter*2, circleDiameter*2); // Target Area #1
  rect(width*5/8, height*1/8, circleDiameter*2, circleDiameter*2);// Target Area #2
  fill(reset);
  
  if (circle1Target == true) {
    fill(green);
    ellipse(circle1TargetX, circle1TargetY, circleDiameter, circleDiameter); // Circle #1
    fill(reset);
  }

  if (circle2Target == true) {
    fill(green);
    ellipse(circle2TargetX, circle2TargetY, circleDiameter, circleDiameter);// Circle #2
    fill(reset);
  }
}
