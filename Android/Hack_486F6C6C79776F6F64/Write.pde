void write(){
  background(0);
  stroke(255);
  fill(c);
  line(0,height/2,width,height/2);
  line(width/2,height/2,width/2,height);
  
  //Sub1
  textSize(fontSizeSub1);
  text(linesSub1,5,height/2+5-ySub1,width/2-10,height/2+ySub1);
  
  //Sub2
  noStroke();
  rect(width/2+1,height/2+1,width/2,height/2);
  fill(0);
  textSize(fontSizeSub2);
  text(linesSub2[lSub2],width/2+5,height/3*2,width/2-10,height);
  for(int i=0; i!=10; ++i){
    if(i<=loading){
      bar+='#';
    }
    else{
      bar+='.';
    }
  }
  bar+=']';
  text(bar,width/2+5,height/4*3,width/2-10,height);
  
  //Main
  noStroke();
  fill(0);
  rect(0,0,width,height/2);
  fill(c);
  textSize(fontSizeMain);
  text(linesMain,5,55- yMain,width,height/2+ yMain-55);
  
}