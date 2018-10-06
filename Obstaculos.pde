class Suelo
{
  float x;
  float y;
  float ancho;
  float alto;
  Body body;
  
  Suelo(float x_, float y_, float ancho_, float alto_)
  {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    
    PolygonShape Ob = new PolygonShape();
    float box2dAncho = box2d.scalarPixelsToWorld(ancho/2);
    float box2dAlto = box2d.scalarPixelsToWorld(alto/2);
    Ob.setAsBox(box2dAncho, box2dAlto);
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);
    
    body.createFixture(Ob,1);
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
    rect(x, y, ancho, alto);
  }
}
