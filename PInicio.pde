class PInicio 
{
  color c;
  
  void pinicio()
  {
    rectMode(CORNER);
    this.c=color(187,187,187);
    fill(this.c);
    noStroke();
    rect(0,0,200,600);
    
    this.c=color(57,57,57);
    fill(this.c);
    noStroke();
    rect(200,0,200,600);
    
    this.c=color(187,187,187);
    fill(this.c);
    noStroke();
    rect(200,100,5,10);
    rect(205,105,5,40);
    rect(200,140,5,10);
    rect(215,100,5,50);
    rect(215,100,15,10);
    rect(215,120,10,10);
    rect(215,140,15,10);
    rect(235,100,5,50);
    rect(240,100,15,10);
    rect(250,110,5,10);
    rect(240,120,10,10);
    rect(250,130,5,20);
    
    rect(200,160,5,10);
    rect(205,165,5,40);
    rect(200,200,5,10);
    rect(215,160,5,50);
    rect(215,160,15,10);
    rect(215,180,10,10);
    rect(215,200,15,10);
    
    rect(200,350,10,10);
    rect(200,390,10,10);
    rect(200,370,10,10);
    rect(205,380,5,10);
    rect(230,350,5,50);
    rect(220,350,10,10);
    rect(215,350,5,50);
    rect(220,370,10,10);
    rect(240,350,5,50);
    rect(245,350,15,10);
    rect(255,360,5,10);
    rect(245,370,10,10);
    rect(255,380,5,20);
    
    rect(200,460,10,10);
    rect(215,420,5,50);
    rect(225,420,5,50);
    rect(230,420,15,10);
    rect(240,430,5,10);
    rect(230,440,10,10);
    rect(240,450,5,20);
    
    this.c=color(57,57,57);
    fill(this.c);
    noStroke();
    rect(195,100,5,10);
    rect(195,140,5,10);
    rect(190,100,5,50);
    rect(180,100,5,50);
    rect(170,100,10,10);
    rect(165,100,5,50);
    rect(155,100,5,50);
    rect(145,140,10,10);
    rect(140,100,5,50);
    
    rect(195,160,5,10);
    rect(195,200,5,10);
    rect(190,160,5,50);
    rect(180,160,5,50);
    rect(155,160,20,10);
    rect(155,170,5,20);
    rect(160,180,10,10);
    rect(170,180,5,30);
    rect(155,200,15,10);
    
    rect(190,350,10,10);
    rect(190,360,5,30);
    rect(190,390,10,10);
    rect(180,350,5,50);
    rect(170,390,10,10);
    rect(165,350,5,50);
    rect(155,350,5,50);
    rect(140,350,15,10);
    rect(140,390,15,10);
    rect(140,380,5,10);
    
    rect(190,420,5,50);
    rect(195,460,5,10);
    rect(165,420,5,50);
    rect(170,420,10,10);
    rect(180,420,5,50);
    rect(170,440,10,10);
    rect(140,420,20,10);
    rect(140,430,5,20);
    rect(145,440,10,10);
    rect(155,440,5,30);
    rect(140,460,15,10);
    
    CambioPantalla();
  }
  
  void CambioPantalla()
  {
    if((mouseX>135) && 
    (mouseX<265) && 
    (mouseY>345) && 
    (mouseY<405) && 
    (mousePressed) && 
    (mouseButton==LEFT))
    {
      pantalla=2;
    }
    if((mouseX>135) && 
    (mouseX<250) && 
    (mouseY>415) && 
    (mouseY<475) && 
    (mousePressed) && 
    (mouseButton==LEFT))
    {
      exit();
    }
    else
    {
      mousePressed = false;
    }
  }
}
