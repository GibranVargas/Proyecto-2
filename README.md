/*
  Profe mi juego es muy diferente a mi propuesta que le entregué, lo intenté pero no pude, en si mi programa lo que hace es que cada vez que da un click en la pantalla
  se crea una partícula, esta interacciona como obstáculo para la esfera que rebota, la esfera se mueve hacia la dirección en la que se encuentra el raton al momento
  de oprimir el click izquierdo.
  
  intenté hacer lo de la colision, de hecho hasta el final de este codigo está donde lo hice pero no me funcionaba, no se en qué esté mal, y me gustaría que me explicara el 
  qué tengo mal ya que si me gustaría terminar este juego, el código está comentado porque no lo uso.
  
  Al final para terminarf la simulación solo le da click en la parte de abajo donde dice SALIR, y te muestra los puntos creados.
*/


import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

PInicio pinicio;
PInstrucciones pinstrucciones;
PJuego pjuego;
PFin pfin;
ArrayList <Enemigo> enemigo;
ArrayList <Suelo> suelo;
Mecanicas mecanicas;
int pantalla=1;
float posCx;
int puntos;

void setup()
{
  size(400,600);
  puntos=0;
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.listenForCollisions();
  
  suelo = new ArrayList<Suelo>();
  enemigo = new ArrayList<Enemigo>();
  pinicio = new PInicio();
  pinstrucciones = new PInstrucciones();
  pfin = new PFin();
  mecanicas = new Mecanicas();
  
  pjuego = new PJuego(120,300,12.5);
  
  suelo.add(new Suelo(195,100,10,100));
  suelo.add(new Suelo(205,100,10,100));
  suelo.add(new Suelo(195,500,10,100));
  suelo.add(new Suelo(205,500,10,100));
  suelo.add(new Suelo(195,300,10,200));
  suelo.add(new Suelo(205,300,10,200));
  
  suelo.add(new Suelo(100,45,200,10));
  suelo.add(new Suelo(300,45,200,10));
  suelo.add(new Suelo(100,545,200,10));
  suelo.add(new Suelo(300,545,200,10));
  suelo.add(new Suelo(5,295,10,510));
  suelo.add(new Suelo(395,295,10,510));
  
  
}


void draw()
{
  box2d.step();
  
  mecanicas.pantalla();
  mecanicas.Gravedad();
  
  println(puntos);
  println(pantalla);
}
/*void beginContact(Contact cp) 
{
  
  // Ambas texturas
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  
  // Ambos cuerpos
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();
 
  // Objetos referenciados al cuerpo
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();

  // Paso de pantalla
   if (o1.getClass() == Enemigo.class 
   && o2.getClass() == PJuego.class) 
   {
     pjuego.cambio();
   }
}*/
