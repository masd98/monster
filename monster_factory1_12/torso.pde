
class Torso extends Extremidad {
  PVector vec=new PVector(0, 0);
  float roat=0;
  int y=0;
  boolean unavez=true;
  PImage sprite;
  PImage spriteT;
  color sel;

  float[] number = { 0, 0, 0, 0, 0, 200}; 
  float[] grados={0, 0, 0};


  Torso(float x, float y) {  
    super(x, y);
  }

  void display() {
    super.display();
    super.move();
  }
  void pos() {
    super.pos();
  }

  void pos(PVector v, float r, PImage i_imagen, PImage i_imagen2, color col) {
    super.arreglo(number, grados, 0);
    sel =col;
    sprite=i_imagen;
    spriteT=i_imagen2;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    super.pos( v, r, 0, i_imagen, i_imagen2, i_imagen2, col);
  }
}
