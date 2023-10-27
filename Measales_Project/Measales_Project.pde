//Global Variables
PImage rectQuit;
int appWidth, appHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float faceX, faceY, faceDiameter;
//
void setup() {
  size(1000, 800);
  //
  appWidth = width;
  appHeight = height;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  //
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  //
  String open = "/";
  String imagesPath = open;
  String Imagefolder = "Images for the Celebration Card2";
  String exitImage = "exet.png";
  //
  xRectQuit = appWidth*18/20+20;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/12;
  heightRectQuit = appHeight*1/12;
  rectQuit = loadImage(imagesPath + Imagefolder + open + exitImage);
  //
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
} //End setup
//
void draw() {
  //ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
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
