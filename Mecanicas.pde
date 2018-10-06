class Mecanicas
{
  void Gravedad()
  {
    float Px;
    if(posCx>200)
    {
      Px=-10;
    }
    else
    {
      Px=10;
    }
    
    box2d.setGravity(Px,0);
  }
  
  void pantalla()
  {
    switch(pantalla)
    {
      case 1:
        pinicio.pinicio();
        break;
        
      case 2:
        pinstrucciones.pinstrucciones();
        break;
       
       case 3:
         pjuego.pjuego();
         for(Suelo s: suelo)
         {
           s.display();
         }
         for(Enemigo e: enemigo)
         {
           e.display();
         }
         pjuego.display();
         if ((mousePressed) && 
         (mouseButton==LEFT) &&
         (mouseY>45) && 
         (mouseY<545)) 
         {
           pjuego.setposition(mouseX,mouseY);
         }
         Puntaje();
         Botones();
         mousePressed=false;
         
         break;
       case 4:
         pfin.perder();
         break;
    }
  }
  void Puntaje()
  {
    color c;
    c=color(187,187,187);
    fill(c);
    noStroke();
    textSize(22);
    text(puntos,215,25);
    c=color(57,57,57);
    fill(c);
    noStroke();
    text("PUNTOS:",100,25);
    
    if ((mousePressed) && 
    (mouseButton==LEFT) &&
    (mouseY>45) && 
    (mouseY<545)) 
    {
      enemigo.add(new Enemigo(random(20,380),random(55,535),7.5));
      puntos+=1;
    }
  }
  void Botones()
  {
    color c;
    textSize(25);
    noStroke();
    c=color(187,187,187);
    fill(c);
    text("S A L I R",250,585);
  }
}
