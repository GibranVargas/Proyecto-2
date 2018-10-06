class Enemigo
{
  float x;
  float y;
  float r;
  Body body;
  
  Enemigo(float x_, float y_, float r_)
  {
    x = x_;
    y = y_;
    r=r_;
    
    CircleShape CS = new CircleShape();
    CS.m_radius = box2d.scalarPixelsToWorld(r);
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);
    
    body.createFixture(CS,1);
    body.setUserData(this);
  }
  
  void display()
  {
    Vec2 posicion = box2d.getBodyPixelCoord(body);
    
    if(posicion.x < 200)
    {
     fill(57,57,57);
    }
    else
    {
      fill(187,187,187);
    }
    noStroke();
    rectMode(CENTER);
    ellipse(x, y, r*2, r*2);
    
    botones();
  }
  void killBody() 
  {
    box2d.destroyBody(body);
  }
  void botones()
  {
    
    if ((mousePressed) && 
      (mouseButton==LEFT) &&
      (mouseY>545) && 
      (mouseY<600) &&
      mouseX>200 && 
      mouseX<400)
      {
        //Boton salir
        pantalla=4;
      }
  }
}
