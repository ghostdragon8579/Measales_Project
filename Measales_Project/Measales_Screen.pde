void MeasalesScreen () {
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
}
