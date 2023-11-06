//Global Variables
PImage rectQuit;
int appWidth, appHeight;
float xbutton1, ybutton1, buttonSide;
float xbutton2, ybutton2;
float xbutton3, ybutton3;
float xbutton4, ybutton4;
float xleftEyePupil, yleftEyePupil, leftEyePupilDimater;
float xrightEyePupil, yrightEyePupil, rightEyePupilDimater;
float xleftEye, yleftEye, xrightEye, yrightEye, eyeDimater;
float xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3;
float xmouth1, ymouth1, xmouth2, ymouth2, widthmouth, resetmouth;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float faceX, faceY, faceDiameter;
float xMeasale, yMeasale, MeasaleDiameter;
color resetcolor=#FFFFFF;
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
  //xleftEyePupil = xleftEye;
  //yleftEyePupil = yleftEye;
  //leftEyePupilDimater = smallerDimension*1/20;
  //xrightEyePupil = xrightEye;
  //yrightEyePupil = yrightEye;
  //rightEyePupilDimater = smallerDimension*1/20;;
  xleftEye = xRectBackground+(smallerDimension*3/10);
  yleftEye = yRectBackground+(smallerDimension*1/4);
  xrightEye = xRectBackground+(smallerDimension*7/10);
  yrightEye = yRectBackground+(smallerDimension*1/4);
  eyeDimater = smallerDimension*1/10;
  xTriangle1 = faceX;
  yTriangle1 = yrightEye+60;
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
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  xbutton1 = xRectBackground;
  ybutton1 = yRectBackground;
  xbutton2 = xRectBackground+faceDiameter-buttonSide;
  ybutton2 = ybutton1;
  xbutton3 = xbutton2;
  ybutton3 = yRectBackground+faceDiameter-buttonSide;
  xbutton4 = xbutton1;
  ybutton4 = ybutton3;
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
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  rect(xbutton1, ybutton1, buttonSide, buttonSide);
  rect(xbutton2, ybutton2, buttonSide, buttonSide);
  rect(xbutton3, ybutton3, buttonSide, buttonSide);
  rect(xbutton4, ybutton4, buttonSide, buttonSide);
  //
} //End setup
//
void draw() {
  ellipse(xleftEye, yleftEye, eyeDimater, eyeDimater);
  ellipse(xrightEye, yrightEye, eyeDimater, eyeDimater);
  //ellipse(xleftEyePupil, yleftEyePupil, leftEyePupilDimater, leftEyePupilDimater);
  //ellipse(xrightEyePupil, yrightEyePupil, rightEyePupilDimater, rightEyePupilDimater);
  triangle(xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3);
  strokeWeight(widthmouth);
  line(xmouth1, ymouth1, xmouth2, ymouth2);
  strokeWeight(resetmouth);
  //
  color measalecolor = color(235, random(0, 80), random(0, 40));
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  fill(measalecolor);
  MeasaleDiameter = random(smallerDimension*1/50, smallerDimension*1/20);
  xMeasale = random(xRectBackground+(MeasaleDiameter/2), xRectBackground+widthRectBackground-(MeasaleDiameter/2));
  yMeasale = random(yRectBackground+(MeasaleDiameter/2), yRectBackground+heightRectBackground-(MeasaleDiameter/2));
  noStroke();
  ellipse(xMeasale, yMeasale, MeasaleDiameter, MeasaleDiameter);
  stroke(1);
  fill(resetcolor);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
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
