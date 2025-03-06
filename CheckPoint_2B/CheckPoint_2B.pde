//colour pallette
color white = #ffffff;
color black = #000000;

color dred = #F94144;
color dorange = #F8961E;
color dyellow = #F9C74F;
color dgreen = #90BE6D;
color dblue = #4AAAD3;
color dpurple = #B082AD;

color lred = #FB888A;
color lorange = #FAB561;
color lyellow = #FBD989;
color lgreen = #B4D39C;
color lblue = #7CC1DF;
color lpurple = #C8A7C5;

//variables
boolean mouseReleased;
boolean wasPressed;


void setup() {
  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  size(800, 600);
  background(white);
}

void draw() {
  click();

  Button redButton = new Button("Red", 200, 75, 345, 75, lred, dred);
  Button orangeButton = new Button("Orange", 590, 155, 325, 240, lorange, dorange);
  Button yellowButton = new Button("Yellow", 200, 205, 345, 140, lyellow, dyellow);
  Button greenButton = new Button("Green", 555, 365, 400, 130, lgreen, dgreen);
  Button blueButton = new Button("Blue", 555, 510, 400, 100, lblue, dblue);
  Button purpleButton = new Button("Purple", 163, 430, 270, 260, lpurple, dpurple);

  redButton.show();
  orangeButton.show();
  yellowButton.show();
  greenButton.show();
  blueButton.show();
  purpleButton.show();

  if (redButton.clicked) {
    background(redButton.highlight);
  }
  if (orangeButton.clicked) {
    background(orangeButton.highlight);
  }
  if (yellowButton.clicked) {
    background(yellowButton.highlight);
  }
  if (greenButton.clicked) {
    background(greenButton.highlight);
  }
  if (blueButton.clicked) {
    background(blueButton.highlight);
  }
  if (purpleButton.clicked) {
    background(purpleButton.highlight);
  }
}
