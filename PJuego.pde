class PJuego
{
  float r;
  color c;
  Body b;
  
  void pjuego()
  {
    
    rectMode(CORNER);
    this.c=color(187,187,187);
    fill(this.c);
    noStroke();
    textSize(22);
    rect(0,0,200,600);
    this.c=color(57,57,57);
    fill(this.c);
    noStroke();
    rect(200,0,200,600);
    
    this.c=color(0,0,0,90);
    fill(this.c);
    noStroke();
    rect(0,0,400,50);
  }
  
   PJuego(float x_, float y_, float r_)
  {
    //Def Body
    r=r_;
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;        
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);
    //Crear el body
    b = box2d.createBody(bodydef);
    //Definir la forma
    CircleShape circleshape = new CircleShape();
    circleshape.m_radius = box2d.scalarPixelsToWorld(r);
    //Def Texture
    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;            
    fixturedef.friction = 0.3;         
    fixturedef.restitution = .9; 
    //Agregar todo en el Body
    b.createFixture(fixturedef);
    b.setLinearVelocity(new Vec2(.5,0));
    b.setUserData(this);
  }
  void display()
  {
    Vec2 posicion = box2d.getBodyPixelCoord(b);
    
    pushMatrix();
    translate(posicion.x, posicion.y);
    ellipseMode(CENTER);
    noStroke();
    posCx=posicion.x;
    if(posicion.x<200)
    {
      fill(57,57,57);
    }
    else
    {
      fill(187,187,187);
    }
    ellipse(0,0,r*2,r*2);
    popMatrix();
  }
  
  boolean contains(float x, float y) 
  {
    Vec2 worldPoint = box2d.coordPixelsToWorld(x, y);
    Fixture f = b.getFixtureList();
    boolean inside = f.testPoint(worldPoint);
    return inside;
  }
  
  void setAngularVelocity(float a) 
  {
    b.setAngularVelocity(a); 
  }
  void setVelocity(Vec2 v) 
  {
     b.setLinearVelocity(v);
  }
  
  void setposition(float x, float y)
  {
    Vec2 pos = b.getWorldCenter();
    Vec2 target = box2d.coordPixelsToWorld(x,y);
    Vec2 diff = new Vec2(target.x-pos.x,target.y-pos.y);
    diff.mulLocal(50);
    setVelocity(diff);
    setAngularVelocity(0);
  }
}
