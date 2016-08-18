PFont font;
float yMain = 0;
float ySub1 = 0;
float vMain = 50;
float vSub1 = 25;
float timeMain;
float timeSub1;
float timeSub2;
float delayMain = 100;
float delaySub1 = 25;
float delaySub2 = 500;
float fontSizeMain = 20;
float fontSizeSub1 = 5;
float fontSizeSub2 = 15;
String linesMain;
String linesSub1;
String[] linesSub2 = new String[29];
String bar;
float yLinesMain;
float yLinesSub1;
int lSub2 = 0;
int loading = 0;
color c = color(0,255,0);

void setup(){
  String file[] = loadStrings("linesMain.txt");
  yLinesMain = file.length * fontSizeMain;
  for(int i=0;i!=file.length;++i){
    linesMain=linesMain + '\n' + file[i];
  }
  String file1[] = loadStrings("linesSub1.txt");
  yLinesSub1 = file1.length * fontSizeSub1;
  for(int i=0;i!=file1.length;++i){
    linesSub1=linesSub1 + '\n' + file1[i];
  }
  String file2[] = loadStrings("linesSub2.txt");
  for(int i=0;i!=file2.length;++i){
    linesSub2[i] = file2[i];
  }
  
  fullScreen();
 
  font = createFont("Monospaced", fontSizeMain);
  textFont(font);
  timeMain = millis();
}

void draw(){
  write();
  
  move();
}

void keyPressed(){
  if(key == CODED && keyCode == UP){
    c = color(255,0,0);
  }
  else if(key == CODED && keyCode == DOWN){
    c = color(0,255,0);
  }
}