class PInstrucciones
{
  color c;
  
  void pinstrucciones()
  {
    this.c=color(187,187,187);
    fill(this.c);
    noStroke();
    rect(0,0,200,600);
   
    this.c=color(57,57,57);
    fill(this.c);
    noStroke();
    rect(200,0,200,600);
    
    textSize(15);
    {
      text("USA EL RATON",93,272);
      text("CLIK PARA", 123,302);
    }
    
    this.c=color(187,187,187);
    fill(this.c);
    noStroke();
    
    textSize(15);
    {
      text("PARA MOVERTE",201,272);
      text("CONTINUAR",201,302);
    }
    CambiaPantalla();
  }
  void CambiaPantalla()
  {
   if((mousePressed) && (mouseButton == LEFT))
   {
     pantalla=3;
     mousePressed = false;
   }
   else
   {
     mousePressed = false;
   }
  }
}
