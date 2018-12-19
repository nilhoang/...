float sizeGeometry, monitorGeometry;
void screenSizeChecker()  {
  println("Canvas Dimensions:\twidth", "\t", width, "\theight", "\t", height);
  println("Monitor Dimensions:\twidth", "\t", displayWidth, "\theight", "\t", displayHeight);
  if (width > displayWidth || height > displayHeight) {
     println("Canvas will not fit in the monitor. \nChange the size() dimensions.");
    println("Program is closing automatically.\n");
    exit();
  } else {
    println("Canvas will fit inside the monitor geometry.\n");
  }
  sizeGeometry = float(width)/float(height);
  if (sizeGeometry > 1) {
    println("Canvas geometry is \tLandscape.");
  } else if (sizeGeometry < 1) {
    println("Canvas geometry is \tPortrait.");
  } else if (sizeGeometry == 1) {
    println("Canvas is \tSquare.");
  } else { //empty ELSE
  }
  monitorGeometry = float(displayWidth)/float(displayHeight);
  if (monitorGeometry > 1) {
    println("Monitor Geometry is \tLandscape.");
  } else if (monitorGeometry < 1) {
    println("Monitor Geometry is \tPortrait.");
  } else if (monitorGeometry == 1) {
    println("Monitor Geometry is \tSquare.");
  } else { //empty ELSE
  }
  if (sizeGeometry == 1.0 && monitorGeometry == 1.0) {//Landscape, Portrait, Square
    println("Canvas and Monitor Geometry matches.\n");
  } else if (sizeGeometry > 1 && monitorGeometry > 1) {
    println("Canvas and Monitor Geometry matches.\n");
  } else if (sizeGeometry < 1 && monitorGeometry < 1) {
    println("Canvas and Monitor Geometry matches.\n");
  } else {
    println("Seems an issue with Landscape, Portrait, or Square Geometry.");
    println("Please change so both match.");
    println("Program is closing automatically.\n");
    exit();
  }
}
