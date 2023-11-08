//Global Variables
String Start="Start", Stop="Stop";
PImage rectQuit;
PFont IntroductionFont;
PFont InitialFont;
color navy=#020BA7;
color verdant=#00F512;
color Pine=#007416;
color Orange=#FF9829;
color crimson=#B90202, resetDefaultInk=#FFFFFF;
color resetcolor=#FFFFFF;
int appWidth, appHeight;
int size;
float xbutton1, ybutton1, buttonSide;
float xbutton2, ybutton2;
float xbutton3, ybutton3;
float xbutton4, ybutton4;
float xleftEye, yleftEye, xrightEye, yrightEye, eyeDimater;
float xleftEyePupil, yleftEyePupil, PupilDimater;
float xrightEyePupil, yrightEyePupil;
float xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3;
float xmouth1, ymouth1, xmouth2, ymouth2, widthmouth, resetmouth;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float faceX, faceY, faceDiameter;
float xMeasale, yMeasale, MeasaleDiameter;
Boolean measlesON=false;
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
  //xleftEyePupil = ;
  //yleftEyePupil = ;
  //xrightEyePupil = ;
  //yrightEyePupil = ;
  //PupilDimater = eyeDimater/2;
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
  rectQuit = loadImage(imagesPath + Imagefolder + open + exitImage);
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
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
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xbutton1 && mouseX<xbutton1+buttonSide && mouseY>ybutton1 && mouseY<ybutton1+buttonSide) {
    hoverOverColor = Pine;
    fill(hoverOverColor);
    rect(xbutton1, ybutton1, buttonSide, buttonSide);
    fill(resetDefaultInk);
  } else if (mouseX>xbutton3 && mouseX<xbutton3+buttonSide && mouseY>ybutton3 && mouseY<ybutton3+buttonSide) {
    hoverOverColor = Orange;
    fill(hoverOverColor);
    rect(xbutton3, ybutton3, buttonSide, buttonSide);
    fill(resetDefaultInk);
  } else if (mouseX>xbutton4 && mouseX<xbutton4+buttonSide && mouseY>ybutton4 && mouseY<ybutton4+buttonSide) {
    hoverOverColor = navy;
    fill(hoverOverColor);
    rect(xbutton4, ybutton4, buttonSide, buttonSide);
    fill(resetDefaultInk);
  } else {
    rect(xbutton1, ybutton1, buttonSide, buttonSide);
    rect(xbutton3, ybutton3, buttonSide, buttonSide);
    rect(xbutton4, ybutton4, buttonSide, buttonSide);
    fill(resetDefaultInk);
  }
  //
  ellipse(xleftEye, yleftEye, eyeDimater, eyeDimater);
  ellipse(xrightEye, yrightEye, eyeDimater, eyeDimater);
  //ellipse(xleftEyePupil, yleftEyePupil, PupilDimater, PupilDimater);
  //ellipse(xrightEyePupil, yrightEyePupil, PupilDimater, PupilDimater);
  triangle(xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3);
  strokeWeight(widthmouth);
  line(xmouth1, ymouth1, xmouth2, ymouth2);
  strokeWeight(resetmouth);
  //
  color measalecolor = color(220, random(0, 90), random(0, 40));
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  fill(measalecolor);
  MeasaleDiameter = random(smallerDimension*1/50, smallerDimension*1/30);
  xMeasale = random(xRectBackground+(MeasaleDiameter/2), xRectBackground+widthRectBackground-(MeasaleDiameter/2));
  yMeasale = random(yRectBackground+(MeasaleDiameter/2), yRectBackground+heightRectBackground-(MeasaleDiameter/2));
  noStroke();
  if ( ((xMeasale-faceX)*(xMeasale-faceX))+((yMeasale-faceY)*(yMeasale-faceY))<sq( ((faceDiameter/2)-(MeasaleDiameter/2)) ) ) {
    if (measlesON==true) ellipse(xMeasale, yMeasale, MeasaleDiameter, MeasaleDiameter);
  }
  stroke(1);
  fill(resetcolor);
  //
  fill(verdant);
  textAlign(CENTER, CENTER);
  size = 40;
  textFont(IntroductionFont, 40);
  text(Start, xbutton1, ybutton1, buttonSide, buttonSide);
  fill(resetDefaultInk);
  //
  fill(crimson);
  textAlign(CENTER, CENTER);
  size = 40;
  textFont(InitialFont, 40);
  text(Stop, xbutton3, ybutton3, buttonSide, buttonSide);
  fill(resetDefaultInk);
  //
  image(rectQuit, xbutton2, ybutton2, buttonSide, buttonSide);
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
  if (mouseX>xbutton1 && mouseX<xbutton1+buttonSide && mouseY>ybutton1 && mouseY<ybutton1+buttonSide) measlesON=true;
  if (mouseX>xbutton3 && mouseX<xbutton3+buttonSide && mouseY>ybutton3 && mouseY<ybutton3+buttonSide) measlesON=false;
  if (mouseX>xbutton2 && mouseX<xbutton2+buttonSide && mouseY>ybutton2 && mouseY<ybutton2+buttonSide) exit();
  //
} //End mousePressed
//
//End MAIN Program
