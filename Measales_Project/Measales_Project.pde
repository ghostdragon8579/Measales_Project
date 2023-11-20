//Global Variables
String Start="Start", Stop="Stop";
PImage rectQuit;
PFont IntroductionFont;
PFont InitialFont;
color black=#000000;
color skincolor=#FFD689;
color skincolor2=#FFDD9D;
color navy=#020BA7;
color verdant=#00F512;
color Pine=#007416;
color Orange=#FF9829;
color crimson=#B90202;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
float xbutton1, ybutton1, buttonSide;
float xbutton2, ybutton2;
float xbutton3, ybutton3;
float xbutton4, ybutton4;
float xleftEye, yleftEye, eyeDimater;
float xrightEye, yrightEye; 
float xleftEyeIris, yleftEyeIris, IrisDimater;
float xrightEyeIris, yrightEyeIris;
float xleftEyePupil, yleftEyePupil, PupilDimater;
float xrightEyePupil, yrightEyePupil;
float xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3, strokeTriangle;
float xmouth1, ymouth1, xmouth2, ymouth2, widthmouth, resetmouth;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float faceX, faceY, faceDiameter;
float xMeasale, yMeasale, MeasaleDiameter;
Boolean measlesON=false;
Boolean MeasalesScreens=false;
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
  xleftEye = xRectBackground+(smallerDimension*3/10);
  yleftEye = yRectBackground+(smallerDimension*1/4);
  xrightEye = xRectBackground+(smallerDimension*7/10);
  yrightEye = yRectBackground+(smallerDimension*1/4);
  eyeDimater = smallerDimension*1/10;
  xleftEyeIris = xleftEye;
  yleftEyeIris = yleftEye;
  xrightEyeIris = xrightEye;
  yrightEyeIris = yrightEye;
  IrisDimater = eyeDimater/2;
  xleftEyePupil = xleftEye;
  yleftEyePupil = yleftEye;
  xrightEyePupil = xrightEye; 
  yrightEyePupil = yrightEye;
  PupilDimater = IrisDimater/2;
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
  strokeTriangle=10;
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
  rectQuit = loadImage(imagesPath + Imagefolder + open + exitImage);
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  fill(skincolor);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  fill(resetDefaultInk);
  rect(xbutton1, ybutton1, buttonSide, buttonSide);
  rect(xbutton2, ybutton2, buttonSide, buttonSide);
  rect(xbutton3, ybutton3, buttonSide, buttonSide);
  rect(xbutton4, ybutton4, buttonSide, buttonSide);
  //
  IntroductionFont = createFont("Comic Sans MS", 55);
  InitialFont = createFont("Papyrus", 55);
  //
} //End setup
//
void draw() {
  //
  if (MeasalesScreens==true) MeasalesScreen ();
  //
} //End draw
//
void keyPressed() {
  //
  if (key==' ') measlesON=true; //Start
  if (key==BACKSPACE) measlesON=false; //Stop
  if (key==ESC) exit();
  //
} //End keyPressed
//
void mousePressed() {
  //
  MeasalesScreens=true;
  //
  if (mouseX>xbutton1 && mouseX<xbutton1+buttonSide && mouseY>ybutton1 && mouseY<ybutton1+buttonSide) measlesON=true;
  if (mouseX>xbutton3 && mouseX<xbutton3+buttonSide && mouseY>ybutton3 && mouseY<ybutton3+buttonSide) measlesON=false;
  if (mouseX>xbutton2 && mouseX<xbutton2+buttonSide && mouseY>ybutton2 && mouseY<ybutton2+buttonSide) exit();
  //
} //End mousePressed
//
//End MAIN Program
