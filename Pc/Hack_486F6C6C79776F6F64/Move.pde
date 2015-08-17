void move(){
  //Main
  if(millis() - timeMain >= delayMain){  
    yMain+= vMain;
     vMain = random(4)*50;
    delayMain = random(250);
    timeMain = millis();
  }
  if(yMain >= yLinesMain){
     yMain=0;
  }
  
  //Sub1
  if(millis() - timeSub1 >= delaySub1){  
    ySub1+= vSub1;
    timeSub1 = millis();
  }
  if(ySub1 >= yLinesSub1){
    vSub1=-vSub1;
  }
  else if(ySub1 <= -height/2){
    vSub1=-vSub1;
  }
  
  //Sub2
  if(millis() - timeSub2 >= delaySub2){
    ++loading;
    bar = "[";
    if(loading == 10){
      ++lSub2;
      loading = 0;
      if(lSub2 > 27){
        lSub2 = 0;
      }
      delaySub2 = random(50,400);
      timeSub2 = millis();
    }
  }
}