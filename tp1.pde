String pantalla; 
int tiempo;
int velX;
int x;
PImage boat1;
PImage boat2;
PImage boat3;
PImage boat4;
PImage boton;
color bg;

void setup() {
size(640, 480);
textSize(30);
textAlign(CENTER,CENTER);
  
pantalla = "Menu";    
tiempo = 0;
velX = 1;
x= width; 
  
boat1 = loadImage("boat1.jpg");
image(boat1,0,0,640,480);
  
frameRate(60);    

}

void draw() {
  
background(bg);
  
x = x + velX;

if (pantalla.equals("Menu")) {
boat1 = loadImage("boat1.jpg");
image(boat1,0,0,640,480); 
fill(#A00090);
text("Menu\nClick para iniciar", x, height/2);
text("Tiempo: "+tiempo, 100,50);   
     
if( x >= width){
velX= -7;
}else if( x <= 0) {
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*5){      
pantalla = "p1";                
tiempo = 0;                      
}
    
boton = loadImage("boton.png");
image(boton, 270 , 320, 100, 100);

}else if (pantalla.equals("p1")) {
boat2 = loadImage("boat2.jpg");
image(boat2,0,0,640,480);  
fill(#A00090);
text("Tiempo: "+tiempo, 100,50);   
text("Pantalla 1", x, height/2);   
    
if( x >= width){
velX= -7;
}else if( x <= 0){
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*2){        
pantalla = "p2";                
tiempo = 0;                      
}

}else if (pantalla.equals("p2")) {
boat3 = loadImage("boat3.jpg");
image(boat3,0,0,640,480);   
fill(#A00090);
text("Tiempo: "+tiempo, 100,50);   
text("Pantalla 2", x , height/2);

if( x >= width){
velX= -7;
}else if( x <= 0) {
velX= 7;
}

tiempo++;
if(tiempo >= frameRate*2){        
pantalla = "p3";                
tiempo = 0;                      
}

}else if (pantalla.equals("p3")) {
boat4 = loadImage("boat4.jpg");
image(boat4,0,0,640,480);   
fill(#A00090);
text("Tiempo: "+tiempo, 100,50);   
text("Pantalla 3\nClick para reiniciar", x, height/2);
    
if( x >= width){
velX= -7;
}else if( x <= 0) {
velX= 7;
}
fill(31,61,51);  

boton = loadImage("boton.png");
image(boton, 270 , 320, 100, 100);

}else{
boat4 = loadImage("boat4.jpg");
image(boat4,0,0,640,480); 
fill(127);   
}
println(frameRate);
}

void mousePressed(){  
  
if (pantalla.equals("Menu")) {
int botonX = 270;
int botonY = 320;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p1";
tiempo = 0;
}

}else if (pantalla.equals("p2")) {
int botonX = 270;
int botonY = 320;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p3";
tiempo = 0;
}

} else if (pantalla.equals("p3")) {
int botonX = 270;
int botonY = 320;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "Menu";
tiempo = 0;
}
}
}
