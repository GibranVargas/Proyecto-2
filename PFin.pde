class PFin
{
  void perder()
  {
    noStroke();
    fill(0,0,0,90);
    rectMode(CORNER);
    rect(100,100,200,400);
    
    textSize(18);
    fill(187,187,187);
    text("PUNTOS",120,240);
    text("CREADOS",110,260);
    
    textSize(14);
    text("CLICK ",150,350);
    text("SAL",170,370);
    
    textSize(50);
    fill(57,57,57);
    text(puntos,210,260);
    
    textSize(14);
    text("PARA",200,350);
    text("IR",195,370);
    
    Terminar();
  }
  void Terminar()
  {
   if((mousePressed) && (mouseButton == LEFT))
   {
     exit();
   }
  }
}
