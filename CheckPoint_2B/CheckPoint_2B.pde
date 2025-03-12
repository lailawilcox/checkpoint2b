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

//images
PImage watermelon;
PImage orange;
PImage banana;
PImage lime;
PImage blueberries;
PImage grapes;

//variables
boolean mouseReleased;
boolean wasPressed;

//modes
boolean on;


void setup() {
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  size(800, 600);
  background(white);

  //images
  watermelon = loadImage("watermelon.png");
  orange = loadImage("orange.png");
  banana = loadImage("banana.png");
  lime = loadImage("lime.png");
  blueberries = loadImage("blueberries.png");
  grapes = loadImage("grapes.png");
}

void draw() {
  click();

  if (on) {
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
  } else {
    Button watermelonButton = new Button(watermelon, 200, 75, 345, 75, lred, dred);
    Button orangeFButton = new Button(orange, 590, 155, 325, 240, lorange, dorange);
    Button bananaButton = new Button(banana, 200, 205, 345, 140, lyellow, dyellow);
    Button limeButton = new Button(lime, 555, 365, 400, 130, lgreen, dgreen);
    Button blueberriesButton = new Button(blueberries, 555, 510, 400, 100, lblue, dblue);
    Button grapesButton = new Button(grapes, 163, 430, 270, 260, lpurple, dpurple);

    watermelonButton.show();
    orangeFButton.show();
    bananaButton.show();
    limeButton.show();
    blueberriesButton.show();
    grapesButton.show();

    if (watermelonButton.clicked) {
      background(watermelonButton.highlight);
    }
    if (orangeFButton.clicked) {
      background(orangeFButton.highlight);
    }
    if (bananaButton.clicked) {
      background(bananaButton.highlight);
    }
    if (limeButton.clicked) {
      background(limeButton.highlight);
    }
    if (blueberriesButton.clicked) {
      background(blueberriesButton.highlight);
    }
    if (grapesButton.clicked) {
      background(grapesButton.highlight);
    }
  }
}
