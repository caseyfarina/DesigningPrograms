/*
PLEASE READ INFO TAB
 */

/////////////////////////// GLOBALS ////////////////////////////



import geomerative.*;

RFont myFont;
RPoint[] myPoints;
RGroup myGroup;
String myText = "CLASS";

FontAgent[] myFontAgents;


/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(850, 300);
  background(255); 
  smooth();

  RG.init(this);
  myFont = new RFont("FreeSans.ttf", 200, RFont.CENTER);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  RCommand.setSegmentLength(11);
  myGroup = myFont.toGroup(myText);
  myPoints = myGroup.getPoints();

  //  Initialisation des objets
  myFontAgents = new FontAgent[myPoints.length]; 

  for (int i=0; i<myPoints.length; i++) {
    myFontAgents[i] = new FontAgent(myPoints[i].x, myPoints[i].y);
  }
}


/////////////////////////// DRAW ////////////////////////////

void draw() {
  background(0);
  translate(width/2, 200);
  
  for (int i=0; i<myPoints.length; i++) {
   
    myFontAgents[i].render();
  }
}

