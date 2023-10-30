//Global Variables
PImage rectQuit;
int appWidth, appHeight;
float xRectButton1, yRectButton1, widthRectButton1, heightRectButton1;
float xRectButton2, yRectButton2, widthRectButton2, heightRectButton2;
float xRectButton3, yRectButton3, widthRectButton3, heightRectButton3;
float xRectButton4, yRectButton4, widthRectButton4, heightRectButton4;
float xleftEye, yleftEye, xrightEye, yrightEye, eyeDimater;
float xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3;
float xmouth1, ymouth1, xmouth2, ymouth2, widthmouth, resetmouth;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float faceX, faceY, faceDiameter;
//
void setup() {
  size(1200, 800);
  //
  appWidth = width;
  appHeight = height;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  //
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  xRectBackground = faceX - faceDiameter*1/2;
  yRectBackground = faceY - faceDiameter*1/2;
  widthRectBackground = faceDiameter;
  heightRectBackground = faceDiameter;
  println(faceDiameter);
  //
  xleftEye = xRectBackground+(smallerDimension*3/10);
  yleftEye = yRectBackground+(smallerDimension*1/4);
  xrightEye = xRectBackground+(smallerDimension*7/10);
  yrightEye = yRectBackground+(smallerDimension*1/4);
  eyeDimater = smallerDimension*1/10;
  xTriangle1 = faceX;
  yTriangle1 = yrightEye;
  xTriangle2 = xleftEye+80;
  yTriangle2 = faceY;
  xTriangle3 = xrightEye-80;
  yTriangle3 = faceY;
  xmouth1 = xTriangle2;
  ymouth1 = yRectBackground+smallerDimension*3/4;
  xmouth2 = xTriangle3;
  ymouth2 = ymouth1;
  widthmouth = smallerDimension*1/20;
  resetmouth = smallerDimension/smallerDimension;
  //
  //
  String open = "/";
  String imagesPath = open;
  String Imagefolder = "Images for the Celebration Card2";
  String exitImage = "exet.png";
  //
  xRectQuit = appWidth*19/20-28;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/13;
  heightRectQuit = appHeight*1/12;
  rectQuit = loadImage(imagesPath + Imagefolder + open + exitImage);
  //
} //End setup
//
void draw() {
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(xleftEye, yleftEye, eyeDimater, eyeDimater);
  ellipse(xrightEye, yrightEye, eyeDimater, eyeDimater);
  triangle(xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3);
  strokeWeight(widthmouth);
  line(xmouth1, ymouth1, xmouth2, ymouth2);
  strokeWeight(resetmouth);
  image(rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
