String pantalla; 
int tiempo;
int velX;
int x;
float botonX, botonY, botonT;
PImage boat1;
PImage boat2;
PImage boat3;
PImage boat4;
color bg;

void setup() {
size(640, 480);
textSize(30);
textAlign(CENTER,CENTER);
  
pantalla = "Menu";    
tiempo = 0;
velX = 1;
x= width;
  
botonX = width/2;      
botonY = height/4*3;
botonT = 100;
  
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
text("Menu", x, height/2);
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
    
if(dist(mouseX,mouseY,botonX,botonY) < botonT/2){      
fill(127);
}else{
fill(255);       
}
fill(43,76,85); 
ellipse(botonX,botonY, botonT,botonT);      
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
text("Pantalla 3\nReiniciar", x, height/2);
    
if( x >= width){
velX= -7;
}else if( x <= 0) {
velX= 7;
}
fill(31,61,51);  
ellipse(botonX,botonY, botonT,botonT); 
}else{
boat4 = loadImage("boat4.jpg");
image(boat4,0,0,640,480); 
fill(127);   
}
println(frameRate);
}

void mousePressed(){                              
if(pantalla.equals("Menu")){                        
if(dist(mouseX,mouseY,botonX,botonY) < botonT/2){          
pantalla = "p1";                                   
tiempo = 0;                                        
}
}
if(pantalla.equals("p2")){                       
if(dist(mouseX,mouseY,botonX,botonY) < botonT/2){          
pantalla = "p3";                                   
tiempo = 0;                                        
}
}
if(pantalla.equals("p3")){                        
if(dist(mouseX,mouseY,botonX,botonY) < botonT/2){          
pantalla = "Menu";                                   
tiempo = 0;                                        
}
}
}
