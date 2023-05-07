String pantalla; 
int tiempo;
int velX;
int posX;
PImage boat1;
PImage boat2;
PImage boat3;
PImage boat4;
PImage boton;
color fondo;

void setup() {
size(640, 480);
textSize(30);
textAlign(CENTER,CENTER);
  
pantalla = "Menú";    
tiempo = 0;
velX = 1;
posX= width; 
  
boat1 = loadImage("boat1.jpg");
image(boat1,0,0,640,480);
  
frameRate(60);    

}

void draw() {
  
background(fondo);
  
posX = posX + velX;

if (pantalla.equals("Menú")) {
boat1 = loadImage("boat1.jpg");
image(boat1,0,0,640,480); 
fill(255);
text("Menú.\nClick para iniciar.", posX, height/2);
text("Tiempo: "+tiempo, 100,50);   
     
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*10){      
pantalla = "p1";                
tiempo = 0;                      
}
    
boton = loadImage("boton.png");
image(boton, 270 , 320, 100, 100);

}else if (pantalla.equals("p1")) {
boat2 = loadImage("boat2.jpg");
image(boat2,0,0,640,480);  
fill(255);
text("Tiempo: "+tiempo, 100,50);   
text("Cheetah Marine ha lanzado un modelo \n completamente nuevo de 10m x 3,7m \n para 2010, diseñado para una gran \n capacidad de carga requerida a menudo \n para embarcaciones con red. ", posX, height/2);   
    
if( posX >= width){
velX= -7;
}else if( posX <= 0){
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p2";                
tiempo = 0;                      
}

}else if (pantalla.equals("p2")) {
boat3 = loadImage("boat3.jpg");
image(boat3,0,0,640,480);   
fill(255);
text("Tiempo: "+tiempo, 100,50);   
text("Para lograr esto y seguir manteniendo \n un buen rendimiento a nivel económico,\n han diseñado un escalón de casco en el \n primer tercio de cada casco. \n El escalón induce aire en la superficie \n de rodadura del casco, lo que reduce \n el arrastramiento de este último.", posX , height/2);

if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}

tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p3";                
tiempo = 0;                      
}

}else if (pantalla.equals("p3")) {
boat4 = loadImage("boat4.jpg");
image(boat4,0,0,640,480);   
fill(255);
text("Tiempo: "+tiempo, 100,50);   
text("Click para reiniciar.", posX, height/2);
    
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
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
  
if (pantalla.equals("Menú")) {
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
pantalla = "Menú";
tiempo = 0;
}
}
}
