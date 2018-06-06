class Brazo extends Extremidad {
  float inicio;
  boolean bool=false;
  PVector vec=new PVector(0, 0);
  float roat;
  PImage sprite;
  PImage spriteT;
  PImage sprite2;
  color sel;
  float[] number = {-5, -25, 50, 40, -0.2,70}; 
  float[] grados={11*PI/6, 5*PI/4, 0.03};

  Brazo(float x, float y) {  
    super(x, y);
  }
  void display() {
    super.display();
    super.move();
  }
  void pos() {
    super.pos();
  }

  void pos(PVector v, float r, float start, PImage i_imagen, PImage i_imagen2, PImage i_imagen3, color col) {
    super.arreglo(number,grados,1);
    sel =col;
    sprite=i_imagen;
    spriteT=i_imagen2;   
    sprite2=i_imagen3;   
    inicio =start;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    super.pos( v, r, start, i_imagen, i_imagen2, i_imagen3, col);
  }
}
