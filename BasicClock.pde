// Morgan Brooke-deBock
// Nov 16 2022
// Display a basic clock 

int KeyCount; //  Stores the number of key presses
int MouseCount; // Store the number of mouse clicks
int day; // day
int mon; // month
int yrs; // year
int hrs; // hour
int min; //minutes
int sec; // sec

PFont font;
int fontSize;

void setup() {
  size(960, 135);
  KeyCount = 0;
  UpdateTime();
  fontSize = 48;
  font = createFont("Courier", fontSize);
}

void draw() {
  background(0);
  UpdateTime();
  showDate();
  showTime();
  showMinuteLine();
}

void showMinuteLine() {
  stroke(255);
  strokeWeight(4);
  float lineLength = map(sec, 0, 60, 0, width);
  if (sec != 0) {
    line(0, height - 8, lineLength, height - 8);
  }
}

void UpdateTime() {
  day = day();
  mon = month();
  yrs = year();
  hrs = hour();
  min = minute();
  sec = second();
}

void keyPressed() {
  KeyCount++;
}

void mousePressed() {
  MouseCount++;
}

void showDate() {
  fill(255);
  textFont(font);
  textAlign(LEFT, TOP);
  String dateString = Integer.toString(yrs) + "/" + Integer.toString(mon) + "/" + Integer.toString(day);
  text(dateString, 10, 10);
}

void showTime() {
  fill(255);
  textFont(font);
  textAlign(LEFT, TOP);

  String timeString = Integer.toString(hrs) + ":" + Integer.toString(min) + ":" + Integer.toString(sec);
  text(timeString, 10, 55);
}
