abstract class Extremidad {
  float inicial=500;
  float velocidad;

  float inicio;
  boolean bool=false;
  PVector vec=new PVector(0, 0);
  float roat;
  PImage sprite;
  PImage spriteT;
  PImage sprite2;
  color sel;
  float[] number;
  float[]grados;

  int caso;



  Extremidad(float x, float y) {
    println(velocidad);
    inicial=x;
    velocidad =y;
  }

  void display() {
    if (inicial<1500) {
      inicial=inicial+velocidad;
    }
    if (inicial>=1500) {
      inicial=0;
    }
  }

  void arreglo(float [] arr, float[] arr2, int tipo) {
    caso=tipo;
    number=arr;
    grados=arr2;
  }

  void pos(PVector v, float r, float start, PImage i_imagen, PImage i_imagen2, 
    PImage i_imagen3, color col) {

    sel =col;
    sprite=i_imagen;
    spriteT=i_imagen2;   
    sprite2=i_imagen3;   
    inicio =start;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;

    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    pushStyle();
    stroke(255, 0, 0);
    if (caso==1) {
      rotate(-inicio);   
      //line(0, 0, 40, 0);
      tint(sel); 
      image(sprite2, number[0], number[1], number[2], number[2]);
      noTint();

      translate( number[3], 0);
      rotate(inicio*number[4]);
    }
    imageMode(CENTER);
    image(sprite, 25, 0, number[5], number[5]);
    if(caso!=2){
    tint(sel); 
    image(spriteT, 25, 0, number[5], number[5]);
    }
    popStyle();  
    resetMatrix();
  }

  //default
  void pos() {
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    pushStyle();
    stroke(255, 0, 0);

    if (caso==1) {
      rotate(-inicio);
      //line(0, 0, 40, 0);
      tint(sel); 
      image(sprite2, number[0], number[1], number[2], number[2]);
      noTint();


      translate( number[3], 0);
      rotate(inicio*number[4]);
      //line(0, 0, 40, 0);
    }
    imageMode(CENTER);
    image(sprite, 25, 0, number[5], number[5]);
    if(caso!=2){
    tint(sel); 
    image(spriteT, 25, 0, number[5], number[5]);
    }
    popStyle();  
    resetMatrix();
  }

  //movimiento
  void move() {
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    pushStyle();
    stroke(255, 0, 0);

    if (caso==1) {
      rotate(-inicio);
      //line(0, 0, 40, 0);
      tint(sel); 
      image(sprite2, number[0], number[1], number[2], number[2]);
      noTint();

      if (inicio>=grados[0]) {
        bool=false;
        inicio=inicio-grados[2];
      } else if (inicio>grados[1]&&!bool) {
        inicio=inicio-grados[2];
      } else if (inicio>grados[1]&&bool) {
        inicio=inicio+grados[2];
      } else if (inicio<=grados[1]&&!bool) {
        inicio=inicio+grados[2];
        bool=true;
      } 
      translate( number[3], 0);
      rotate(inicio*number[4]);
      //line(0, 0, 40, 0);
    }
    imageMode(CENTER);
    image(sprite, 25, 0, number[5], number[5]);
    
    if(caso!=2){
    tint(sel); 
    image(spriteT, 25, 0, number[5], number[5]);
    }
    popStyle();  
    resetMatrix();
  }
}
