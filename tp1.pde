//1//
String screen; 

int time;
int velX;
int posX;

PFont myfont;

PImage boat;
PImage boat1;
PImage boat2;
PImage boat3;

PImage button;

color bg;

//2//
void setup() {
  size(640, 480);

textAlign(CENTER,CENTER);
  
screen = "Menú";  

time = 0;

velX = 1;

posX= width; 
  
myfont=loadFont("myfont.vlw");
textFont(myfont,40);

frameRate(60);    

}

//3//
void draw() {
  
background(bg);
  
posX = posX + velX;

if (screen.equals("Menú")) {
boat = loadImage("boat.jpg");
image(boat,0,0,640,480); 
fill(255);
text("Menú.\nClick para iniciar.", posX, height/2);
text("Tiempo: "+time, 100,50);   
     
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}
    
time++;
if(time >= frameRate*15){      
screen = "p1";                
time = 0;                      
}
    
button = loadImage("button.png");
image(button, 270 , 320, 100, 100);

}else if (screen.equals("p1")) {
boat1 = loadImage("boat1.jpg");
image(boat1,0,0,640,480);  
fill(255);
text("Tiempo: "+time, 100,50);   
text("Cheetah Marine ha lanzado un modelo \n completamente nuevo de 10m x 3,7m \n para 2010, diseñado para una gran \n capacidad de carga requerida a menudo \n para embarcaciones con red. ", posX, height/2);   
    
if( posX >= width){
velX= -7;
}else if( posX <= 0){
velX= 7;
}
    
time++;
if(time >= frameRate*15){        
screen = "p2";                
time = 0;                      
}

}else if (screen.equals("p2")) {
boat2 = loadImage("boat2.jpg");
image(boat2,0,0,640,480);   
fill(255);
text("Tiempo: "+time, 100,50);   
text("Para lograr esto y seguir manteniendo \n un buen rendimiento a nivel económico,\n han diseñado un escalón de casco en el \n primer tercio de cada casco. \n El escalón induce aire en la superficie \n de rodadura del casco, lo que reduce \n el arrastramiento de este último.", posX , height/2);

if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}

time++;
if(time >= frameRate*15){        
screen = "p3";                
time = 0;                      
}

}else if (screen.equals("p3")) {
boat3 = loadImage("boat3.jpg");
image(boat3,0,0,640,480);   
fill(255);
text("Tiempo: "+time, 100,50);   
text("Click para reiniciar.", posX, height/2);
    
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}
fill(31,61,51);  

button = loadImage("button.png");
image(button, 270 , 320, 100, 100);

}else{
boat3 = loadImage("boat3.jpg");
image(boat3,0,0,640,480); 
fill(127);   
}

println(frameRate);

}

//4//
void mousePressed(){  
if (screen.equals("Menú")) {
int buttonX = 270;
int buttonY = 320;
if (mouseX >= buttonX && mouseX <= buttonX + 100 && mouseY >= buttonY && mouseY <= buttonY + 100) {
screen = "p1";
time = 0;
}

}else if (screen.equals("p2")) {
int buttonX = 270;
int buttonY = 320;
if (mouseX >= buttonX && mouseX <= buttonX + 100 && mouseY >= buttonY && mouseY <= buttonY + 100) {
screen = "p3";
time = 0;
}

} else if (screen.equals("p3")) {
int buttonX = 270;
int buttonY = 320;
if (mouseX >= buttonX && mouseX <= buttonX + 100 && mouseY >= buttonY && mouseY <= buttonY + 100) {
screen = "Menú";
time = 0;
}}

}
