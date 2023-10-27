//Global Variables
PImage rectQuit;
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float faceX, faceY, faceDiameter, faceDiameter;
//
void setup() {
  size(1000, 800);
  //
  appWidth = width;
  appHeight = height;
  //
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = ;
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
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
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
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
} //End mousePressed
//
//End MAIN Program
