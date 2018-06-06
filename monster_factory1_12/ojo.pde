
class Ojos extends Extremidad {
  PVector vec=new PVector(0, 0);
  float roat=0;
  int y=0;
  boolean unavez=true;
  PImage sprite;
  PImage spriteT;
  color sel;
  
  float[] number = { 0, 0, 0, 0, 0, 30}; 
  float[] grados={0, 0, 0};

  Ojos(float x,float y) {  
    super(x,y);
  }
 void display() {
    super.display();
    super.move();
  }
  void pos() {
    super.pos();
  }

  void pos(PVector v, float r, PImage i_imagen) {
    super.arreglo(number, grados, 2);
    sel =col;
    sprite=i_imagen;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    super.pos( v, r, 0, i_imagen, i_imagen, i_imagen, col);
  }

}
